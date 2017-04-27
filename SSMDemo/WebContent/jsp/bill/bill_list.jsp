<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>床位管理</title>
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
            $("#billListForm").submit();
        }


        function editInit(motion) {
            if (motion == "add") {
                $("#myModalLabel").html("新增");
                $("#iframeDialog").attr("src", "${basePath}/bill/addInit");
            } else if (motion == "edit") {
                $("#myModalLabel").html("修改人员");
               // var selectedChks = $(".main-list-cont").find('input[type="checkbox"][id^="chkbillId"]:checked');
	             var id = getChecked();
	             if(id > 0){
	                $("#iframeDialog").attr("src", "${basePath}/bill/updateInit?id=" + id);
	             }else{
	            	 return false;
	             }
            }else if(motion == "delete"){
            	var id = getChecked();
	             if(id > 0){
	            	 window.location.href= "${basePath}/bill/delete?id=" + id;
	             }else{
	            	 return false;
	             }
            }else {
                return false;
            }
            //设置提交按钮的方向
            $("#hidEditMotion").val(motion);
            $("#myModal").modal({backdrop: "static"});
        }


        function doSubmit(motion) {
            if (motion.length > 0) {
                path = "${basePath }/bill/edit";
                var billForm = window.frames["iframeDialog"].document.getElementById("billForm");
                billForm.action = path;
                billForm.submit();
            }
        }
        
        //关闭Modal框
        function closeModal() {
            $("#myModal").modal('hide');
        }
        
        function clearData(){
        	$("#cname").val("");
        	$("#paytype").val("");
        	$("#acounttype").val("");
        }
    </script>
</head>
<body>
<!-- 中间开始 -->

<div class="main">
    <form action="${basePath}/bill/query" method="POST" id="billListForm">
        <input type="hidden" id="hidEditMotion"  />
        <div class="main-right">
            <div class="content">
            	<p class="content-top">
						<span>姓名</span><input type="text" id = "cname"  name="cname" value= "${query.cname}"/>
						<span>费用流向</span><input type="text" id = "paytype"  name="paytype" value= "${query.paytype}"/>
						<span>流水号</span><input type="text" id = "acounttype"  name="billno" value= "${query.billno}"/>
						   <input class="bta" type="button" value="查询" onclick="query()"/>
						   <input class="btd" type="button" value="清除" onclick="clearData()"/>
				</p>
                <div class="main-button">
                    <input class="bta" type="button" value="新增" onclick="editInit('add');"/>
                    <input class="btc" type="button" value="修改" onclick="editInit('edit');"/>
                    <input class="btd" type="button" value="删除" onclick="editInit('delete');"/>
                </div>

                <div class="main-list">
                    <div class="main-list-top">
                        <table width="915px" cellspacing="0" cellpadding="0">
                            <thead>
                            <tr align="center">
                                <td width="5%"></td>
                                <td width="25%">姓名</td>
                                <td width="20%">流水号</td>
                                <td width="20%">余额</td>
                                <td width="20%">费用流向</td>
                                <td width="20%">费用类型</td>
                                <td width="30%">备注</td>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div class="main-list-cont">
                        <table width="915px" cellspacing="0" cellpadding="0">
                            <tbody>
								<c:forEach items="${ billList}" var = "bill">
									<tr>
									 <c:set var="billId" value = "${bill.id }" />
											<td width='5%'>
												<input type='checkbox' id='chkbill${billId}' name='chkbillId' value='${bill.id}'  />
											</td>
											<td width='25%'>
												${bill.cname}
											</td>
											<td width='20%'>${bill.billno}</td>
											<td width='20%'>${bill.restmoney}</td>
											<td width='20%'>${bill.paytype}</td>
											<td width='20%'>${bill.acounttype}</td>
											<td width='30%'>${bill.description}</td>
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