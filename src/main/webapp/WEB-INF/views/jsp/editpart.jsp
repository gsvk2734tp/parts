<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Part</title>
    <link rel="stylesheet" href="editpartStyle.css">
</head>

<body>
<div class="main"><h1>Редактировать данные детали</h1></div>

<c:url var="save" value="/parts/edit?id=${partAttribute.id}" />
<form:form modelAttribute="partAttribute" method="POST" action="${save}">
    <table class="simple-little-table">
        <tr>
            <td><form:label path="name">Имя детали:</form:label></td>
            <td><label>
                <input type="text" name="name" required value="${partAttribute.name}">
            </label></td>
        </tr>

        <tr>
            <td><form:label path="required">Необходимость:</form:label></td>
            <td><form:select cssClass="select-style" path="required" size="1">
                <c:if test="${!partAttribute.required}">
                    <form:option selected="selected" value="false">Нет</form:option>
                    <form:option value="true">Да</form:option>
                </c:if>
                <c:if test="${partAttribute.required}">
                    <form:option selected="selected" value="true">Да</form:option>
                    <form:option value="false">Нет</form:option>
                </c:if>
            </form:select></td>
        </tr>

        <tr>
            <td><form:label path="amount">Количество:</form:label></td>
            <td><label>
                <input name="amount" required pattern="[0-9]{0,9}" value="${partAttribute.amount}">
            </label></td>
        </tr>
    </table>

    <input class="button7" type="submit" value="Сохранить" />
</form:form>
</body>
</html>