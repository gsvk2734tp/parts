<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data Part</title>
    <link rel="stylesheet" href="partsdataStyle.css">
</head>

<body>
<div class="main"><h1>Описание детали</h1></div>

<table class="simple-little-table">
    <tr>
        <th width="120">Наименование</th>
        <th width="80">Необходимость</th>
        <th width="80">Количество</th>
    </tr>
    <tr>
        <td>${part.name}</td>
        <td>
            <c:if test="${part.required}">Да</c:if>
            <c:if test="${!(part.required)}">Нет</c:if>
        </td>
        <td>${part.amount}</td>
    </tr>
</table>

</body>
</html>
