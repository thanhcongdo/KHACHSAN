<%-- 
    Document   : LoaiPhong
    Created on : 10-May-2022, 09:24:39
    Author     : bigbo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>QUẢN LÝ KHÁCH SẠN - HOMESTAY</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>



        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Quản lý <b>Loại phòng</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>THÊM LOẠI PHÒNG</span></a>					
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID loại phòng</th>
                            <th>Mã khách sạn</th>
                            <th>Tên loại phòng</th>
                            <th>Mô tả</th>
                            <th>Hình ảnh</th>
                            <th>Giá phòng</th>
                            <th>Số lượng</th>
                            <th>Trạng thái</th>
                            <th>Ngừng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listLoaiP}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.IDLOAIPHONG}</td>
                                <td>${o.MAKHACHSAN}</td>
                                <td>${o.TENLOAIPHONG}</td>
                                <td>${o.MOTA}</td>
                                <td>
                                    <img src="${o.HINHANH}">
                                </td>
                                <td>
                                    <p><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${o.GIAPHONG}"/> VND</p>
                                </td>
                                <td>${o.SOLUONG}</td>
                                <td><input type="checkbox" <c:if test="${o.TRANGTHAI==true}">checked=checked</c:if> class="switch-input" disabled="disabled"></td>
                                <td><input type="checkbox" <c:if test="${o.NGUNG==true}">checked=checked</c:if> class="switch-input" disabled="disabled"></td>
                                    <td>
                                        <a href="loadLoaiPhongControl?IDLP=${o.IDLOAIPHONG}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Sửa">&#xE254;</i></a>
                                    <a href="DeleteLoaiPhongControl?IDLP=${o.IDLOAIPHONG}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Xóa">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6">
                <a href="/KHACHSAN/login"  class="btn btn-success" data-toggle="modal"><i class="material-icons">arrow_back</i> <span>Trang chủ</span></a>					
            </div>
        </div>

        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddLoaiPhongControl" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm loại phòng</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Tên loại phòng</label>
                                <input name="TENLOAIPHONG" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input name="MOTA" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <textarea name="HINHANH" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Giá</label>
                                <textarea name="GIAPHONG" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Số lượng</label>
                                <textarea name="SOLUONG" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Trạng thái</label>
                                <input name="TRANGTHAI" type="checkbox" value="true" checked="true" disabled="disabled">
                            </div>
                            <div class="form-group">
                                <label>Ngừng</label>
                                <input name="NGUNG" type="checkbox" value="false" disabled="disabled">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
 

        <script src="js/manager.js" type="text/javascript"></script>
        <script>

        </script>
    </body>
</html>