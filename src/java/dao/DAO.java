/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Khachsan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nguye
 */
public class DAO {
    Connection conn = null; //ket noi toi sql
    PreparedStatement ps = null; // nem cau lenh query tu netbean sang sql server
    ResultSet rs = null;
    
    public List<Khachsan> getAllKhachsan(){
        List<Khachsan> list = new ArrayList<>();
        String query = "select* from tb_Khachsan";
        
        try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();
                
                while(rs.next()){
                    list.add(new Khachsan(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getBoolean(7)));
                }
        } catch (Exception e) {
        }
        return list;
    }

    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Khachsan> list = dao.getAllKhachsan();
        
        for(Khachsan k : list){
            System.out.println(k);
        }
    }
}
