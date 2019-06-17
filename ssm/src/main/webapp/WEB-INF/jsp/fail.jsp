<%--
  Created by IntelliJ IDEA.
  User: jit
  Date: 2019/6/17
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作失败</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h1>操作失败</h1>
                <button type="button" class="btn btn-primary btn-default" onclick="back()">返回</button>
            </div>
        </div>
    </div>
    <script>
        function back() {
            window.location.href = document.referrer;
            window.history.back(-1);
        }
    </script>
</body>
</html>
