<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Author</title>
<style type="text/css">
	html,
	body {
	  height: 100%;
	  margin: 0;
	 
	  font-family: "Microsoft YaHei","宋体","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif, FreeSans, Arimo;
	}

	.emblem {
	  position: absolute;
	  left: 0;
	  right: 0;
	  top: 5vh;
	  margin: 0 auto;
	  width: 40vh;
	  height: 40vh;
	  border-radius: 50%;
	  font-weight: bold;
	  color: #003A6F;
	  animation: spinZ 20s linear infinite;
	  text-align: center;
	}
	.emblem span {
	  position: absolute;
	  display: inline-block;
	  left: 0;
	  right: 0;
	  top: 0;
	  bottom: 0;
	  text-transform: uppercase;
	  font-size: 4vh;
	  transition: all 0.5s cubic-bezier(0, 0, 0, 1);
	}
	@keyframes spinZ {
	  0% {
		transform: rotateZ(32400deg);
	  }
	  100% {
		transform: rotateZ(0deg);
	  }
	}
</style>
</head>
<body bgcolor=#FFE6D9>
<center>
<div class="emblem">book</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<form action="Actionsd"method="get">
<p>输入作者:<input type="text" name="AuName"/></p>
<p align="center"><input type="submit"value="Submit"/></p>
</form>

</center>
</body>
</html>