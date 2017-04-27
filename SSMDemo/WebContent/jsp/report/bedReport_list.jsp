<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>产品管理</title>
    <link href="${basePath}/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="${basePath}/css/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="${basePath}/js/jquery/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/base.js"></script>
    <style type="text/css">
        /*html{*/
        /*display:block;*/
        /*}*/
    </style>
    <script type="text/javascript">
        $(function () {
            $(".main-list-cont tr:odd").css("background", "#e8f3ff");
        });

        function query() {
            $("#customerListForm").submit();
        }

        function editInit(motion) {
            if (motion == "add") {
                $("#myModalLabel").html("新增老人信息");
                $("#iframeDialog").attr("src", "${basePath}/customer/add");
            } else if (motion == "edit") {
                $("#myModalLabel").html("修改老人信息");
                var id = getChecked();
	             if(id > 0){
	            	 	$("#iframeDialog").attr("src", "${basePath}/customer/updateInit?id=" + id );
		             }else{
		            	 return false;
		             }
            }else if(motion == "delete"){
            	var id = getChecked();
	             if(id > 0){
	            	 window.location.href= "${basePath}/customer/delete?id=" + id;
	             }else{
	            	 return false;
	             }
            }
            else {
                return false;
            }

            //设置提交按钮的方向
            $("#hidEditMotion").val(motion);
            $("#myModal").modal({backdrop: "static"});


        }


        function doSubmit(motion) {
            if (motion.length > 0) {
                path = "${basePath}/customer/edit";
                var customerForm = window.frames["iframeDialog"].document.getElementById("customerForm");
                customerForm.action = path;
                customerForm.submit();
            }
        }
	
		
        //关闭Modal框
        function closeModal() {
            $("#myModal").modal('hide');
        }

    </script>

</head>
<body>

<!-- 中间开始 -->

<div class="main">
    <form action="${basePath}/customer/query" method="POST" id="customerListForm">
        <input type="hidden" id="hidEditMotion"  />
        <div class="main-right">
            <div class="content">
                <div class="main-list">
                    <div class="main-list-top">
                        <table width="915px" cellspacing="0" cellpadding="0">
                            <thead>
                            <tr align="center">
                                <td width="30px"></td>
                                <td width="150">老人姓名</td>
                                <td width="150">床号</td>
                                <td width="150">房间号</td>
                                <td width="150">院区</td>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div class="main-list-cont">
                        <table width="915px" cellspacing="0" cellpadding="0">
                            <tbody>
								<c:forEach items="${ customerList}" var = "customer">
									<tr>
									 <c:set var="customerId" value = "${customer.id }" />
											<td width='30px'>
												<input type='checkbox' id='chkcustomer${customerId}' name='chkcustomerId' value='${customer.id}'/>
											</td>
											<td width='150px'>
												${customer.cname}
											</td>
											<td width='150px'>${customer.bedId}</td>
											<td width='150px'>
												${customer.bed.room}
											</td>
											<td width='150px'>${customer.bed.area}</td>
									</tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </form>
</div>

<%--<!-- 底部开始 -->
<div class="bottom">©青岛英谷教育科技股份有限公司 版权所有 电话：0532-88979016</div>
<!-- 底部结束 -->--%>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog"   style="width:900px;">
        <div class="modal-content">
            <div align="center" style="margin:0 0 0 0;padding:0;">
                <iframe frameborder="0" width="100%" height="450px;" id="iframeDialog" name="iframeDialog"
                        marginwidth="0" marginheight="0" frameborder="0" scrolling="no"
                        src=""></iframe>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>