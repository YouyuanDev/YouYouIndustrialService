<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>留言信息管理</title>
    <link rel="stylesheet" type="text/css" href="../easyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
    <link rel="stylesheet" href="../css/common.css"/>
    <script src="../easyui/jquery.min.js" type="text/javascript"></script>
    <script src="../js/common.js" type="text/javascript"></script>
    <script src="../js/jquery.i18n.properties-1.0.9.js" type="text/javascript"></script>
    <script src="../js/language.js" type="text/javascript"></script>
    <style type="text/css" >
        .b3{border-style:inset;border-width:thin;}

    </style>


    <script type="text/javascript">
        var url;

        function formatterdate(value,row,index){
            return getDate1(value);
        }

        // 日期格式为 2017-02-20 22:00:00
        function myformatter2(date){
            return getDate1(date);
        }
        // 日期格式为 2017-02-20 22:00:00
        function myparser2(s) {
            if (!s) return new Date();
            return new Date(Date.parse(s));
        }
        $(function () {

            $('#messageDialog').dialog({
                onClose:function () {
                    var type=$('#hlcancelBtn').attr('operationtype');
                    if(type=="add"){

                    }else{
                        clearFormLabel();
                    }
                }
            });
            $('.mini-buttonedit .mini-buttonedit-input').css('width','150px');

        });



        function addMessage(){
            $('#hlcancelBtn').attr('operationtype','add');
            $('#messageDialog').dialog('open').dialog('setTitle','新增');
            $('#messageForm').form('clear');
            $("input[name='id']").val('0');
            url="/MessageOP/saveMessage.action";
        }
        function delMessage() {
            var row = $('#messageDatagrids').datagrid('getSelections');
            if(row.length>0){
                var idArr=[];
                for (var i=0;i<row.length;i++){
                    idArr.push(row[i].id);
                }
                var idArrs=idArr.join(',');
                $.messager.confirm('系统提示',"您确定要删除这<font color=red>"+idArr.length+ "</font>条数据吗？",function (r) {
                    if(r){
                        $.post(
                            "/MessageOP/delMessage.action",
                            {"hlparam":idArrs},function (data) {
                                if(data.success){
                                    $("#messageDatagrids").datagrid("reload");
                                }
                                hlAlertFour(data.message);
                            },"json");
                    }
                });

            }else{
                hlAlertOne();
            }
        }
        function editMessage() {
            $('#hlcancelBtn').attr('operationtype','edit');
            var row = $('#messageDatagrids').datagrid('getSelected');
            if(row){
                $('#messageDialog').dialog('open').dialog('setTitle','修改');
                row.message_time=getDate1(row.message_time);
                $('#messageForm').form('load',row);

                url="/MessageOP/saveMessage.action?id="+row.id;

            }else{
                hlAlertTwo();
            }
        }

        function DoSearch() {
            $('#messageDatagrids').datagrid('load',{
            });
        }

        function FormSubmit() {
            $('#messageForm').form('submit',{
                url:url,
                onSubmit:function () {
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.success){
                        $('#messageDialog').dialog('close');
                        $('#messageDatagrids').datagrid('reload');
                        clearFormLabel();
                    }
                    hlAlertFour(result.message);
                },
                error:function () {
                    hlAlertThree();
                }
            });
        }
        function CancelSubmit() {
            $('#messageDialog').dialog('close');
        }

        function  clearFormLabel() {
            $('#messageForm').form('clear');
        }
    </script>
</head>
<body>
<fieldset class="b3" style="padding:10px;margin:10px;">
    <legend> <h3><b style="color: orange" >|&nbsp;</b><span class="i18n1" name="messagerecord">留言板</span></h3></legend>
    <div  style="margin-top:5px;">
        <table class="easyui-datagrid" id="messageDatagrids" url="/MessageOP/getMessageByLike.action" striped="true" loadMsg="正在加载中。。。" textField="text" pageSize="20" fitColumns="true" pagination="true" toolbar="#messageTb" style="max-height:400px;overflow-y: scroll;">
            <thead>
            <tr>
                <th data-options="field:'ck',checkbox:true"></th>
                <th field="id" align="center" width="100" class="i18n1" name="id">流水号</th>
                <th field="client_name" align="center" width="100"   name="client_name">客户姓名</th>
                <th field="company" align="center" width="100"   name="company" >公司名称</th>
                <th field="message" align="center" width="100"  name="message">留言信息</th>
                <th field="message_time" align="center" width="100"  name="message_time" data-options="formatter:formatterdate">日期</th>
                <th field="email" align="center" width="100"  name="email">邮箱</th>
                <th field="phone_no" align="center" width="100"  name="phone_no">邮箱</th>
                <th field="is_read" align="center" width="100"  name="is_read">已读</th>
            </tr>
            </thead>
        </table>

    </div>
