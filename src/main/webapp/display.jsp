
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="age2" scope="request" type="java.lang.Integer"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employees</title>
</head>

<body>
<table border="1" cellpadding="5" cellspacing="5">
    <c:out value="${age2}"/>
    <tr>
        <th>Employee ID</th>
        <th>Empployee Name</th>
        <th>Salary</th>
        <th>Department</th>
        <th>State</th>
        <th>City</th>
        <th>Country</th>
    </tr>
    <c:forEach var="employee" items="${employeeList}">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.salary}</td>
            <td>${employee.department}</td>
            <td>${employee.state}</td>
            <td>${employee.city}</td>
            <td>${employee.country}</td>
        </tr>
    </c:forEach>
</table>
<table border="0" cellpadding="0" cellspacing="0">
    <td>
        <%--For displaying Previous link except for the 1st page --%>
        <c:if test="${currentPage != 1}">
            <a href="employee.do?page=${currentPage - 1}">&nbsp;Previous</a><!-- </td> -->
        </c:if>
        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                   ${i}&nbsp;&nbsp;
                </c:when>
                <c:otherwise>
                    <!--  <td> --><a href="employee.do?page=${i}">${i}&nbsp;</a><!-- </td> -->
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <!--  </tr> -->

        <%--For displaying Next link --%>
        <c:if test="${currentPage lt noOfPages}">
            <a href="employee.do?page=${currentPage + 1}">&nbsp;Next</a>
        </c:if>
    </td>
</table>
</body>
</html>
