<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book</title>
</head>
<body bgcolor="pink">
<center>
     <h1>编号为<s:property value="ISbnn"/>的作品信息</h1><br/>
</center>
<table width="150" border="1">
<s:iterator value = "rsrst2" var= 'it'>
 <tr>
 	<th align="right"><s:property value= '#it.ISBN'/></th>
	<th align="right"><s:property value= '#it.Title'/></th>
 	<th align="right"><s:property value= '#it.Publisher'/></th>
 	<th align="right"><s:property value= '#it.PDate'/></th>
 	<th align="right"><s:property value= '#it.Price'/></th>
 	<th align="right"><s:property value= '#it.AuthorID'/></th>
 	<th align="right"><s:property value= '#it.Name'/></th>
 	<th align="right"><s:property value= '#it.Age'/></th>
 	<th align="right"><s:property value= '#it.Country'/></th>
 	<th align="center"><a href ="Delebks.action?deISB=${it.ISBN}"onclick="return del();">DELETE</a></th>
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