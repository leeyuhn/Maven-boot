<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	function checkPrice(){
		var price = $("#sale").val();
		var maxPrice = $(".price")[0].innerHTML;
		if(parseInt(price)<=parseInt(maxPrice)||price==''){
			$("#errMessage").html("不能低于最高竞拍价");
			return false;
		}else{
			$("#errMessage").html("可以竞拍");
			return true;
		}
	}
	
	function sub(){
		return checkPrice();
	}
</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${auction.name}</li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${auction.desc}</li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno"><fmt:formatDate value="${auction.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno"><fmt:formatDate value="${auction.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno">${auction.startPrice}</li>
      </ul>
  </div>
  <div class="rg borders"><img src="${pageContext.request.contextPath}/images/${auction.pic}" width="270" height="185" alt="" /></div>
  <div class="cl"></div>
  <div class="top10 salebd">
  <form action="${pageContext.request.contextPath}/record/add" method="post" onsubmit="return sub()">
  <input name="auctionId" type="hidden" value="${auction.id}"/>
  <input name="userId" type="hidden" value="${sessionScope.user.id}"/>
       <p>
       <label for="sale">出价：</label>
       <input type="text"  class="inputwd" id="sale" value="" name="auctionPrice" onblur="checkPrice()"/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       </p>
       <p id="errMessage" class="f14 red"></p>
       </form>
  </div>
  <div class="top10">
	
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input name="" type="button" value="返回列表" class="spbg buttombg f14" />
  </div>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <c:forEach items="${reList}" varStatus="sta" var="re">
      <c:if test="${sta.index%2==0}"><ul class="rows"></c:if>
  		  <c:if test="${sta.index%2!=0}"><ul class="rows even"></c:if>
        <li><fmt:formatDate value="${re.time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
        <li class="price">${re.price}</li>
        <li class="borderno">${re.username}</li>
      </ul>
      </c:forEach>
    </div>
    </div>
<!-- main end-->
  </div>
</body>
</html>
