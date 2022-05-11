<%-- 
    Document   : EditLoaiPhong
    Created on : 10-May-2022, 09:25:28
    Author     : bigbo
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
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
                            <h2>Edit <b>Loại Phòng</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditLoaiPhongControl" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Thông tin</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>ID loại phòng</label>
                                    <input value="${detailLP.IDLOAIPHONG}" name="IDLP" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Mã khách sạn</label>
                                    <input value="${detailLP.MAKHACHSAN}" name="maks" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên loại phòng</label>
                                    <textarea name="tenloaiphong" class="form-control" required>${detailLP.TENLOAIPHONG}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Mô tả</label>
                                    <textarea name="mota" class="form-control" required>${detailLP.MOTA}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <input value="${detailLP.HINHANH}" name="hinh" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Giá phòng</label>
                                    <input value="${detailLP.GIAPHONG}" name="gia" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Số lượng</label>
                                    <input value="${detailLP.SOLUONG}" name="sl" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Trạng thái: </label>
                                    <c:choose>
                                        <c:when test="${detailLP.TRANGTHAI==true}"><input name="trangthai" type="checkbox" value="true" checked="true"></c:when>
                                        <c:otherwise><input name="trangthai" type="checkbox" value="true"></c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="form-group">
                                    <label>Ngừng: </label>
                                    <c:choose>
                                        <c:when test="${detailLP.NGUNG==true}"><input name="ngung" type="checkbox" value="true" checked="true"></c:when>
                                        <c:otherwise><input name="ngung" type="checkbox" value="true"></c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript">
        </script>
    </body>
</html>
