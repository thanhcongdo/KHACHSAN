<%-- 
    Document   : Manager
    Created on : Apr 28, 2022, 4:59:42 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                
                 <!-- session lay ma KS  -->
              <a class="navbar-brand" href="#"> KHACHSAN </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  
                  <!-- ad == 1: quan li tai khoan cua user, KS -->
                  <c:if test="${sessionScope.acc.ADMIN == 1 }" >
                    <li class="nav-item">
                       <a class="nav-link" href="TaiKhoanControl"> Manger Account </a>
                    </li>
                    
                    <li class="nav-item">
                       <a class="nav-link" href="KhachSanControl"> Manager Hotel </a>
                    </li>
                  </c:if>
                   
                   <!-- ad == 0: quan li khach san, them sua xoa, ngung cung cap khach san -->
                  <c:if test="${sessionScope.acc.ADMIN == 0 }" >
                    <li class="nav-item">
                         <!-- session lay ma KS-->
                       <a class="nav-link" href="#"> ${sessionScope.acc.MAKHACHSAN}  </a>
                    </li>
                      
                    <li class="nav-item">
                       <a class="nav-link" href="LoaiPhongControl"> Manger Category </a>
                    </li> 
                  </c:if>
                    
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      
                        <c:if test="${sessionScope.acc != null}" >              
                          <li class="nav-item">
                             <a class="nav-link" href="logout">Logout</a>
                          </li>
                        </c:if>
                  
                    </ul>
                  </li>
                  
                </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div>
            </div>
          </nav>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>