<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/ssi.tld" prefix="ssi"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>录入采购品种-列表</title>
<link href="<%=request.getContextPath()%>/styles/gzt_css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="<%=request.getContextPath()%>/js/control.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/commons.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/date/common.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/formcheck.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/formcheck.js"></script>
</head>
<body>
<jsp:include page="/common/exception.jsp" flush="true" />
<html:form 	method="post"  action="/MedicineCgAction.do">
<input type="hidden" name="operate">
<input type="hidden" name="medicineId" id="medicineId" value="${medicineId}">
<div class="weizhi">
<div class="weizhi_bj">录入采购品种管理</div>
<div class="weizhi_ss"><img id="controlSearchBtn" style="cursor:pointer" onclick="loadHiddenPage('<%=request.getContextPath()%>');" src="<%=request.getContextPath()%>/images/button_minus.gif" width="66" height="17" /></div>
</div>
</div>
<table border="0" cellspacing="0" cellpadding="0" class="table_chax" id="adSearch">
  <tr>
    <th width="">品名：</th>
    <td width=""> <input type="text" name="name" value="${name}" title="品名" size="6" readonly/><input name="button" type="button" value="查询" onclick="openwinMedicine();" /></td>
	<th width="">投标起始日：</th>
    <td><input type="text" name="beginDate" value="${beginDate}"  readonly="true" size="6" title="投标起始日" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" />
	</td>
	<th width="">投标截止日：</th>
    <td><input type="text" name="endDate" value="${endDate}"  readonly="true" size="6" title="投标截止日" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" />
	</td>
    <th><input name="checks" type="button" value="查询" onclick="check()"/></th>
  </tr>
  <tr>
  	<th width="">采购数量：</th>
  	<td width=""> <input type="text" name="cgQty" value="" size="6"/>KG</td>

  	<th width="">交大货最迟时间：</th>
    <td><input type="text" name="reachDate" value="${reachDate}"  readonly="true" size="6" title="交大货最迟时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" />
		</td>
	  <!-- 
	<th width="">安国报价：</th>
  	<td width=""> <input type="text" name="agbj" value="" size="6"/>元/KG</td>
  	<th width="">亳州报价：</th>
  	<td width=""> <input type="text" name="bzbj" value="" size="6"/>元/KG</td>
  	<th width="">历史纯出粉率：</th>
  	<td width=""> <input type="text" name="lscfl" value="" size="6"/>%</td>
  	 -->
  	<th width="">品种属性：</th>
  	<td width=""> <input type="text" name="pinzhongshuxing" value="" size="6"/></td>
  	<th width="">备注：</th>
  	<td width=""> <input type="text" name="remark" value="" size="6"/></td>
  	<th><input name="checks"  type="button" value="添加" onclick="addCG()"/></th>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" class="table_list">
  <tr>
    <th width="15%">录入品种信息列表</th>
    <th width="85%">
	<div>
	<input name="checks"  type="button" value="修改" onclick="tomodify()"/>
      <input name="toDeletes" type="button" value="删除" onclick="toDelete()"/>
      
	</div>
	</th>
  </tr>
  <tr>
    <td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" class="table_date" id="dataTable">
		  <tr>
			<th width="5%">请选择</th>
			<th>品名</th>
			<th>品种属性</th>
			<th width="7%">计划采购数量</th>
			<th width="8%">交大货最迟时间</th>
			<th width="12%">基本质量要求</th>
			<th width="12%">图片</th>
			<th>投标起始日</th>
			<th>投标截止日</th>
			  <!-- 
			<th>安国报价(元/KG)</th>
			<th>亳州报价(元/KG)</th>
			<th>历史纯出粉率(%)</th>
			-->
			<th width="8%">备注</th>
		  </tr>
		  <logic:present name="cineCgList">
							<logic:notEmpty name="cineCgList">
								<logic:iterate id="item" name="cineCgList" indexId="indexNo">
									<tr onmouseover="this.className='over'" onmouseout="this.className='out'" onclick="showInfo(<bean:write name="indexNo"/>,this);">
										<td><input
											type="radio" name="selectNos"	id="radioId<bean:write name="indexNo"/>"
											value="<bean:write name="item" property="cgId"/>"
											onclick="doBoxChange(medicineCgForm.isAll,medicineCgForm.selectNos);" /></td>
										<td><div><bean:write name="item" property="medicineBO.medicineName" /></div></td>
										<td><div><bean:write name="item" property="pinzhongshuxing" /></div></td>
										<td><div><bean:write name="item" property="cgQty" /></div></td>
										<td><div><bean:write name="item" property="reachDate" /></div></td>
										<td><div STYLE="width: 120px; height: 20px; border: 0px solid blue;overflow: hidden; text-overflow:ellipsis" onmouseover="this.style.cssText='overflow:visible'" onmouseout="this.style.cssText='width:120px;height: 20px;border: 0px solid blue;overflow:hidden;text-overflow:ellipsis'"><bean:write name="item" property="medicineBO.zlyq" /></div></td>
										<td>
										<logic:notEmpty name="item" property="medicineBO.medicineimagefilename">  
												<img src=<bean:write name="item" property="medicineBO.medicineimagefilename" /> style="max-width:300px;height:50px;"/>
  					 						  </logic:notEmpty> 
										</td>
										<td><div><bean:write name="item" property="beginDate" /></div></td>
										<td><div><bean:write name="item" property="endDate" /></div></td>
										<td><div><bean:write name="item" property="remark" /></div></td>
										  <!-- 
										<td><div><bean:write name="item" property="agbj" /></div></td>
										<td><div><bean:write name="item" property="bzbj" /></div></td>
										<td><div><bean:write name="item" property="lscfl" /></div></td>
										
										-->
							
									</tr>
								</logic:iterate>
							</logic:notEmpty>
						</logic:present>
		 		</table>
		 </td>
	</tr>
  <tr>
    <td height="40" colspan="2">
	<div>
					<logic:present name="cineCgList">
							<logic:empty name="cineCgList">
								<div style="text-align:center; height:30px; line-height:30px;">暂无记录！</div>
							</logic:empty>
					</logic:present>
					
					<ssi:page property="pageInfo"  action="/MedicineCgAction.do?operate=list"/>
	</div>
	</td>
  </tr>
