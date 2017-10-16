<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">  
        #menu{  
            font-size: 24px;  
            font-weight: bold;  
        }  
        #menu li{  
            text-decoration: none;//去掉li前面的圆点  
            list-style: none;  
            display: inline;//让li横向排列  
            border: 10px solid #FFFFFF;  
            background-color: #FFFFFF;
        }  
        #menu li a{  
           color:#040404;  
            text-decoration: none;  
            margin:0px;  
            display: block;  
            /*内边距（即填充padding）的方式，让每个菜单变得宽一些*/  
<span style="white-space:pre">            </span>padding: 8px 50px;               
<span style="white-space:pre">            </span>height:30px;   
            line-height:30px;   
            text-align:center; 
        } 
        <span style="white-space:pre">      </span> 
        #menu li a:hover{  
            background-color: #FCFCFC;//鼠标经过事件  
        }  
    </style> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body bgcolor=#FFE6D9>

<h4>books</h4>
	<table style="border-collapse:collapse;"  border="1">
	<tr>
		<td>isbn</td>
		<td>title</td>
		<td>authorid</td>
		<td>publisher</td>
		<td>publishdata</td>
		<td>price</td>
		<td>click to delete the book</td>
	</tr>
	<s:iterator value="allbooks" status="st" >
		<tr>
			<td><s:property value="isbn"/></td>    
			<td>
			<a href="showthebookAction.action?bookname=<s:property value="title"/>">
			<s:property value="title"/> 
			</a>
			</td>    
			<td><s:property value="authorid"/></td>    
			<td><s:property value="publisher"/></td>    
			<td><s:property value="publishdata"/></td>    
			<td><s:property value="price"/></td>
			<td>
			<a href="deleteAction.action?isbn=<s:property value="isbn"/>"  onclick="return del();">delete
			</a>
			</td>
		</tr>
	</s:iterator>
	</table>
	
	
<input type="button" onclick="location.href= '/lab/inputauthor.jsp' "  value="back"/>
	<script type="text/javascript">
		function del()
		{
			var flag=false;
			if (confirm("delete?"))
				{
					flag=true;
				}
			return flag;
		}
	</script>
	

</body>
</html>