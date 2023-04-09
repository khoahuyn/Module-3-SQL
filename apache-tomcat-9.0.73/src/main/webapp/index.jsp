<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 4/8/2023
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

  <head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  <body>
  <h2>Simple Calculate</h2>
  <form action=" /display-discount " method="post">
    <label>Product Description:</label><br>
    <input type="text" name="Product Description" placeholder="Enter your description: "/><br>
    <label>List Price:</label><br>
    <input type = "text" name="List Price" placeholder="Enter your price:"/><br>
    <label>Discount Percent:</label><br>
    <input type = "text" name="Discount Percent" placeholder="Enter your percent:"/>
    <input type="submit" value="Calculate Discount">

  </form>
  </body>
</html>
