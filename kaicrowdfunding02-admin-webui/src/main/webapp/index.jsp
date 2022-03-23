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
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#btn1").click(function () {
                $.ajax({
                    "url": "send/array/one.html",
                    "type": "post",
                    "data": {
                        "array": [5, 8, 12]
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


            $("#btn2").click(function () {
                $.ajax({
                    "url": "send/array/two.html",
                    "type": "post",
                    "data": {
                        "array[0]": 5,
                        "array[1]": 8,
                        "array[2]": 12
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

            $("#btn3").click(function () {

                // 准备好要发送到服务端的数组
                var array = [5, 8, 12];
                console.log(array.length);
                // 将json数组转换为json字符串
                var requestBody = JSON.stringify(array);
                console.log(requestBody.length);
                $.ajax({
                    "url": "send/array/three.html",
                    "type": "post",
                    "data": requestBody,
                    "contentType": "application/json;charset=UTF-8",
                    "dataType": "text",  // 如何对待服务器端返回的数据
                    "success": function (response) {
                        alert(response);
                    },
                    "error": function (response) {
                        alert(response);
                    }
                });
            });


            $("#btn4").click(function () {
                // 准备发送的数据
                var student = {
                    "stuId":5,
                    "stuName":"tom",
                    "address":{
                        "province":"广东",
                        "city":"深圳",
                        "street":"粤海街道深南大道"
                    },
                    "subjectList":[
                        {
                            "subjectName":"JavaSE",
                            "subjectScore":100
                        },{
                            "subjectName":"SSM",
                            "subjectScore":99
                        }
                    ],
                    "map":{
                        "k1":"v1",
                        "k2":"v2"
                    }
                };

                // 将json对象转换为json字符串
                var requestBody = JSON.stringify(student);
                // 发送ajax请求
                $.ajax({
                    "url":"send/compose/object.json",
                    "type":"post",
                    "data":requestBody,
                    "contentType":"application/json;charset=UTF-8",
                    "dataType":"json",
                    "success": function (response) {
                        console.log(response);
                    },
                    "error": function (response) {
                        console.log(response);
                    }

                });


            });


            $("#btn5").click(function () {
                layer.msg("layer弹框");

            });





        });
    </script>

</head>
<body>

<a href="test/ssm.html">测试SSM整合环境</a>
<br/><br/>

<button id="btn1">Send [5,8,12] one</button>
<br/><br/>

<button id="btn2">Send [5,8,12] two</button>
<br/><br/>

<button id="btn3">Send [5,8,12] three</button>
<br/><br/>

<button id="btn4">Send [5,8,12] four</button>
<br/><br/>

<button id="btn5">点我弹框</button>
<br/><br/>

</body>
</html>
