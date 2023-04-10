<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 4/10/2023
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Bang tinh</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
  </head>
  <body>
  <h1>DS khach hang</h1>
  <table class="table">
    <thead>
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${studentList}" var="student">
      <tr>
        <td>${student.name}</td>
        <td>${student.date}</td>
        <td>${student.address}</td>
        <td>
          <img src="/static/img/${student.image}" width="50px">
        </td>
      </tr>
    </c:forEach>
    </tbody >

  </table>
  </body>
</html>
