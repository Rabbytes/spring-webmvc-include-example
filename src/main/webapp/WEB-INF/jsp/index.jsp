
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <title>Home</title>
    </head>
    <body>
        <p>This is the home page which includes two handler methods.</p>

        <h2>Include /list</h2>
        <s:include path="${s:mvcUrl('HC#list').build()}">
            <!-- custom request param with multiple values -->
            <s:param name="names" value="Foo,Bar" />
        </s:include>

        <s:eval expression="{names : new String[] {'Foo','Bar'}}" var="includeParams" scope="page" />
        <h2>Include /list with a map expression instead of param tags</h2>
        <s:include path="${s:mvcUrl('HC#list').build()}" params="${includeParams}" />


        <h2>Include /redirectpart without a path</h2>
        <p>This includes a handler which renders a view when no path is given. But if you include it with a path param
            then it redirects to that path. To see click this url <a href="${s:mvcUrl('HC#redirect').build()}" >${s:mvcUrl('HC#redirect').build()}</a>
        </p>
        <s:include path="${s:mvcUrl('HC#redirectPart').build()}"  />
    </body>
</html>
