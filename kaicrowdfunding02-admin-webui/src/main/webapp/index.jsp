<%--
  Created by IntelliJ IDEA.
  User: kai.lv
  Date: 2022/3/10
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>

    <title>Title</title>
    <%-- http://localhost:8080/kaicrowdfunding/test/ssm.html --%>
    <base href="http://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
    <script type="text/javascript" src="jquery/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#btn1").click(function () {
                $.ajax({
                    "url": "send/array.html",
                    "type": "post",
                    "data": {
                        "array": [5, 8, 2]
                    },
                    "dataType": "text",  // 如何对待服务器端返回的数据
                    "success": function (response) {
                        alert(response);
                    },
                    "error": function (response) {
                        alert(response);
                    }
                });
            });


        });
    </script>

</head>
<body>

<a href="test/ssm.html">测试SSM整合环境</a>
<br/>

<button id="btn1">Send [1,3,2]</button>

</body>
</html>
