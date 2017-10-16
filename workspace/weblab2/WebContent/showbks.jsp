<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show</title>
</head>
<body bgcolor=#FFE6D9>
<center>
     <h1><s:property value="AuName"/>的作品</h1><br/>
</center>

<table width="150" border="1">

<s:iterator value = "rslst1" var= 'it'>
 <tr>
 	<th align="right"><s:property value= '#it.ISBN'/></th>
	<th align="right"><a href ="Showallinfo.action?ISbnn=${it.ISBN}"><s:property value= '#it.Title'/></a></th>
	<th align="center"><a href ="Delebks.action?deISB=${it.ISBN}" onclick="return del();">DELETE</a></th>
	<th align="center"><a href ="FindBook.action?deISB=${it.ISBN}">UPDATE</a></th>
 </tr>
</s:iterator>
</table>
<input type="button" onclick="location.href= '/weblab2/Hello.jsp' "  value="back"/>
	<script type="text/javascript">
			function del()
			{
				var flag=false;
				if (confirm("delete?"))
					{
						flag=true;
						alert('删除成功！');history.go(-1);
					}
				return flag;
			}
		</script>
		  
</body>
</html>