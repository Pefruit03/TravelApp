<%-- 
    Document   : header
    Created on : Sep 2, 2022, 2:17:53 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="header">
    <ul class="nav-bar">
        <li class="nav-item">
            <a class="nav-item-link" href="<core:url value="/"/>">
                <i class="uil uil-estate"></i>
                Home
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-item-link" href="<core:url value="/pageAbout"/>">
                <i class="uil uil-info-circle"></i>
                About
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-item-link" href="<core:url value="/pageEvent"/>">
                <i class="uil uil-flower"></i>
                Events
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-item-link" href="<core:url value="/pageContact"/>">
                <i class="uil uil-envelope"></i>
                Contact
            </a>
        </li>
        
        
        <li class="nav-item">
            <a class="nav-item-link" href="<core:url value="/sign-in"/>" onclick="myFunction()">
                <i class="uil uil-user-square"></i>
                Sign in
            </a>
        </li>
    </ul>
</div>

