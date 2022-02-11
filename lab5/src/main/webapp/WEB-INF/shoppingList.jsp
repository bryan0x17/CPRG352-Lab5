

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello ${name}<a href="">Logout</a></p>
        <h2>List</h2>
        <form action="ShoppingList" method="POST">
            <input type="hidden" name="action" value="add">
            <label for="item">Item</label>
            <input type="text" id="item" name="item">
            <button type="submit">Add</button>
        </form>
        <form action="ShoppingList" method="POST">
            <input type="hidden" name="action" value="delete">
            <c:forEach items="${itemList}" var="item">
                <input type="radio" name="item" id="list-item" value="${item}">
                <label for="list-item">${item}</label>
            </c:forEach>
            
            <button type="submit">Delete</button>
        </form>
        
    </body>
</html>
