<%--
  User: kaiqiang
  Date: 2022/5/24
  Time: 21:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<%@include file="/WEB-INF/include-head.jsp" %>
<script type="text/javascript">
    $(function () {
        $("#asyncBtn").click(function () {
            console.log("ajax函数之前");
            $.ajax({
                "url": "test/ajax/async.html",
                "type": "post",
                "dataType": "text",
                "async": false,         // 关闭异步工作模型，使用同步工作方式，此时所有操作在同一个线程执行
                "success": function (response) {

                    // success是接收到服务器端响应后执行
                    console.log("ajax函数内部的success函数" + response);
                }
            });

            console.log("ajax函数之后");
            // 在$.ajax()执行完成后执行，不等待success()函数
            // setTimeout(function () {
            // }, 5000);
        });
    });

</script>

<body>
<%@include file="/WEB-INF/include-nav.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="/WEB-INF/include-sidebar.jsp" %>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <button id="asyncBtn">发送Ajax请求</button>
        </div>
    </div>
</div>
</body>
</html>
