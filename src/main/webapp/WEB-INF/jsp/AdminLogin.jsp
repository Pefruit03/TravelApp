<%-- 
    Document   : AdminLogin
    Created on : Sep 2, 2022, 8:58:09 PM
    Author     : HP
--%>

<%-- 
    Document   : ddthamquans
    Created on : Sep 9, 2022, 8:47:28 PM
    Author     : Pham Yen Nhi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">QUAN LY TOUR</h1>

<c:url value="/admin/ddthamquans" var="action" />

<form:form method="post" action="${action}" modelAttribute="ddthamquan">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" path="tenDD" class="form-control" id="tenDD" placeholder="tenDD" name="tenDD" />
        <label for="tenDD">Ten Dia Diem Tour</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="number" path="gia" class="form-control" id="gia" placeholder="gia" name="gia" />
        <label for="gia">Chi phi</label>
    </div>
    <div class="form-floating">
        <form:select path="mSTour" class="form-select" id="TourId" name="tour">
            <c:forEach items="{tours}" var="t">
                <option id="${t.MSDD}">${c.TenTour}</option>
            </c:forEach>
        </form:select>
        <label for="sel1" class="form-label">Danh muc Tour</label>
    </div>
        <div>
            <br>
            <input type="submit" value="Them Tour moi" class="btn btn-danger" />
        </div>
</form:form>

<div class="spinner-border text-secondary" id="mySpinner"></div>
<table class="table" style="font-size: 32px">
    <tr>
        <th></th>
        <th>Ten Dia Diem</th>
        <th>Chi phi</th>
        <th></th>
    </tr>
    <tbody id="myDdthamquan">

    </tbody>
</table>
<script src="<c:url value="/js/ddthamquan.js" />"></script>
<script>
    <c:url value="/api/ddthamquans" var="u" />

    window.onload = function () {
        loadAdminDdthamquans('${u}');
    }
</script>