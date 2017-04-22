<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="css/styles.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${basePath}/js/jquery/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
			function toLogin(){
				 top.location.href = "${basePath}/UserServlet?action=logout";
			}
</script>
<div class="base">
		<!-- 头部开始 -->

		<div class="top">
			<a class="logo" href="javascript:void(0)"> <img
				src="images/index/logo_01.png" />
			</a> <span class="top-name">智能制造系统</span>
			<a  onclick="toLogin()" style="float:right;height:100px;width:100px;margin-top:25px;color:#fff;"> 注销
			</a>
		</div>
		<div class="top-line"></div>
</div>