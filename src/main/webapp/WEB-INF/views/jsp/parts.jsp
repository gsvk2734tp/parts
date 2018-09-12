<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Parts</title>

    <style type="text/css">

        .select-style {
            top: 20px;
            font-weight: 700;
            border: 1px solid #ccc;
            width: 200px;
            border-radius: 3px;
            overflow: hidden;
            background: #fafafa no-repeat 90% 50%;
        }

        .select-style select {
            font-weight: 700;
            padding: 5px 8px;
            width: 130%;
            border: none;
            box-shadow: none;
            -webkit-appearance: none;
        }

        .select-style select:focus {
            outline: none;
        }

        .radial-gradient {
            background: #4CCEB2;
            background: -webkit-radial-gradient(#4CCEB2, #2F8FD8);
            background: -o-radial-gradient(#4CCEB2, #2F8FD8);
            background: -moz-radial-gradient(#4CCEB2, #2F8FD8);
            background: radial-gradient(#4CCEB2, #2F8FD8);
        }

        .simple-little-table {
            margin: auto;
            font-family: Arial, Helvetica, sans-serif;
            color: #666;
            font-size: 12px;
            text-shadow: 1px 1px 0px #fff;
            background: #eaebec;
            border: #ccc 1px solid;
            border-collapse: separate;

            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;

            -moz-box-shadow: 0 1px 2px #d1d1d1;
            -webkit-box-shadow: 0 1px 2px #d1d1d1;
            box-shadow: 0 1px 2px #d1d1d1;
        }

        .simple-little-table th {
            font-weight: bold;
            padding: 21px 25px 22px 25px;
            border-top: 1px solid #fafafa;
            border-bottom: 1px solid #e0e0e0;

            background: #ededed;
            background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
            background: -moz-linear-gradient(top, #ededed, #ebebeb);
        }

        .simple-little-table th:first-child {
            text-align: left;
            padding-left: 20px;
        }

        .simple-little-table tr:first-child th:first-child {
            -moz-border-radius-topleft: 3px;
            -webkit-border-top-left-radius: 3px;
            border-top-left-radius: 3px;
        }

        .simple-little-table tr:first-child th:last-child {
            -moz-border-radius-topright: 3px;
            -webkit-border-top-right-radius: 3px;
            border-top-right-radius: 3px;
        }

        .simple-little-table tr {
            text-align: center;
            padding-left: 20px;
        }

        .simple-little-table tr td:first-child {
            text-align: left;
            padding-left: 20px;
            border-left: 0;
        }

        .simple-little-table tr td {
            padding: 18px;
            border-top: 1px solid #ffffff;
            border-bottom: 1px solid #e0e0e0;
            border-left: 1px solid #e0e0e0;

            background: #fafafa;
            background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
            background: -moz-linear-gradient(top, #fbfbfb, #fafafa);
        }

        .simple-little-table tr:nth-child(even) td {
            background: #f6f6f6;
            background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
            background: -moz-linear-gradient(top, #f8f8f8, #f6f6f6);
        }

        .simple-little-table tr:last-child td {
            border-bottom: 0;
        }

        .simple-little-table tr:last-child td:first-child {
            -moz-border-radius-bottomleft: 3px;
            -webkit-border-bottom-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }

        .simple-little-table tr:last-child td:last-child {
            -moz-border-radius-bottomright: 3px;
            -webkit-border-bottom-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }

        .simple-little-table tr:hover td {
            background: #f2f2f2;
            background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
            background: -moz-linear-gradient(top, #f2f2f2, #f0f0f0);
        }

        .simple-little-table a:link {
            color: #666;
            font-weight: bold;
            text-decoration: none;
        }

        .simple-little-table a:visited {
            color: #999999;
            font-weight: bold;
            text-decoration: none;
        }

        .simple-little-table a:active,
        .simple-little-table a:hover {
            color: #bd5a35;
            text-decoration: underline;
        }

        a.button7 {
            font-weight: 700;
            color: white;
            text-decoration: none;
            padding: .8em 1em calc(.8em + 3px);
            border-radius: 3px;
            background: rgb(64, 199, 129);
            box-shadow: 0 -3px rgb(53, 167, 110) inset;
            transition: 0.2s;
        }

        a.button7:hover {
            background: rgb(53, 167, 110);
        }

        a.button7:active {
            background: rgb(33, 147, 90);
            box-shadow: 0 3px rgb(33, 147, 90) inset;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }

        .one {
            background: #FFF4ED;
            padding: 20px 20px;
            text-align: center;
        }

        .one h1 {
            font-family: 'Righteous', cursive;
            position: relative;
            color: #3CA1D9;
            display: inline-block;
            border-top: 2px solid;
            border-bottom: 2px solid;
            font-size: 3em;
            padding: 11px 60px;
            margin: 0;
            line-height: 1;
        }

        .one h1:before, .one h1:after {
            content: "";
            position: absolute;
            top: 0;
            width: 30px;
            height: 100%;
            border-left: 2px solid;
            border-right: 2px solid;
            background: repeating-linear-gradient(180deg, transparent, transparent 2px, #3CA1D9 2px, #3CA1D9 4px);
        }

        .one h1:before {
            left: 0;
        }

        .one h1:after {
            right: 0;
        }

        @media (max-width: 420px) {
            .one h1 {
                font-size: 2em;
            }
        }

        .action-btn {
            position: relative;
            left: 28%;
            display: inline-block;
            padding: 8px 20px;
            margin: 20px;
            text-decoration: none;
            font-family: 'Comfortaa', cursive;
            font-size: 14px;
            text-transform: uppercase;
            font-weight: bold;
            color: #112D52;
            background: #40C781;
            border: 2px solid #112D52;
            transition: .4s linear;
        }
    </style>


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
