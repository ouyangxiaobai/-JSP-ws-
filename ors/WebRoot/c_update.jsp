<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-reg.css" />
<title>网上招聘系统</title>
<style type="text/css">
	.error{
		color:Red;
		font-size:13px;
		margin-left:5px;
		padding-left:16px; 
	}
</style>
</head>
<body>
<div class="title">
	<h2>企业信息修改(*为必填项)</h2>
</div>		
<form id="fm" method="post" action="updateServlet">
<div class="main">
	<p class="short-input ue-clear">
    	<label>*公司名称：</label>
        <input name="name" type="text" value="${company.name }"/>
    </p>
    <p class="short-input ue-clear">
    	<label>*公司地址：</label>
        <input name="location" type="text" value="${company.location }"/>
    </p>
    <p class="long-input ue-clear">
    	<label>*联系方式：</label>
        <input name="phone" type="text" value="${company.phone }"/>
    </p>
    <p class="long-input ue-clear">
    	<label>电子邮箱：</label>
        <input name="email" type="text" value="${company.email }"/>
    </p>
    <div class="short-input select ue-clear" id="zhuanye">
    	<label>职位需求：</label>
    </div>
    <div class="short-input select ue-clear" id="xinzi">
    	<label>薪资待遇：</label>
    </div>
    <p class="short-input ue-clear">
    	<label>公司简介：</label>
        <textarea name="tip" style="height:150px">${company.tip }</textarea>
    </p>
    <input name="type" type="hidden" value="公司">
    <div class="btn ue-clear">
		<input style="height:50px;width:150px;background-color:#68B86C;color:white;border-radius:10px" type="submit" value="修改"/>
	</div>
</div>
</form>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript">
$(function(){		
	var $trade = $("<select name='trade' style='width:200px;height:30px;border:1px solid #C5D6E0'></select>");
	var $salary = $("<select name='salary' style='width:200px;height:30px;border:1px solid #C5D6E0'></select>");
    $("#zhuanye").append($trade);
    $("#xinzi").append($salary);
    var a = new Array();
    var b = new Array();
    var temp;
    a[0] = "软件工程师";
    a[1] = "会计";
    a[2] = "文员";
    a[3] = "客户经理";
    a[4] = "网站策划";
    a[5] = "平面设计师";

    b[0] = "3000-4000";
    b[1] = "4001-5000";
    b[2] = "5001-6000";
    b[3] = "6001-7000";
    b[4] = "7001-8000";
    var c_trade = "${company.trade}";
    var c_salary = "${company.salary}";
    $.each(a,function(index,value){
        if(c_trade===value){
        	temp = a[0];
        	a[0] = a[index];
        	a[index]= temp;
        }
   });
    $.each(b,function(index,value){
        if(c_salary===value){
        	temp = b[0];
        	b[0] = b[index];
        	b[index]= temp;
        }
   });
    // 添加选项
    $.each(a,function(index,value){
        	$("<option></option>").val(value).text(value).appendTo($($trade));
   });

    $.each(b,function(index,value){
    	$("<option></option>").val(value).text(value).appendTo($($salary));
	});
});

showRemind('input[type=text], textarea','placeholder');

$( "#fm" ).validate({
    rules: {
        name: {
	         required:true
	    },
        location: {
	         required:true
        },
        phone: {
      	  required:true  
	    }
    },
    messages: {
        name: {
            required: "*不能为空！"
	      },		      
	    location: {
            required: "*不能为空！"
	    },
	    phone: {
	        required: "*不能为空！"
		}
    }
});
</script>

</html>
