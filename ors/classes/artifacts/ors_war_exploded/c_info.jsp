<%@page import="tyut.service.imp.IPersonServiceImp,tyut.bean.*"%>
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
		Person person = new IPersonServiceImp().query(id);
	%>
<div class="title"><h2>个人基本信息</h2></div>
<div class="main">
	<p class="short-input ue-clear newstyle">
    	<label>姓名：</label><input name="name" type="text" readonly="readonly" style="border:0;background:transparent;"  value="<%=person.getName()%>"/>
    </p>
    <p class="long-input ue-clear newstyle">
    	<label>性别：</label><input name="sex" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getSex()%>">
    </p>
      <p class="short-input ue-clear newstyle">
    	<label>生日：</label><input name="birthday" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getBirthday()%>">
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>毕业学校：</label><input name="school" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getSchool()%>">
    </p>  
    <p class="short-input ue-clear newstyle">
    	<label>专业类别：</label><input name="trade" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getTrade()%>">
    </p>  
    <p class="long-input ue-clear newstyle">
    	<label>移动电话：</label><input name="phone" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getPhone()%>">
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>电子邮箱：</label><input name="email" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getEmail()%>">
    </p>  
    <p class="short-input ue-clear newstyle">
    	<label>薪资期望：</label><input name="salary" type="text" readonly="readonly" style="border:0;background:transparent;" value="<%=person.getSalary()%>">
    </p>   
    <p class="short-input ue-clear newstyle">
        <label>个人评价：</label><textarea name="tip" readonly="readonly" style="height:150px;border:0;background:transparent;"><%=person.getTip()%></textarea>
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
