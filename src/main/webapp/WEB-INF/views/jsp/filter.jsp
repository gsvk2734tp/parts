<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filter Part</title>
    <style type="text/css">

        a.button7 {
            position: relative;
            left: 1%;
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

        .main h1 {
            position: relative;
            left: 1%;
            margin: 1em 0 0.5em 0;
            font-weight: 600;
            font-family: 'Titillium Web', sans-serif;
            position: relative;
            text-shadow: 0 -1px 1px rgba(0, 0, 0, 0.4);
            font-size: 22px;
            line-height: 40px;
            color: #355681;
            text-transform: uppercase;
            border-bottom: 1px solid rgba(53, 86, 129, 0.3);
        }

        .simple-little-table {
            font-family: Arial, Helvetica, sans-serif;
            color: #666;
            font-size: 12px;
            text-shadow: 1px 1px 0px #fff;
            background: #eaebec;
            margin: 20px;
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
    </style>
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