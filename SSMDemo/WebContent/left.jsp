<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<head>
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="css/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${basePath}/js/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        body a {
            color: #065396;
        }

        body a:hover {
            text-decoration: none;
        }
    </style>
</head>
<body>
<!-- 引用 css/styles.css -->
<div class="main-left">
    <ul class="menu_list">
        <li data-label="Home" id="main" class="on">
            <p></p><span>主页</span>
        </li>
        <li data-label="Publ" id="order">
            <p></p><span><a href="${basePath}/payment/query" target="mainFrame">缴费记录</a></span>
        </li>
        <li data-label="Publ" id="prodPlan">
            <p></p><span><a href="${basePath}/bill/query" target="mainFrame">流水账单</a></span>
        </li>
        <li data-label="Publ" id="prodTrack">
            <p></p><span><a href="${basePath}/visit/query" target="mainFrame">来访记录</a></span>
        </li>
        <li data-label="Publ" id="prodBoard">
            <p></p><span><a href="${basePath}/move/query" target="mainFrame">转房记录</a></span>
        </li>
        <li data-label="Publ" id="prodBoard">
            <p></p><span><a href="${basePath}/leave/query" target="mainFrame">离院管理</a></span>
        </li>
        <li data-label="Publ" id="prodBoard">
            <p></p><span><a href="${basePath}/customer/report" target="mainFrame">床位报表</a></span>
        </li>
        <li data-label="Publ">
            <p></p><span>基础信息</span>
            <div class="menu_list_main">
                <ul class="menu_list_in">
                    <li id="u17">
                        <p></p><span><a href="${basePath}/customer/query" target="mainFrame">老人信息</a></span>
                    </li>
                    <li data-label="Events" id="u19">
                        <p></p><span><a href="${basePath}/bed/query" target="mainFrame">床位信息</a></span>
                    </li>
                    <li data-label="Events" id="u21">
                        <p></p><span><a href="${basePath}/room/query" target="mainFrame">房间信息</a></span>
                    </li>
                </ul>
            </div>
        </li>
        
    </ul>
</div>

</body>