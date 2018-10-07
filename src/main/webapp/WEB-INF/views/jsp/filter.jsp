<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filter Part</title>
    <link rel="stylesheet" href="filter.css">

</head>

<body>
<div class="main">
    <c:if test="${part.required == null}"><h1>Все детали </h1></c:if>
    <c:if test="${part.required}"><h1>Обязательные детали </h1></c:if>
    <c:if test="${part.required == false}"><h1>Необязательные детали</h1></c:if>
</div>
<br/>
<a href="<c:url value='/parts'/>" class="button7">Возврат в основное меню</a>
<table class="simple-little-table">
    <tr>
        <th width="120">Наименование</th>
        <th width="80">Необходимость</th>
        <th width="80">Количество</th>
        <th width="80"></th>
        <th width="80"></th>
    </tr>
    <tr>
        <c:forEach var="part" items="${parts}">
    <tr>
        <td><a href="/partdata/${part.id}" target="_blank">${part.name}</a></td>
        <td>
            <c:if test="${part.required}">Да</c:if>
            <c:if test="${!(part.required)}">Нет</c:if>
        </td>
        <td>${part.amount}</td>
        <td><a href="<c:url value='/parts/edit?id=${part.id}'/>">Редактировать</a></td>
        <td><a href="<c:url value='/remove/${part.id}'/>">Удалить</a></td>
    </tr>
    </c:forEach>
    </tr>
</table>
<c:if test="${parts.size() > 13}"><a href="<c:url value='/parts'/>" class="button7">Возврат в основное меню</a>
</c:if>

</body>
</html>