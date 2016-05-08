<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
List of names:
<ul>
    <c:forEach items="${names}" var="name">
        <li>${name}</li>
    </c:forEach>
</ul>

<p>Include report for names by using current request params</p>
<s:include path="${s:mvcUrl('report#show').build()}" includeRequestParams="true" />
