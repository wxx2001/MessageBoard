<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-wideh,initial-scale">
    <link rel="stylesheet" href=css/login.css>
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <title>修改信息</title>
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
        <!--注册框-->
        <div class="container">
            <div class="form">
                <h2>修改信息</h2>
                <form action="alterServlet" method="post">
                    <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("logname") %>" name="logname" readonly>
                    </div>
                    <div class="inputBox">
                        <input type="password" placeholder="重置密码" name="password">
                    </div>
                    <div class="inputBox">
                        <input type="password" placeholder="重复密码" name="again_password">
                    </div>
                    <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("phone") %>" name="phone">
                    </div>
                    <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("address") %>" name="address">
                    </div>
                    <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("realname") %>" name="realname">
                    </div>
                    <div class="inputBox">
                        <input type="file" value="<%=request.getParameter("image") %>" name="image">
                    </div>
                    <div class="inputBox">
                        <input type="submit" value="提交">
                    </div>
                    
                    <span style="text-align: center">${msg}</span>
                </form>

            </div>
        </div>
    </div>
</section>
</body>

</html>

