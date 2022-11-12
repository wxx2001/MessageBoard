<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="save.data.Login" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="save.data.DataBean"%>
<link rel="stylesheet" href=css/login.css>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href=css/login.css>
    <title>留言板</title>
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
                <h2><p style="text-align:center">留言板</p></h2>
              
<% request.setCharacterEncoding("UTF-8");
DataBean dataBean = new DataBean();
 Connection con =null; 
 Statement sql;
 Context context;
 try {
				context = new InitialContext();
				Context  contextNeeded=(Context)context.lookup("java:comp/env");
	           DataSource ds=
	           (DataSource)contextNeeded.lookup("mobileConn");//获得连接池。
	            con= ds.getConnection();//使用连接池中的连接。
	           String condition="select * from message where reply is NULL and logname = '"+request.getParameter("logname")+"'";
	           sql=con.createStatement();  
	           
	              ResultSet rs=sql.executeQuery(condition);
	             
	              out.print("<table border='1' cellspcing='0'>");
	              out.print("<tr>");
            	  out.print("<th >"+"ID"+"</th>");
            	  out.print("<th >"+"用户"+"</th>");
            	  out.print("<th >"+"内容"+"</th>");
            	  out.print("<th >"+"时间"+"</th>");
            	  out.print("<th >"+""+"</th>");
            	  out.print("<th >"+""+"</th></tr>");
	              while(rs.next()) {
	            	  out.print("<tr>");
	            	  out.print("<td >"+rs.getString(1)+"</td>");
	            	  out.print("<td >"+rs.getString(2)+"</td>");
	            	  out.print("<td ><textarea >"+rs.getString(3)+"</textarea></td>");
	            	  out.print("<td >"+rs.getString(5)+"</td>");
	            	  %>
	            	  <td><a href="delete.jsp?id=<%=rs.getString(1) %>">删除</td>
	            	  <td><a href="change.jsp?id=<%=rs.getString(1) %>&message=<%=rs.getString(3)%>">编辑</td>
	            	  <td><a href="public.jsp?id=<%=rs.getString(1) %>">设为私密</td>
	            	  <% 
	       	   			
	              }
	              out.print("</table>");
	             
	           con.close();//连接返回连接池。
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			}%>


            </div>
        </div>
    </div>
</section>

</body>
</html>