<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2>Names Report:</h2>
<p>This handler (/report) is nested within another child handler (/list) </p>
<ul>
    <c:forEach items="${names.keySet()}" var="name">
        <li>${name}: ${names[name]}</li>
    </c:forEach>
</ul>

