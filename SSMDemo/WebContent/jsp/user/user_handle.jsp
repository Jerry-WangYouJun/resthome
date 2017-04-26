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
				$("#customerCode").change(function(){
					checkRepeat(this);
				});
    	});
    	
    	function checkRepeat(obj){
    		var column = obj.id ;
    		var value = obj.value;
    		if(value != ""){
	    		 $.ajax({
					type : "POST",
					url : "${basePath}/customerServlet?action=checkRepeat&column=" + column + "&value=" + value,
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
									$("#customerCode").val("");
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
            $("#customerCode").val("");
            $("#birthday").val("");
            $("#married").val("");
            $("#job").val("");
            $("#mobile").val("");
            $("#customerName").val("");
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
				

<form id="customerForm" action="" method="POST" target="_parent">
    <input type="hidden" name="id" value="${customer.id}"/>
	<div id="base" class="box clear box-news-pad">
      <div class="box-header clear">
        <ul class="add-p">
          <li><span>姓名</span><input type="text" id="cname" name="cname"
                       value="${customer.cname}"/></li>
         <!--  <li class="box_warning" ><p style="color:red"> *必填 </p> -->
          <li><span>出生日期</span><input type="date" id="birthday" name="birthday"
                       value="${customer.birthday }"/></li>
          <li><span>护理级别</span><input type="text" id="level" name="level"
                       value="${customer.level }"/></li>
          <li><span>户籍</span><input type="text" id="address" name="address"
                       value="${customer.address }"/></li>
          <li><span>入院时间</span><input type="date" id="indate" name="indate"
                       value="${customer.indate }"/></li>
          <li><span>亲属姓名</span><input type="text" id="rname" name="rname"
                       value="${customer.rname }"/></li>
          <li><span>亲属住址</span><input type="text" id="raddress" name="raddress"
                       value="${customer.raddress }"/></li>
        </ul>
        <ul class="add-p" >
          <li><span>性别</span>
		          <input type="radio"  class="radio_cls"  name="sex" id="sex1" value="1" ><span >女</span>
          		  <input type="radio"  class="radio_cls" style = "margin-left:10px"name="sex" id="sex2" value="2"><span >男</span>
          </li>
          <!-- <li class="box_warning" ><p style="color:red"> *必填 </p> -->
          <li><span>身份证号</span><input type="text" id="idcard" name="idcard"
                       value="${customer.idcard }"/></li>
          <li><span style="float:left ">责任护理员</span>
         		 <input type="text" id="nurse" name="nurse"  value='${customer.nurse }'/> 
          </li>
          <li><span>床位</span><input type="text" id="bedId" name="bedId"
                       value="${customer.bedId }"/>
          </li>
          <li><span>出院日期</span>
          		<input type="date" id="outdate" name="outdate"
                       value="${customer.outdate }"/>
          </li>
          <li><span>与老人关系</span><input type="text" id="relation" name="relation"
                       value="${customer.relation }"/>
          </li>
          <li><span>亲属电话</span><input type="text" id="rphone" name="rphone"
                       value="${customer.rphone }"/>
          </li>
        </ul>
      </div>
      <div class="box-btn">
        <div class="box-btn-add">
        </div>
        <div class="box-btn-add-l">
          <input class="btc" type="button" value="重置" onclick="reset();"/>
          <input class="btd" type="button" value="取消" onclick="parent.closeModal();"/>
            <input class="bta" id="btnSubmit" type="button" value="保存" onclick="doSubmit();" />
        </div>
      </div>
    </div>
</form>
</body>
</html>


