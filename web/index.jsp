<%-- 
    Document   : index
    Created on : Sep 11, 2017, 12:18:09 PM
    Author     : 735610
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Week 02 Lab - AgeNextBirthday</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h1>Age next birthday</h2>
            <div>
                <form action="AgeCalculator" method="GET">
                    <table>
                        <tbody>
                            <tr>
                                <td>Enter your current age:</td>
                                <td><input type="text" name="age" value="${ageValue}"/></td>
                                <td><input type="submit" value="Age next birthday"/></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <c:choose>
                <c:when test="${not empty exception}">
                <div>
                    ${exception}
                </div>
                </c:when>
            </c:choose>
            <c:choose>
                <c:when test="${not empty age}">
                <div>
                    Your age next birthday will be ${age}.
                </div>
                </c:when>
            </c:choose>
            
        </div>
    </body>
</html>
