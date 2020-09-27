<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-09-22
  Time: 오후 6:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<title>MOBON SHOP DATA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
    <style type="text/css">
        body {
            background: #fafafa url(https://jackrugile.com/images/misc/noise-diagonal.png);
            color: #444;
            font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
            text-shadow: 0 1px 0 #fff;
        }

        strong {
            font-weight: bold;
        }

        em {
            font-style: italic;
        }

        table {
            background: #f5f5f5;
            border-collapse: separate;
            box-shadow: inset 0 1px 0 #fff;
            font-size: 12px;
            line-height: 24px;
            margin: 30px auto;
            text-align: left;
            width: 800px;
        }

        th {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
            border-left: 1px solid #555;
            border-right: 1px solid #777;
            border-top: 1px solid #555;
            border-bottom: 1px solid #333;
            box-shadow: inset 0 1px 0 #999;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            position: relative;
            text-shadow: 0 1px 0 #000;
        }

        th:after {
            background: linear-gradient(rgba(255, 255, 255, 0), rgba(255, 255, 255, .08));
            content: '';
            display: block;
            height: 25%;
            left: 0;
            margin: 1px 0 0 0;
            position: absolute;
            top: 25%;
            width: 100%;
        }

        th:first-child {
            border-left: 1px solid #777;
            box-shadow: inset 1px 1px 0 #999;
        }

        th:last-child {
            box-shadow: inset -1px 1px 0 #999;
        }

        td {
            border-right: 1px solid #fff;
            border-left: 1px solid #e8e8e8;
            border-top: 1px solid #fff;
            border-bottom: 1px solid #e8e8e8;
            padding: 10px 15px;
            position: relative;
            transition: all 300ms;
        }

        td:first-child {
            box-shadow: inset 1px 0 0 #fff;
        }

        td:last-child {
            border-right: 1px solid #e8e8e8;
            box-shadow: inset -1px 0 0 #fff;
        }

        tr {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:nth-child(odd) td {
            background: #f1f1f1 url(https://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:last-of-type td {
            box-shadow: inset 0 -1px 0 #fff;
        }

        tr:last-of-type td:first-child {
            box-shadow: inset 1px -1px 0 #fff;
        }

        tr:last-of-type td:last-child {
            box-shadow: inset -1px -1px 0 #fff;
        }

        tbody:hover td {
            color: transparent;
            text-shadow: 0 0 3px #aaa;
        }

        tbody:hover tr:hover td {
            color: #444;
            text-shadow: 0 1px 0 #fff;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Data</h2>
    <h4>Execution time: ${Execution_time} ms</h4> <br/>
    <table class="table table-hover">

        <form method="get" action="product">
            <select type="option" id="option" name="option">
                <option value="none">=== 선택 ===</option>
                <option value="web" selected>WEB</option>
                <option value="mobile">MOBILE</option>
            </select><br/>
            <input type="userid" id="userid" name="userid" value="${userid}"/><br/>
            <input type="pcode" id="pcode" name="pcode" value="${pcode}"/><br/>
            <input type="submit" id="sBtn" value="검색"/>
        </form>

    </table>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Method</th>
            <th>Data</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>EhCache</td>
            <td>${EhCache}</td>
        </tr>
        <tr>
            <td>Redis</td>
            <td>${Redis} </td>
        </tr>
        <tr>
            <td>DB</td>
            <td>${DB} </td>
        </tr>
        </tbody>
    </table>
</div>

</body>
<body>
<%--  EhCache: ${EhCache} <br/>--%>
<%--  Redis: ${Redis} <br/>--%>
<%--  DB: ${DB} <br/>--%>


</body>
</html>
