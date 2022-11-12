<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-wideh,initial-scale">
    <link rel="stylesheet" href=css/login.css>
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <title>编辑留言</title>
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
                <h2 style="text-align:center">提交留言</h2>
                <form action="changemServlet" method="post">
                <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("id") %>" name="logname" readonly>
                    </div>
                    <div class="inputBox">
                        <input type="text" value="<%=request.getParameter("message") %>" name="inputmessage">
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

