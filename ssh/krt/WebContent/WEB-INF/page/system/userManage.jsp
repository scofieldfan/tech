<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/ssi.tld" prefix="ssi"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户管理-列表</title>
<link href="<%=request.getContextPath()%>/styles/gzt_css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="<%=request.getContextPath()%>/js/control.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/commons.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/formcheck.js"></script>
</head>
<body>
<jsp:include page="/common/exception.jsp" flush="true" />
<html:form 	method="post" action="/user.do?operate=list">
<div class="weizhi">
<div class="weizhi_bj">用户管理</div>
<div class="weizhi_ss"><img id="controlSearchBtn" style="cursor:pointer" onclick="loadHiddenPage('<%=request.getContextPath()%>');" src="<%=request.getContextPath()%>/images/button_minus.gif" width="66" height="17" /></div>
</div>
<table border="0" cellspacing="0" cellpadding="0" class="table_chax" id="adSearch">
  <tr>
    <th width="12%">用户名：</th>
    <td width="20%"><html:text property="username" size="15" title="用户名"></html:text></td>
    <th width="12%">姓名：</th>
    <td width="21%"><html:text property="name" size="15" title="姓名"></html:text></td>
    <th width="11%"><input name="checks"  type="button" value="查询" onclick="check()"/></th>
    <td width="19%"></td>
    <th width="5%"></th>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="table_list">
  <tr>
    <th width="11%">用户信息列表</th>
    <th width="89%">
	<div>
	  <input name="toAdd" type="button" value="新增" onclick="toAdds()" />
      <input name="toModify" type="button" value="修改" onclick="tomodify()"/>
      <input name="restPassword" type="button" value="重置密码" onclick="resetPassword()"/>
	</div>
	</th>
  </tr>
  <tr>
    <td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" class="table_date" id="dataTable">
		  <tr>
			<th width="8%">请选择</th>
			<th width="12%">姓名</th>
			<th width="11%">用户名</th>
			<th width="8%">联系电话</th>
			<th width="11%">角色类型</th>
		  </tr>
		  <logic:present name="list">
							<logic:notEmpty name="list">
								<logic:iterate id="item" name="list" indexId="indexNo">
									<tr onmouseover="this.className='over'" onmouseout="this.className='out'" onclick="showInfo(<bean:write name="indexNo"/>,this);">
										<td><input
											type="radio" name="selectNos" id="radioId<bean:write name="indexNo"/>"
											value="<bean:write name="item" property="userId"/>,<bean:write name="item" property="username"/>"
											 /></td>
										<td><div><bean:write name="item" property="name" /></div></td>
										<td><div><bean:write name="item" property="username" /></div></td>
										<td><div><bean:write name="item" property="phone" /></div></td>
										<td><div><bean:write name="item" property="roleType" /></div></td>
								</logic:iterate>
							</logic:notEmpty>
						</logic:present>
		 		</table>
		 </td>
	</tr>
  <tr>
    <td height="40" colspan="2">
	<div>
					<logic:present name="list">
							<logic:empty name="list">
								<div style="text-align:center; height:30px; line-height:30px;">暂无记录！</div>
							</logic:empty>
					</logic:present>
					
					<ssi:page property="pageInfo"  action="/user.do?operate=list"/>
	</div>
	</td>
  </tr>
</table>
</html:form>
</body>
</html>
<script language="javascript">
	function check(){
		if(checkSubmit(document.userForm)){
		document.userForm.action="user.do?operate=list";
		userForm.submit();
		}
	}
	function toAdds(){
		document.userForm.action="user.do?operate=toAdd";
		document.userForm.submit();
	}
	function tomodify(){    
        if(isRadioChecked(userForm.selectNos))
        {
        document.userForm.action="user.do?operate=toUpdate";
        document.userForm.submit();
        }
        else
        {
            alert("请选择唯一的用户信息!");
        }
	}
	function resetPassword(){
       if(isRadioChecked(userForm.selectNos))
        {	if(confirm("确定重置该用户密码吗？")){
      		 document.userForm.action="user.do?operate=resetPassword";
			 userForm.submit();
			 }
        }
        else
        {
            alert("请选择唯一的用户信息！");
        }
	}
</script> 
