<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/ssi.tld" prefix="ssi"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户管理-供应商增加</title>
<link href="<%=request.getContextPath()%>/styles/gzt_css.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="<%=request.getContextPath()%>/js/commons.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/control.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/date/common.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/formcheck.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script language="javascript" src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<jsp:include page="/common/ajaxSession.jsp" />
<html:form method="post" action="/supplier.do?operate=add">
<div class="weizhi">
	<div class="weizhi_bj">添加供应商</div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table_add">
	<tr>
    <td colspan="4">注意：<span>*</span> 号为必填项！</td>
  	</tr>
  <tr>
    <th width="25%">供应商代码：</th>
    <td width="25%"><html:text property="customerBO.customerAccount"
							styleId="str_customerBO.customerAccount" 
							onblur="return checkUnique('supplier.do?operate=checkCustomerId&customerAccount=' + this.value,this);"
							title="供应商代码" maxlength="50" ></html:text><span>*</span><font>供应商代码只能为数字</font>
	</td> 
	     <th width="5%">供应商名称：</th>
    <td width="25%"><html:text property="customerBO.name"
							styleId="Y_USN_customerBO.name"
							 title="供应商"							 
							maxlength="30"></html:text><span>*</span><font>姓名为2-15个汉字</font>
	</td>
  </tr>
 
  
  <tr>
    <th>地址：</th>
    <td><html:text property="customerBO.address" styleId="Y_USN_customerBO.address"  title="地址" maxlength="50"></html:text><span>*</span><font>地址为2-15个汉字</font>	
	</td>
	 <th>邮编：</th>
    <td><html:text property="customerBO.post" styleId="Y_int_customerBO.post"  title="邮编" maxlength="20"></html:text><span>*</span><font>只能输入整型数值</font>
		
	</td>
  </tr>
  <tr>
    <th>法人代表：</th>
    <td><html:text property="customerBO.frdb" styleId="Y_USN_customerBO.frdb"  title="法人代表" maxlength="30"></html:text><span>*</span><font>法人代表为2-15个汉字</font>
	</td>
	 <th>联系人：</th>
    <td><html:text property="customerBO.lxr" styleId="Y_USN_customerBO.lxr"  title="联系人" maxlength="30"></html:text><span>*</span><font>联系人为2-15个汉字</font>
		
	</td>
  </tr>
  <tr>
    <th>手机：</th>
    <td><html:text property="customerBO.telephone" styleId="Y_mob_employeesBO.deptName"  title="手机" maxlength="20"></html:text><span>*</span><font>手机格式为：13901234567</font>		
	</td>
    <th>电话：</th>
    <td><html:text property="customerBO.phone" styleId="Y_str_customerBO.phone"  title="电话" maxlength="20"></html:text><span>*</span><font>电话格式为：01088888888(-888888)</font>		
	</td>
  </tr>
  <tr>
    <th>传真：</th>
    <td><html:text property="customerBO.fax" styleId="Y_int_customerBO.fax"  title="传真" maxlength="20"></html:text><span>*</span><font>只能输入整型数值</font>
		
	</td>
    <th>电子邮件：</th>
    <td><html:text property="customerBO.email" styleId="Y_mal_customerBO.email"  title="电子邮件" maxlength="20"></html:text><span>*</span><font>E-mail格式为：sina@sina.com</font>
		
	</td>
  </tr>
   <tr>
    <th>企业法人营业执照： 法定代表人</th>
    <td><html:text property="customerBO.qyfryyzzdbr" styleId="Y_USN_customerBO.qyfryyzzdbr"  title="法定代表人" maxlength="20"></html:text><span>*</span><font>法人代表为2-15个汉字</font>	
	</td>
    <th >最新年审日期：</th>
    <td >
		<input type="text" name="customerBO.qyfryyzznsrq" value="${customerBO.qyfryyzznsrq}"  readonly="true" size="20" title="最新年审日期：" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><font color="red">请选择确切日期</font>
	</td>
  </tr>
  
     <tr>
    <th>药品经营许可证： 证号</th>
    <td><html:text property="customerBO.ypjyxkzzh" styleId="Y_str_customerBO.ypjyxkzzh"  title="药品经营许可证： 证号" maxlength="20"></html:text><span>*</span><font></font>
	</td>
    <th>有效期至：</th>
    <td>
		<input type="text" name="customerBO.ypjyxkzyxq" value="${customerBO.ypjyxkzyxq}"  readonly="true" size="20" title="有效期至：" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><font color="red">请选择确切日期</font>
	</td>
  </tr>
       <tr>
    <th>GSP证书： 证书编号</th>
    <td><html:text property="customerBO.gspzsbh" styleId="Y_str_customerBO.gspzsbh"  title="GSP证书： 证书编号" maxlength="20"></html:text><span>*</span><font></font>
	</td>
    <th>有效期至：</th>
    <td>
		<input type="text" name="customerBO.gspzsyxq" value="${customerBO.gspzsyxq}"  readonly="true" size="20" title="有效期至：" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><font color="red">请选择确切日期</font>
	</td>
  </tr>
         <tr>
    <th>组织机构代码证： 证书编号</th>
    <td><html:text property="customerBO.zzjgdmzdm" styleId="Y_str_customerBO.zzjgdmzdm"  title="药品经营许可证： 证号" maxlength="20"></html:text><span>*</span><font></font>
	</td>
    <th>有效期至：</th>
    <td>
		<input type="text" name="customerBO.zzjgdmyxq" value="${customerBO.zzjgdmyxq}"  readonly="true" size="20" title="有效期至：" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><font color="red">请选择确切日期</font>
	</td>
  </tr>
       <tr>
    <th>税务登记证： 法定代表人</th>
    <td><html:text property="customerBO.swdjzfddbr" styleId="Y_USN_customerBO.swdjzfddbr"  title="税务登记证： 法定代表人" maxlength="20"></html:text><span>*</span><font></font>
	</td>
  </tr>
     <tr>
    <th>质量保证协议书有效期</th>
    <td><input type="text" name="customerBO.zlbzxysyxq" value="${customerBO.zlbzxysyxq}"  readonly="true" size="20" title="质量保证协议书有效期有效期至：" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" class="Wdate" /><font color="red">请选择确切日期</font>
	</td>
  </tr>
   <tr>
    <th>办事处</th>
    <td><html:text property="customerBO.banshichu" styleId="Y_USN_customerBO.banshichu"  title="办事处" maxlength="20"></html:text><span>*</span><font>法人代表为2-15个汉字</font>
	</td>
  </tr>
    <tr>
    <th>供应商级别</th>
    <td><html:text property="customerBO.gysjb" styleId="N_str_customerBO.gysjb"  title="供应商级别" maxlength="20"></html:text><span>*</span><font></font>
	</td>
  </tr>
    <tr>
    <th>供应商账期</th>
    <td><html:text property="customerBO.gyszq" styleId="N_str_customerBO.gyszq"  title="供应商账期" maxlength="20"></html:text><span>*</span><font></font>
	</td>
  </tr>
    <tr>
    <th>供应商备注</th>
    <td><html:text property="customerBO.gysbz" styleId="N_str_customerBO.gysbz"  title="供应商备注" maxlength="20"></html:text><span>*</span><font></font>
	</td>
  </tr>
    <tr>
    <th>其他</th>
    <td><html:text property="customerBO.qita" styleId="N_str_customerBO.qita"  title="qita备注" maxlength="20"></html:text><span>*</span><font></font>
	</td>
  </tr>
  <!-- 
   <tr>
    <th>登录密码：</th>
    <td><input id="N_str_password" type="password" title="登录密码" name="password" size="22" maxlength="50"/><span>*</span>
	</td>
  </tr>
  <tr>
    <th>确认登录密码：</th>
    <td><input id="Y_PS2_password" title="确认登录密码" passwordName="password" type="password" name="passwordName" size="22" maxlength="50"/><span>*</span>
	</td>
  </tr>
   -->
  <tr>
  
   
  <tr>
    <th>vip：</th>
    <td><input type="radio" name="vip" value="1" checked="true">是</input>
		<input type="radio" name="vip"  value="0">否</input>
	</td>
  </tr>
   
  <tr>
    <td colspan="2">
	<div>
	<input type="button" name="Submit" value="确 认" onclick="addEmployees()"/>
    <input type="button" name="Submit2" value="重 置" onclick="reset();"/>
    <input type="button" name="Submit3" value="返 回" onclick="backup();"/>
	</div>
	</td>
  </tr>
</table>
</html:form>
</body>
</html>
<script language="JavaScript">
    function addEmployees()
    {
    	if(checkUnique('supplier.do?operate=checkCustomerId&customerAccount=' + document.all['customerBO.customerAccount'].value,document.all['customerBO.customerAccount']))
    	{
       		 if(checkSubmit(document.customerForm)){
    		    if(confirm("确定要增加此信息吗？"))
		        {
		         	document.customerForm.action="supplier.do?operate=add";
					customerForm.submit();
		        }
        	}
        }
	     
    }
    function backup()
    {
    	document.customerForm.action="supplier.do?operate=list";
        document.customerForm.submit();
    }

   function reset()
    {       		
    	document.customerForm.reset();  
    }
</script>
