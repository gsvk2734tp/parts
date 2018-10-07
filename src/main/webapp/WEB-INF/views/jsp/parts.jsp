<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parts</title>
    <link rel="stylesheet" href="partsStyle.css">
</head>
<body class="radial-gradient">
<div class="one"><h1>Компьютерные комплектующие</h1></div>

<c:url var="save" value="/parts/filter"/>
<form:form cssStyle="position: relative; left: 30%; top: 20px;" modelAttribute="partFilter" method="POST" action="${save}">
    <form:select cssClass="select-style" path="required" size="1">
        <form:option selected="selected" value="">Все</form:option>
        <form:option value="true">Обязательные детали</form:option>
        <form:option value="false">Необязательные детали</form:option>
    </form:select>
    <input type="submit" value="Фильтровать">
</form:form>

<c:url var="search" value="/parts/search"/>
<form:form cssStyle="position: absolute; left: 58%; top: 15%" modelAttribute="searchAttribute" method="POST" action="${search}">
    <label>
        <input type="text" name="name" required>
    </label>
    <input type="submit" value="Поиск">
</form:form>

<table class="simple-little-table">
    <tr>
        <a style="position: relative; left: 72%; top: 32px" href="<c:url value='/parts/add'/>" class="button7">Добавить
            деталь</a>
        <th width="120">Наименование</th>
        <th width="80">Необходимость</th>
        <th width="80">Количество</th>
        <th width="80"></th>
        <th width="80"></th>
    </tr>
    <c:forEach var="part" items="${onePagePart}">
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
</table>

<c:if test="${parts.size() > 10}">
    <c:forEach begin="1" end="${count}" var="val">
        <c:url var="page" value="/partsPage?numpage=${val}"/>
        <a style="position: relative; left: 45%; top: 18px;" href="${page}" class="button7">${val}</a>
    </c:forEach>

</c:if>
<br/>

<br/>
<div class="action-btn">
    <h2>
        Итог: Всего можно собрать ${minComputer} компьютеров
    </h2>
</div>

</body>
</html>
