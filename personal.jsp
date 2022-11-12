<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href=css/login.css>
    <title>个人主页</title>
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
            <%String logname=request.getParameter("logname");
                String phone=request.getParameter("phone");
                String address=request.getParameter("address");
                String realname=request.getParameter("realname");
                String image=request.getParameter("image");
                %>
                <h2 style="text-align:center"><img class="user" src="images/<%=image %>" alt=""></h2>
                
                <form>
                
                    <div class="inputBox">
                    <table style="width:350px">
                     <tr>
                     <td>用户名：</td>
                     <td>
                      <p style="text-align:center"><%=logname %></p>
                     </td>
                    </tr>
                    <tr>
                     <td>联系电话：</td>
                     <td>
                        <p style="text-align:center"><%=phone %></p>
                    </td>
                    </tr>
                    <tr>
                     <td>邮箱地址：</td>
                     <td>
                        <p style="text-align:center"><%=address %></p>
                    </td>
                    </tr>
                    <tr>
                     <td>真实姓名：</td>
                     <td>
                        <p style="text-align:center"><%=realname %></p>
                    </td>
                    </tr></table>
                       
                    </div>
                    <table>
                    <tr>
                    <td><a href="mymessage.jsp?logname=<%=logname%>" >我的留言板</a></td>
                    <td> <a href="giveme.jsp?logname=<%=logname%>" >个人树洞</a></td>
                    <td><a href="login.jsp" >注销</a></td>
                    <td><a href="changemy.jsp?logname=<%=logname%>
                        &phone=<%=phone%>
                        &address=<%=address%>
                        &realname=<%=realname%>
                        &image=<%=image%>" >信息修改</a></td>
                    </tr></table>
                   
                    
                   
                   
                   
                </form>

            </div>
        </div>
    </div>
</section>
</body>

</html>

