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
<div class="title"><h2>个人基本信息</h2></div>
<div class="main">
	<form action="downloadServlet" method="post">
	<p class="short-input ue-clear newstyle">
    	<label>姓名：</label><input name="name" type="text" readonly="readonly" style="border:0;background:transparent;"  value="${person.name }"/>
    </p>
    <p class="long-input ue-clear newstyle">
    	<label>性别：</label><input name="sex" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.sex}">
    </p>
      <p class="short-input ue-clear newstyle">
    	<label>生日：</label><input name="birthday" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.birthday}">
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>毕业学校：</label><input name="school" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.school}">
    </p>  
    <p class="short-input ue-clear newstyle">
    	<label>专业类别：</label><input name="trade" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.trade }">
    </p>  
    <p class="long-input ue-clear newstyle">
    	<label>移动电话：</label><input name="phone" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.phone}">
    </p>
    <p class="short-input ue-clear newstyle">
    	<label>电子邮箱：</label><input name="email" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.email }">
    </p>  
    <p class="short-input ue-clear newstyle">
    	<label>薪资期望：</label><input name="salary" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.salary }">
    </p>   
    <p class="short-input ue-clear newstyle">
    	<label>个人评价：</label><input name="tip" type="text" readonly="readonly" style="border:0;background:transparent;" value="${person.tip }">
    </p>
    <div class="btn ue-clear">
	<input style="height:50px;width:150px;background-color:#68B86C;color:white;border-radius:5px" type="submit" value="下载"/>
	</div>
    </form>
</div>

</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
showRemind('input[type=text], textarea','placeholder');
</script>
</html>
