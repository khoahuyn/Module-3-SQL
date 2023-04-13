<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 4/12/2023
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/static/css/bootstrap.css"/>
  </head>
  <body>
  <h1>Products</h1>
  <p>
    <a href="/products?action=create">Create new products</a>
  </p>
  <table border="1">
    <tr>
      <td>Name</td>
      <td>Description</td>
      <td>Producer</td>
      <td>Edit</td>
      <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
      <tr>
        <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
        <td>${product.getDescription()}</td>
        <td>${product.getProducer()}</td>
        <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
        <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
