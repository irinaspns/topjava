<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Meals2</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Подсчет калорий</h2>
<table style="width:60%">
    <tr>
        <th align="le" style="width:30%">Дата/Время</th>
        <th style="width:60%">Описание</th>
        <th style="width:10%">Калории</th>
    </tr>
    <c:forEach var="mealTo" items="${mealsToList}">
        <tr>
            <fmt:parseDate value="${mealTo.dateTime}" pattern="yyyy-MM-dd'T'HH:mm" var ="formatedDate"/>
            <td style="width:30%"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${formatedDate}"/></td>
            <td style="width:60%"><c:out value="${mealTo.description}" /></td>
            <td style="width:10%"><c:out value="${mealTo.calories}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>