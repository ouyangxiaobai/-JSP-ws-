<%@page import="tyut.service.imp.ICompanyServiceImp,tyut.bean.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-reg.css" />
<title>网上招聘系统</title>
</head>

<body>
	<% 
		long id = Long.parseLong(request.getParameter("id"));
		Company company = new ICompanyServiceImp().query(id);
	%>
<div class="title"><h2>公司基本信息</h2></div>
<div class="main">
	<p class="short-input ue-clear newstyle">
    	<label>公司名称：</label><input name="name" type="text" readonly="readonly" style="border:0;background:transparent;"  value="<%=company.getName()%>"/>
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>公司地址：</label><input name="name" type="text" readonly="readonly" style="border:0;background:transparent;"  value="<%=company.getLocation()%>"/>
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>职位需求：</label><input name="trade" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=company.getTrade()%>"/>
    </p>  
    <p class="long-input ue-clear newstyle">
    	<label>联系方式：</label><input name="phone" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=company.getPhone()%>">
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>电子邮箱：</label><input name="email" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=company.getEmail()%>"/>
    </p>  
    <p class="short-input ue-clear newstyle">
    	<label>薪资待遇：</label><input name="salary" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=company.getPhone()%>"/>
    </p>   
    <p class="short-input ue-clear newstyle">
    	<label>公司简介：</label><textarea name="tip" readonly="readonly" style="height:150px;border:0;background:transparent;"><%=company.getTip()%></textarea>
    </p>
</div>

</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
showRemind('input[type=text], textarea','placeholder');
</script>
</html>