</table>
</html:form>
</body>
</html>
<script language="javascript">
	function  addCG(){
		if (medicineCgForm.name.value.trim()==null||medicineCgForm.name.value.trim()==""){
			alert("品名不能为空");
			return;
		}
		if (medicineCgForm.beginDate.value.trim()==null||medicineCgForm.beginDate.value.trim()==""){
			alert("投标起始日不能为空");
			return;
		}
		if (medicineCgForm.endDate.value.trim()==null||medicineCgForm.endDate.value.trim()==""){
			alert("投标截止日不能为空");
			return;
		}
		if (medicineCgForm.endDate.value.trim() < medicineCgForm.beginDate.value.trim()){
			alert("投标截止日要大于等于投标起始日");
			return;
		}
		if (medicineCgForm.cgQty.value.trim()==null||medicineCgForm.cgQty.value.trim()==""){
			alert("采购数量不能未空");
			return;
		}else if (!isInt(medicineCgForm.cgQty.value.trim())){
			alert("采购数量请输入数字");
			return;
		}
		if (medicineCgForm.reachDate.value.trim()==null||medicineCgForm.reachDate.value.trim()==""){
			alert("送样品截止时间不能未空");
			return;
		}
		
		if (medicineCgForm.pinzhongshuxing.value.trim()==null||medicineCgForm.pinzhongshuxing.value.trim()==""){
			alert("品种属性不能未空");
			return;
		}
		/*
		if (medicineCgForm.agbj.value.trim()==null||medicineCgForm.agbj.value.trim()==""){
			alert("安国报价不能未空");
			return;
		}else if (!isFloat(medicineCgForm.agbj.value.trim())){
			alert("安国报价请输入数字");
			return;
		}		
		if (medicineCgForm.bzbj.value.trim()==null||medicineCgForm.bzbj.value.trim()==""){
			alert("亳州报价不能未空");
			return;
		}else if (!isFloat(medicineCgForm.bzbj.value.trim())){
			alert("亳州报价请输入数字");
			return;
		}
		if (medicineCgForm.lscfl.value.trim()==null||medicineCgForm.lscfl.value.trim()==""){
			alert("历史纯出粉率不能未空");
			return;
		}else if (!isFloat(medicineCgForm.lscfl.value.trim())){
			alert("历史纯出粉率请输入数字");
			return;
		}*/
		document.medicineCgForm.operate.value="addCG";
		medicineCgForm.submit();
	}
	
	function  check(){
		document.medicineCgForm.operate.value="list";
		medicineCgForm.submit();
	}
	
	function  toDelete(){
	if(isRadioChecked(medicineCgForm.selectNos)){
		document.medicineCgForm.operate.value="toDelete";
		medicineCgForm.submit();
		 }else
	    {
            alert("请选择唯一的品种信息！");
        }
	}
	
	function  todel(){
		document.medicineCgForm.operate.value="list";
		medicineCgForm.submit();
	}

	function tomodify(){
	if(isRadioChecked(medicineCgForm.selectNos)){
	        {
	        document.medicineCgForm.operate.value="toUpdate";
	        document.medicineCgForm.submit();
	        }
	    }else{
            alert("请选择唯一的品种信息！");
        }
	}

	
	
	function openwinMedicine(){ 
    	var returnValue=window.showModalDialog("<%=request.getContextPath()%>/medicineManage.do?operate=medicineWindowForCg",window, "dialogWidth:700px,dialogHeight:335px,dialogTop:200px,dialogLeft,200px ");
    	if (returnValue == undefined) {
            returnValue = window.returnValue;
        }
    	if(returnValue && returnValue!=""){
	 	  	var  ret =returnValue.split(',');
	 	   	window.document.all['name'].value =ret[0];
	 	   	document.getElementById("medicineId").value=ret[1];
 		}
  	}
</script> 
