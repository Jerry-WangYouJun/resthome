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
            $("#roomListForm").submit();
        }


        function editInit(motion) {
            if (motion == "add") {
                $("#myModalLabel").html("新增");
                $("#iframeDialog").attr("src", "${basePath}/room/addInit");
            } else if (motion == "edit") {
                $("#myModalLabel").html("修改人员");
               // var selectedChks = $(".main-list-cont").find('input[type="checkbox"][id^="chkroomId"]:checked');
	             var id = getChecked();
	             if(id > 0){
	                $("#iframeDialog").attr("src", "${basePath}/room/updateInit?id=" + id);
	             }else{
	            	 return false;
	             }
            }else if(motion == "delete"){
            	var id = getChecked();
	             if(id > 0){
	            	 window.location.href= "${basePath}/room/delete?id=" + id;
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
                path = "${basePath }/room/edit";
                var roomForm = window.frames["iframeDialog"].document.getElementById("roomForm");
                roomForm.action = path;
                roomForm.submit();
            }
        }
        
        function getChecked(){
    		var id;
    		var checkTotal = 0;
    		$("input[type=checkbox]").each(function() {
    			if (this.checked) {
    				id = $(this).val();
    				checkTotal++;
    			}
    		});
    		if (checkTotal == 0) {
    			alert("请选中一条数据！");
    			return 0;
    		} else if (checkTotal > 1) {
    			alert("只能选择一条数据！");
    			return 0;
    		}
    		return id ;
    	}
        //关闭Modal框
        function closeModal() {
            $("#myModal").modal('hide');
        }
        
        function clearData(){
        	$("#roomcode").val("");
        	$("#bednum").val("");
        	$("#area").val("");
        }
    </script>
</head>
<body>
<!-- 中间开始 -->

<div class="main">
    <form action="${basePath}/room/query" method="POST" id="roomListForm">
        <input type="hidden" id="hidEditMotion"  />
        <div class="main-right">
            <div class="content">
            	<p class="content-top">
						<span>房间编号</span><input type="text" id = "roomcode"  name="roomcode" value= "${query.roomcode}"/>
						<span>床位数</span><input type="text" id = "bednum"  name="bednum" value= "${query.bednum}"/>
						<span>院区</span><input type="text" id = "area"  name="area" value= "${query.area}"/>
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
                                <td width="25%">房间编号</td>
                                <td width="20%">床位数</td>
                                <td width="20%">院区</td>
                                <td width="30%">备注</td>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div class="main-list-cont">
                        <table width="915px" cellspacing="0" cellpadding="0">
                            <tbody>
								<c:forEach items="${ roomList}" var = "room">
									<tr>
									 <c:set var="roomId" value = "${room.id }" />
											<td width='5%'>
												<input type='checkbox' id='chkroom${roomId}' name='chkroomId' value='${room.id}'  />
											</td>
											<td width='25%'>
												${room.roomcode}
											</td>
											<td width='20%'>${room.bednum}</td>
											<td width='20%'>${room.area}</td>
											<td width='30%'>${room.description}</td>
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