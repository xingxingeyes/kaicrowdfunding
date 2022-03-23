<%--
  Created by IntelliJ IDEA.
  User: kaiqiang
  Date: 2022/3/14
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>出错了！</h1>
<%-- 从请求域取出Exception对象,再进一步访问message属性就能够显示错误信息--%>
${requestScope.exception.message}

</body>
</html>
