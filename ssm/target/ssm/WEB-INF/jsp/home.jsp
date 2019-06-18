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
                <ul class="nav nav-tabs" id="nav-left">
                    <li id="first" onclick="menuClick(1)">
                        <a href="#">首页</a>
                    </li>
                    <li id="second">
                        <a href="#" onclick="menuClick(2)">文章</a>
                    </li>
                    <li id="third" class="active">
                        <a href="#" onclick="menuClick(3)">我的</a>
                    </li>
                    <%--<li class="dropdown pull-right">--%>
                    <%--<a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                    <%--<li>--%>
                    <%--<a href="#">操作</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="#">设置栏目</a>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="#">更多设置</a>--%>
                    <%--</li>--%>
                    <%--<li class="divider">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<a href="#">分割线</a>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                </ul>
            </div>

            <div class="col-md-12 column">
                <div class="jumbotron well">
                    <h1>
                        Hello, world!
                    </h1>
                    <p>
                        This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="#">Learn more</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
<script>
    function menuClick(type) {
        $("#first").removeClass("active");
        $("#second").removeClass("active");
        $("#third").removeClass("active");
        switch(type)
        {
            case 1:
                $("#first").addClass("active");
                window.location = "../../html/home.html";
                break;
            case 2:
                $("#second").addClass("active");
                window.location = "http://localhost:8888/ssm/paper/allPaper.do";
                break;
            case 3:
                $("#third").addClass("active");
                window.location = "http://localhost:8888/ssm/user/info.do";
                break;
            default:

        }
    }
</script>
</body>
</html>