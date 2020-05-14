<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/05/2020
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="calculator.jsp">
    <fieldset>
        <legend>Calculator</legend>
        <span>First operand: </span>
        <input name="firstOperand" type="text"><br>
        <span>Operator: </span>
        <select name = "operator">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Multiplication</option>
            <option value="/">Division</option>
        </select><br>
        <span>Second operand: </span>
        <input name="secondOperand" type="text"><br>
        <input type="submit" value="Calculate" id="submit">
    </fieldset>
</form>
</body>
</html>
