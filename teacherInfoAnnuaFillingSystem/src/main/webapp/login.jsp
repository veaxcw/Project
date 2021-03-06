<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>教师年度工作填报系统</title>
     <link rel="icon" href="favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
    <link rel="stylesheet" type="text/css" href="Styles/base.css" />
    <link rel="stylesheet" type="text/css" href="Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery.spritely-0.6.js"></script>
    <script type="text/javascript" src="Scripts/chur.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Styles/login.css" />
    <script type="text/javascript">
    //刷新验证码
    function reloadImage(){
    	document.getElementById("identity").src="checkCode?ts"+ new Date().getTime();
    }
    </script>
  </head>
  
 <body>
    <div id="clouds" class="stage"></div>
    <div class="loginmain">
    </div>
<form action="login" method="post" id="loginform">
    <div class="row-fluid">
        <h1>教师年度工作填报系统</h1>
        <p>
            <label>帐&nbsp;&nbsp;&nbsp;号：<input type="text" name="usercode" id="usercode" /></label>
        </p>
        <p>
            <label>密&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" id="password" /></label>
        </p>
       <p class="pcode">
            <label>验证码：<input type="text" id="code" name="checkcode"/>
                <img src="checkCode" alt="验证码" title="点击更换" id="identity" onclick="reloadImage()"/></label>
        </p>
        
        <p class="tip">&nbsp;</p>
        <input type="submit" value=" 登 录 " class="btn btn-primary btn-large login" />
        &nbsp;&nbsp;&nbsp;<input type="reset" value=" 重 置 " class="btn btn-large" />
    </div>
</form>
</body>
</html>
