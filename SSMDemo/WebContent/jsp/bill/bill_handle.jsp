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
				$("#billCode").change(function(){
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
									$("#billCode").val("");
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
            $("#billCode").val("");
            $("#birthday").val("");
            $("#married").val("");
            $("#job").val("");
            $("#mobile").val("");
            $("#billName").val("");
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
				

<form id="billForm" action="" method="POST" target="_parent">
    <input type="hidden" name="id" value="${ bill.id }"/>
	<div id="base" class="box clear box-news-pad">
      <div class="box-header clear">
        <ul class="add-p">
          <li><span>姓名</span><input type="text" id="cname" name="cname"
                       value="${bill.cname}"/></li>
          <li><span>流水号</span><input type="text" id="billno" name="billno"
                       value="${bill.billno}"/></li>
          <li><span>余额</span><input type="text" id="restmoney" name="restmoney"
                       value="${bill.restmoney}"/></li>
        </ul>
        <ul class="add-p">
          <li><span>费用流向</span><input type="text" id="paytype" name="paytype"
                          value='${bill.paytype }'/>
          </li>
           <li><span>费用类型</span><input type="text" id="acounttype" name="acounttype"
                          value='${bill.acounttype }'/>
          </li>
        </ul>
         <ul class="add-a">
          <li><span>备注</span>
         	  <textarea class="longer"  id="description" name="description" > 
                         ${bill.description }
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


