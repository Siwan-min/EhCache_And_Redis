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
<title>Test</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>

<div class="container">
    <h2>Data</h2>
    <h4>Execution time: ${Execution_time} ms</h4> <br/>
    <table class="table table-hover">

      <form method="get" action="product" >
        <input type="userid" id="userid" name="userid" value="${userid}"/>
        <input type="pcode" id="pcode" name="pcode" value="${pcode}"/>
        <input type="submit" id="sBtn" value="검색" />
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
