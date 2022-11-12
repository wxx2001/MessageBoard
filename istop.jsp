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
    <title>置顶留言</title>
</head>

<body>
<%
request.setCharacterEncoding("utf-8");
Connection con =null; 
Statement sql; 

     Context context;
	String idmessage=request.getParameter("id").trim();
        String istop=request.getParameter("istop").trim();
        if(istop.equals("1")){
        	istop="0";
        }
        else istop="1";
        
	try {
		context = new InitialContext();
		Context  contextNeeded=(Context)context.lookup("java:comp/env");
     DataSource ds=
     (DataSource)contextNeeded.lookup("mobileConn");//获得连接池。
      con= ds.getConnection();//使用连接池中的连接。
     String condition="Update message set istop='"+istop+"' where idmessage='"+idmessage+"'";
     sql=con.createStatement();  
     
        int rs=sql.executeUpdate(condition);
        if(rs!=0) {
      	  
     
      	out.println(" <script>alert('success');history.go(-1);</script>");
        }
        else {
      	  
       	 out.println("<script>alert('fail');history.go(-1);</script>");
        }
 	   
     con.close();//连接返回连接池。
	} catch (NamingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
     
%>
</body>

</html>

