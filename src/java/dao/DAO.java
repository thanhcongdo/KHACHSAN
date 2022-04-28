/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Khachhang;
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

       public Account LoginAD(String email, String password){
           String query = "select * from tb_TAIKHOAN	\n" +
                            "where EMAIL = ?\n" +
                            "and PASSWORD = ?";
           try {
               conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();
                while (rs.next()){
                    return new Account(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getInt(7));
                }
           } catch (Exception e) {
           }
           return null;
       }
       
        public Khachhang LoginKH(String email, String password){
           String query = "select * from tb_KHACHHANG	\n" +
                            "where EMAIL = ? \n" +
                            "and PASSWORD = ?";
           try {
               conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();
                while (rs.next()){
                    return new Khachhang(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4), 
                            rs.getString(5));
                }
           } catch (Exception e) {
           }
           return null;
       }
           public Khachhang checkExist(String email ){
           String query = "select * from tb_KHACHHANG	\n" +
                            "where EMAIL = ?\n" ;
           try {
               conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, email);
                rs = ps.executeQuery();
                while (rs.next()){
                    return new Khachhang(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4), 
                            rs.getString(5));
                }
           } catch (Exception e) {
           }
           return null;
       }
           public void signup(String hoten, String dienthoai, String email, String password){
               String query  = " insert into tb_KHACHHANG\n"
                       + "values (?,?,?,?)";
               try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, hoten);
                ps.setString(2, dienthoai);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.executeUpdate();
               } catch (Exception e) {
               }
           }
                
       
        
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Khachsan> list = dao.getAllKhachsan();
        
        for(Khachsan k : list){
            System.out.println(k);
        }
    }
    
}
