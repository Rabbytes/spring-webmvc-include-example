<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title>Redirect</title>
    </head>
    <body>
        You never see this page because it includes a handler which redirects
        <s:include path="/redirectpart">
            <s:param name="path" value="/" />
        </s:include>
    </body>
</html>
