
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>
    <span>T</span>ravel
    <span>L</span>ogin
    <span>F</span>orm </h1>
<style>
    body {
        background-image: url('resources/img/logo.png');
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
    }
</style>
<div class="PageLogin">
    <form method="POST" action="<core:url value="/sign-in"/>" class="form-sign-in">

        <!-- Username<br> -->
        <i class="uil uil-user-circle"></i>
        <input type="text" name="Login_user" placeholder=" Username"/>
        <br>
        <!-- Password<br> -->
        <i class="uil uil-keyhole-circle"></i>
        <input type="password" name="Login_pass" placeholder=" Password">
        <br>
        <core:if test="${param.fail != null}">
            <div class="err-mess-box">
                Your Username or Password is incorrect !<br>
                Please try again...
            </div>
        </core:if>
        <button class="btn-sign-in" type="submit">sign in</button>
        <br>
        <a href="<core:url value="/SignUp"/>" class="sign-up-link">sign up</a>
    </form>
</div> 