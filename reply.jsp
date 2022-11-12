<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="save.data.Login" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="save.data.DataBean"%>
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
	            String id=request.getParameter("id");
	           String condition="select * from message where reply is not NULL and reply='"+id+"'";
	           sql=con.createStatement();  
	           
	              ResultSet rs=sql.executeQuery(condition);
	             
	              out.print("<table border='1' cellspcing='0'>");
	              out.print("<tr>");
 
            	  out.print("<th >"+"用户"+"</th>");
            	  out.print("<th style='width:250px'>"+"内容"+"</th>");
            	  out.print("<th >"+"时间"+"</th>");
           
	              while(rs.next()) {
	            	  if(rs.getString(4)=="1"){
	            		  out.print("<tr >");
		            	
		            	  out.print("<td >"+rs.getString(2)+"</td>");
		            	  out.print("<td ><textarea style='width:250px'><b>"+rs.getString(3)+"</b></textarea></td>");

		            	  out.print("<td >"+rs.getString(5)+"</td></tr>");
		            	  
	            	  }
	            	  else{
	            		  out.print("<tr>");
	            	
	            	  out.print("<td >"+rs.getString(2)+"</td>");
	            	  out.print("<td ><textarea style='width:250px'>"+rs.getString(3)+"</textarea></td>");

	            	  out.print("<td >"+rs.getString(5)+"</td></tr>");
	            	  }
	            	  
	            	 
	            	  
	       	   			
	              }
	              
	             
	           con.close();//连接返回连接池。
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			}%>

            </div>
            <div><a href="replymessage.jsp?logname=<%=request.getParameter("logname") %>&id=<%=request.getParameter("id") %>" style="text-align:left">回复</a></div>
        </div>
    </div>
</section>

</body>
</html>