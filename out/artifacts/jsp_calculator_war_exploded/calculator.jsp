<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/05/2020
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
<%
    int firstOperand = Integer.parseInt(request.getParameter("firstOperand"));
    int secondOperand = Integer.parseInt(request.getParameter("secondOperand"));
    int result;
    char operator = request.getParameter("operator").charAt(0);

    PrintWriter writer = response.getWriter();
    writer.println("<html>");
    writer.println("<h1>RESULT:</h1>");
    switch (operator) {
        case '+':
            result = firstOperand + secondOperand;
            writer.println(firstOperand + " " + operator + " " + secondOperand + " = " + result);
            break;
        case '-':
            result = firstOperand - secondOperand;
            writer.println(firstOperand + " " + operator + " " + secondOperand + " = " + result);
            break;
        case '*':
            result = firstOperand * secondOperand;
            writer.println(firstOperand + " " + operator + " " + secondOperand + " = " + result);
            break;
        case '/':
            try {
                result = firstOperand / secondOperand;
                writer.println(firstOperand + " " + operator + " " + secondOperand + " = " + result);
                break;
            } catch (Exception e){
                writer.println("Loi: " + e.getMessage());
            }
            break;
        default:
            writer.println("Điền vớ va vớ vẩn!!");
    }
    writer.println("</html>");
%>
</body>
</html>

