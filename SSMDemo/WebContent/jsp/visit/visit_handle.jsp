<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>

<html>
<head>

    <link href="${basePath}/css/styles.css" type="text/css" rel="stylesheet"/>
    <link href="${basePath}/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${basePath}/js/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
    <script src="${basePath}/js/base.js"></script>
    <style type="text/css">
        .table {
            font-size: 14px;
        }
        
        .box li.box_warning {
    list-style-type: none;
    height: 20px;
    position: relative;
}
.box li.box_warning p{
	width:120px;
	height:20px;
	right:20px;
	position: absolute;
	top:-10px;
}
    </style>
    <script type="text/javascript">
    	$(function(){
				/* $.ajax({
					type : "POST",
					url : "${basePath}/ProdPlanServlet?action=checkRepeat&loginName=workShop",
					datatype:"json",
					success : function(data) {
							
					}
				});  */ 
				$("#loginName").change(function(){
					checkRepeat(this);
				});
				$("#visitCode").change(function(){
					checkRepeat(this);
				});
    	});
    	
    	function checkRepeat(obj){
    		var column = obj.id ;
    		var value = obj.value;
    		if(value != ""){
	    		 $.ajax({
					type : "POST",
					url : "${basePath}/UserServlet?action=checkRepeat&column=" + column + "&value=" + value,
					datatype:"json",
					success : function(data) {
						var  m = eval( "(" + data + ")");
						console.info(m.total);
							if(m.total > 0){
								if(obj.id == "loginName"){
									alert("用户名重复！");
									$("#loginName").val("");
								}else{
									alert("用户编号重复！");
									$("#visitCode").val("");
								}
							}
					}
				 }); 
    		}
    	}

    	//重置
    	function reset() {
            $("#loginName").val("");
            $("#sex").val("");
            $("#nation").val("");
            $("#postion").val("");
            $("#deptName").val("");
            $("#visitCode").val("");
            $("#birthday").val("");
            $("#married").val("");
            $("#job").val("");
            $("#mobile").val("");
            $("#visitName").val("");
            $("#idNum").val("");
            $("#hireDate").val("");
            $("#email").val("");
            $("#description").html("");
        }
     	
    	function doSubmit(){
    		parent.doSubmit($('#hidEditMotion',parent.document).val());
    	}
    
    </script>
</head>

<body>

<script type="text/javascript">
</script>
				

<form id="visitForm" action="" method="POST" target="_parent">
    <input type="hidden" name="id" value="${ visit.id }"/>
	<div id="base" class="box clear box-news-pad">
      <div class="box-header clear">
        <ul class="add-p">
          <li><span>姓名</span><input type="text" id="cname" name="cname"
                       value="${visit.cname}"/></li>
          <li><span>来访时间</span><input type="date" id="startdate" name="startdate"
                       value="${visit.startdate}"/></li>
        </ul>
        <ul class="add-p">
           <li><span>来访者</span><input type="text" id="visit" name="visit"
                       value="${visit.visit}"/></li>
          <li><span>结束时间</span><input type="date" id="enddate" name="enddate"
                          value='${visit.enddate }'/>
          </li>
        </ul>
         <ul class="add-a">
          <li><span>备注</span>
         	  <textarea class="longer"  id="description" name="description" > 
                         ${visit.description }
              </textarea>
          </li>
        </ul>
      </div>
      <div class="box-btn">
        <div class="box-btn-add">
        </div>
        <div class="box-btn-add-l">
          <input class="btd" type="button" value="取消" onclick="parent.closeModal();"/>
          <input class="bta" id="btnSubmit" type="button" value="保存" onclick="doSubmit();" />
          <input class="btc" type="button" value="重置" onclick="reset();"/>
        </div>
      </div>
    </div>
</form>
</body>
</html>


