<%--
  Created by IntelliJ IDEA.
  User: jit
  Date: 2019/6/14
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>登录成功</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <h1>恭喜登录成功</h1>
                <ul class="list-unstyled">
                    <li>
                        姓名:${user.username}
                    </li>
                    <li>
                        账户余额:${user.account}元
                    </li>
                </ul>
                <button type="button" class="btn btn-primary btn-default" onclick="jump()">跳转</button>
                <button type="button" class="btn btn-primary btn-default" onclick="logout()">登出</button>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="../js/jquery.js"></script>
    <!--  plugins  -->
    <script src="../js/bootstrap.min.js"></script>
    <script>
        function jump() {
            window.location = "http://localhost:8888/ssm/paper/allPaper.do";
        }
        function logout() {
            window.location = "<%=path%>/user/logout.do";
        }
    </script>
</body>
</html>
