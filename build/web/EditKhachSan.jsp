<%-- 
    Document   : EditKhachSan
    Created on : 10-May-2022, 19:58:57
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
                            <h2>Edit <b>Khách sạn</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="EditKhachSanControl" method="post">
                            <div class="modal-header">
                                <h4 class="modal-title">Thông tin</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Mã khách sạn</label>
                                    <input value="${detailKS.MAKHACHSAN}" name="maks" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên khách sạn</label>
                                    <textarea name="tenkhachsan" class="form-control" required>${detailKS.TENKHACHSAN}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <textarea name="diachi" class="form-control" required>${detailKS.DIACHI}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>GG Map</label>
                                    <input value="${detailKS.GGMAP}" name="ggmap" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <input value="${detailKS.HINHANH}" name="hinh" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Hạng</label>
                                    <input value="${detailKS.HANG}" name="hang" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Ngừng: </label>
                                    <c:choose>
                                        <c:when test="${detailLKS.NGUNG==true}"><input name="ngung" type="checkbox" value="true" checked></c:when>
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
