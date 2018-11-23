<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	function img(){
		$("#img").prop("src","${pageContext.request.contextPath}/getKaptcha.do?t="+new Date().getTime());
	}
</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="${pageContext.request.contextPath}/login" method="post" target='_blank'>
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label><input type="text" class="inputh" value="常用邮箱" id="name" name="name"/></dd>
        <dd><label for="password">密 码：</label><input type="text" class="inputh" value="密码" id="password" name="password"/></dd>
        <dd>
           <label class="lf" for="password">验证码：</label>
           <input type="text" class="inputh inputs lf" value="验证码" name="kaptcha"/>
           <span class="wordp lf"><img src="${pageContext.request.contextPath}/getKaptcha" width="96" height="27" alt="" id="img"/></span>
           <span class="blues lf"><a href="javascript:void(0)" title="" onclick="img()">看不清</a></span>
        </dd>
        <dd>
           <input name=""  type="checkbox" id="rem_u"/>
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <a href="${pageContext.request.contextPath}/register.jsp"><input name="" type="button" value="注 册" class="spbg buttombg f14 lf" /></a>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       <span style=" font-size: 18px;color: red; font-weight: bolder; " >${requestScope.errorMessage }</span>
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
