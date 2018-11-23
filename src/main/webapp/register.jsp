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
	function checkUserName(){
		if($("#userName").val().length<6){
			$("#userNameSpan").html("用户名要求不低于6个字符");
			return false;
		}else{
			$("#userNameSpan").html("");
			return true;
		}
	}
	
	function checkPwd(){
		if($("#pwd").val().length<6){
			$("#pwdSpan").html("密码要求不低于6个字符");
			return false;
		}else{
			$("#pwdSpan").html("");
			return true;
		}
	}
	
	function checkCard(){
		if($("#cardId").val().length==0){
			$("#cardIdSpan").html("身份证号必填");
			return false;
		}else{
			$("#cardIdSpan").html("");
			return true;
		}
	}
	
	function checkPhone(){
		if($("#phone").val().length==0){
			$("#phoneSpan").html("电话号码必填");
			return false;
		}
	}
	
	function img(){
		$("#img").prop("src","${pageContext.request.contextPath}/getKaptcha.do?a="+Math.random());
	}
	
</script>
</head>

<body>
<div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
        <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="return checkForm()">
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input type="text" class="inputh lf" name="name"  id="userName" onblur="checkUserName()" />
             <div class="lf red laba" id="userNameSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input type="text" class="inputh lf" name="password" id="pwd" onblur="checkPwd()"/>
              <div class="lf red laba" id="pwdSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input type="text" class="inputh lf" name="cardNo" id="cardId" onblur="checkCard()"/>
              <div class="lf red laba" id="cardIdSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input type="text" class="inputh lf" name="tel" id="phone" onblur="checkPhone()" />
              <div class="lf red laba" id="phoneSpan"></div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input type="text" class="inputh lf" name="address" id="address" />
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input type="text" class="inputh lf" name="postNumber" />
            </dd>
            <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input type="text" class="inputh inputs lf" value="验证码" name="kaptcha"/>
          	  <span class="wordp lf"><img src="${pageContext.request.contextPath}/getKaptcha.do" width="96" height="27" alt="" id="img"/></span>
           	  <span class="blues lf"><a href="avascript:void(0)" title="" onclick="img()">看不清</a></span>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u"   />
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
          </dl>
          </form>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
 
</div>
</body>
</html>
