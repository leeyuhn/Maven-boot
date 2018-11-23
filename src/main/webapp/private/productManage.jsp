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
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <div class="forms">
  <form action="${pageContext.request.contextPath}/auction/getAll" method="post">
    <label for="name">名称</label>
    <input name="name" type="text" class="nwinput" id="name" value="${auction.name}"/>
    <label for="names">描述</label>
    <input name="desc" type="text" id="names" class="nwinput" value="${auction.desc}"/>
    <label for="time">开始时间</label>
    <input name="startTime" type="text" id="time" class="nwinput" value="${auction.startTime}"/>
    <label for="end-time">结束时间</label>
    <input name="endTime" type="text" id="end-time" class="nwinput" value="${auction.endTime}"/>
    <label for="price">起拍价</label>
    <input name="startPrice" type="text" id="price" class="nwinput" value="${auction.startPrice}"/>
    <input name="" type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
   <a href="${pageContext.request.contextPath}/private/productAdd.jsp"> <input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb"/> </a>
    </form>
  </div>
  
  
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
  	<c:forEach items="${pageInfo.list}" var="auction" varStatus="sta">
  		<c:if test="${sta.index%2==0}"><ul class="rows"></c:if>
  		  <c:if test="${sta.index%2!=0}"><ul class="rows even"></c:if>
        <li><a href="国书" title="">${auction.name}</a></li>
        <li class="list-wd">${auction.desc}</li>
        <li><fmt:formatDate value="${auction.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
        <li><fmt:formatDate value="${auction.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
        <li>${auction.startPrice}</li>
        <li class="borderno red">
       <c:if test="${sessionScope.user.isAdmin==0}"> <a href="${pageContext.request.contextPath}/record/getAll?id=${auction.id}">竞拍</a></c:if>
		 <c:if test="${sessionScope.user.isAdmin==1}">
		 <a href="${pageContext.request.contextPath}/auction/getOne?id=${auction.id}" title="修改" onclick="update(${auction.id})">修改</a>|
          <a href="${pageContext.request.contextPath}/auction/delete?id=${auction.id}" title="删除" onclick="dele(${auction.id})">删除</a>
          </c:if> 
        </li>
      </ul>
	</c:forEach>

      <!--显示分页信息-->
      <div class="row">
          <!--文字信息-->
          <div class="col-md-6">
              当前第 ${pageInfo.pageNum} 页.总共 ${pageInfo.pages} 页.一共 ${pageInfo.total} 条记录
          </div>

          <!--点击分页-->
          <div class="col-md-6">
              <nav aria-label="Page navigation">
                  <ul class="pagination">

                      <li><a href="${pageContext.request.contextPath}/auction/getAll.do?curPage=1">首页</a></li>

                      <!--上一页-->
                      <li>
                          <c:if test="${pageInfo.hasPreviousPage}">
                              <a href="${pageContext.request.contextPath}/auction/getAll.do?curPage=${pageInfo.pageNum-1}" aria-label="Previous">
                                  <span aria-hidden="true">上一页</span>
                              </a>
                          </c:if>
                      </li>

                      <!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->
                      <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                          <c:if test="${page_num == pageInfo.pageNum}">
                              <li class="active"><a href="#">${page_num}</a></li>
                          </c:if>
                          <c:if test="${page_num != pageInfo.pageNum}">
                              <li><a href="${pageContext.request.contextPath}/auction/getAll.do?curPage=${page_num}">${page_num}</a></li>
                          </c:if>
                      </c:forEach>

                      <!--下一页-->
                      <li>
                          <c:if test="${pageInfo.hasNextPage}">
                              <a href="${pageContext.request.contextPath}/auction/getAll.do?curPage=${pageInfo.pageNum+1}"
                                 aria-label="Next">
                                  <span aria-hidden="true">下一页</span>
                              </a>
                          </c:if>
                      </li>

                      <li><a href="${pageContext.request.contextPath}/auction/getAll.do?curPage=${pageInfo.pages}">尾页</a></li>
                  </ul>
              </nav>
          </div>

      </div>
 
  </div>
  <script>
   function update(id){
	   
	   if(confirm("你真的确认要修改吗？请确认")){
	   
	       window.location="${pageContext.request.contextPath}/auction/getOne?id="+id;
	       
		 }
		 
	   };
	   function dele(id){
		   if(confirm("你真的确认要删除吗？请确认")){
		   
		       window.location="${pageContext.request.contextPath}/auction/delete?id="+id;
		   
			   }
			   
		   }
  </script>
<!-- main end-->
</div>
</body>
</html>
