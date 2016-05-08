
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title>Fail</title>
    </head>
    <body>
        This page includes a failing handler which throws an exception so this page must display the default error
        page instead of this text.

        <p><s:include path="/failpart" /></p>

    </body>
</html>
