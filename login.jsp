<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-wideh,initial-scale">
    <link rel="stylesheet" href=css/login.css>
  
    <title>登录</title>
</head>

<body>
<section>
    <!--背景色-->
    <div class="color"></div>
    <div class="color"></div>
    <div class="color"></div>
    <div class="box">
        <!--背景圆-->
        <div class="circlre" style="--x:0"></div>
        <div class="circlre" style="--x:1"></div>
        <div class="circlre" style="--x:2"></div>
        <div class="circlre" style="--x:3"></div>
        <div class="circlre" style="--x:4"></div>
        <!--登录框-->
        <div class="container">
            <div class="form">
                <h2 class="h2">登录</h2>
                <form action="loginServlet" method="post">
                    <div class="inputBox">
                        <input type="text" placeholder="用户名" name="logname">
                    </div>
                    <div class="inputBox">
                        <input type="password" placeholder="密码" name="password">
                    </div>
                  
                    <div class="inputBox">
                        <input type="submit" value="登录">
                    </div>
                    <p class="forget">没有账户？
                        <a href="sign.jsp">点击注册</a>
                        <a href="manager.jsp" style="text-align:right">管理员入口</a>
                    </p>
                    <span style="text-align: center">${msg}</span>
                </form>

            </div>
        </div>
    </div>
</section>
</body>

</html>

