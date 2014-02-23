<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/ssi.tld" prefix="ssi"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>录入采购品种-修改</title>
<link href="<%=request.getContextPath()%>/styles/gzt_css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="<%=request.getContextPath()%>/js/commons.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/control.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/date/common.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/formcheck.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/livevalidation_standalone.js"></script>
</head>
<body>
<html:form method="post" action="/MedicineCgAction.do">
<input type="hidden" name="operate" />
<html:hidden property="cineCgBO.cgId"/>
<div class="weizhi">
	<div class="weizhi_bj">修改录入采购品种</div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table_add">
  <tr>
   <th width="19%">品名：</th>
    <td width="81%">
         <bean:write name="cineCgBO" property="medicineBO.medicineName"/> 
   </td>
  </tr>
 
  <tr>
    <th>计划采购数量：</th>
    <td><html:text property="cineCgBO.cgQty" styleId="Y_int_cineCgBO.cgQty" ></html:text>
		
	</td>
  </tr>
  <tr>
    <th>送样品截止时间：</th>
    <td>
		<html:text property="cineCgBO.reachDate"  readonly="true" size="6" /><img
								src="<%=request.getContextPath()%>/images/calendar.gif" width="16"
								height="15"
								onClick="Container_onclick(document.all[cineCgBO.reachDate'],false,'<%=request.getContextPath()%>')"
								style="cursor :pointer;">&nbsp;&nbsp;
	</td>
   <tr>
   <tr>
    <th>备注：</th>
    <td><html:text property="cineCgBO.remark" styleId="N_str_cineCgBO.remark" ></html:text>
		
	</td>
  </tr>
    <td colspan="2">
	<div>
	<input type="button" name="Submit" value="确 认" onclick="update()"/>
    <input type="button" name="Submit3" value="返 回" onclick="backup();"/>
	</div>
	</td>
  </tr>
</table>
</html:form>
</body>
</html>
<script language="JavaScript">
    function update()
    {
        if(checkSubmit(document.medicineCgForm)){
        	if(confirm("确定要修改此信息吗？")){
	         	document.medicineCgForm.operate.value="update";
				medicineCgForm.submit();
	     	}
	     
	   }
	     
    }
    
    function backup()
    {
    	document.medicineCgForm.operate.value="list";
				medicineCgForm.submit();
    }
</script>

