<%-- 
    Document   : SignUp
    Created on : Sep 2, 2022, 6:36:01 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spr" uri="http://www.springframework.org/tags"%>

<core:if test="${errMess != null}">
    <div class="alert alert-danger">
        ${errMess}
    </div>
</core:if>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<section class="h-100 h-custom" style="background-color: #8fc4b7;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-8 col-xl-6">
                <div class="card rounded-3 SignUp">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                         class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                         alt="Sample photo">
                    <div class="card-body p-4 p-md-5">
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration Info</h3>
                        <core:url value="/sign-up" var="signup"/>
                        <form:form method="post" action="${signup}" enctype="multipart/form-data" modelAttribute="newLogin" class="px-md-2">

                            <div class="form-outline mb-4">
                                <form:input type="text" path="tempTen" placeholder=" Tên"/>
                                <form:input type="text" path="tempNgaySinh" placeholder=" Ngày sinh"/>
                                <form:input type="text" path="tempQueQuan" placeholder=" Quê quán"/>
                                <form:input type="text" path="tempSdt" placeholder=" Số điện thoại"/>
                                <form:input type="text" path="tempEmail" placeholder=" Email"/>

                                <form:input type="text" path="Login_user" placeholder=" Username"/>
                                <form:input type="password" path="Login_pass" placeholder=" Password"/>
                                <form:input type="password" path="confirmPass" placeholder=" Retype password"/>
                                <button type="submit" class="btn btn-success btn-lg mb-1">Submit</button>

                            </form:form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