</fieldset>
<fieldset class="b3" style="padding:10px;margin:10px;">
    <legend> <h3><b style="color: orange" >|&nbsp;</b><span class="i18n1" name="visitrecord">访问记录</span></h3></legend>
    <div  style="margin-top:5px;">
        <table class="easyui-datagrid" id="visitDatagrids" url="/WebVisit/getWebVisitByLike.action" striped="true" loadMsg="正在加载中。。。" textField="text" pageSize="20" fitColumns="true" pagination="true" toolbar="" style="max-height:300px;overflow-y: scroll;">
            <thead>
            <tr>
                <th field="id" align="center" width="100" class="i18n1" name="id"></th>
                <th field="visitor_ip" align="center" width="100"   name="visitorip"></th>
                <th field="visit_time" align="center" width="100"  name="visittime" data-options="formatter:formatterdate">日期</th>
            </tr>
            </thead>
        </table>
    </div>
</fieldset>

<!--工具栏-->
<div id="messageTb" style="padding:10px;">
    <a href="#" class="easyui-linkbutton" plain="true" data-options="iconCls:'icon-search'" onclick="DoSearch()">Search</a>
    <div style="float:right">
        <a href="#" id="addMessageLinkBtn" class="easyui-linkbutton i18n1" name="add" data-options="iconCls:'icon-add',plain:true" onclick="addMessage()">添加</a>
        <a href="#" id="editMessageLinkBtn" class="easyui-linkbutton i18n1" name="edit" data-options="iconCls:'icon-edit',plain:true" onclick="editMessage()">修改</a>
        <a href="#" id="deltMessageLinkBtn" class="easyui-linkbutton i18n1" name="delete" data-options="iconCls:'icon-remove',plain:true" onclick="delMessage()">删除</a>
    </div>
</div>


<!--添加、修改框-->
<div id="messageDialog" class="easyui-dialog" data-options="title:'添加',modal:true"  closed="true" buttons="#dlg-buttons" style="display: none;padding:5px;width:950px;height:auto;">
    <form id="messageForm" method="post">


        <fieldset style="width:900px;border:solid 1px #aaa;margin-top:8px;position:relative;">
            <legend>角色信息</legend>

            <table class="ht-table">
                <tr>
                    <td class="i18n1" name="id">流水号</td>
                    <td colspan="5"><input class="easyui-textbox" type="text" name="id" readonly="true" value="0"/></td>

                </tr>
                <tr>
                    <td class="i18n1" name="clientname"></td>
                    <td colspan="2" >
                        <input class="easyui-textbox" type="text" value="" name="client_name" />
                    </td>
                    <td class="i18n1" name="company"></td>
                    <td colspan="2" >
                        <input class="easyui-textbox" type="text" value="" name="company" />
                    </td>
                </tr>
                <tr>
                    <td class="i18n1" name="messagetime"></td>
                    <td colspan="2" >
                        <input class="easyui-datetimebox"  type="text" value="" name="message_time" data-options="formatter:myformatter2,parser:myparser2"/>
                    </td>
                    <td class="i18n1" name="isread"></td>
                    <td colspan="2">
                        <input class="easyui-textbox" name="is_read" type="text" >
                    </td>

                </tr>
                <tr>
                    <td class="i18n1" name="phoneno"></td>
                    <td colspan="2" >
                        <input class="easyui-textbox" type="text" value="" name="phone_no" />
                    </td>
                    <td class="i18n1" name="email"></td>
                    <td colspan="2">
                        <input class="easyui-textbox" name="is_read" type="email">
                    </td>
                </tr>
                <tr>
                    <td class="i18n1" name="message"></td>
                    <td colspan="4">
                        <input class="easyui-textbox" data-options="multiline:true" name="message" type="text" style="width:90%;">
                    </td>
                </tr>

            </table>



        </fieldset>
    </form>


</div>
<div id="dlg-buttons" align="center" style="width:900px;">
    <a href="#" class="easyui-linkbutton" iconCls="icon-save" onclick="FormSubmit()">Save</a>
    <a href="#" class="easyui-linkbutton" id="hlcancelBtn" operationtype="add" iconCls="icon-cancel" onclick="CancelSubmit()">Cancel</a>
</div>


<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
</body>
</html>
<script type="text/javascript">
    hlLanguage("../i18n/");

</script>
