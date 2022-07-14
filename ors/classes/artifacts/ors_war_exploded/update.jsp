<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<h2>个人信息修改(*为必填项)</h2>
</div>		
<form id="fm" method="post" action="updateServlet">
<div class="main">
	<p class="short-input ue-clear">
    	<label>*姓名：</label>
        <input name="name" type="text" value="${person.name }"/>
    </p>
    <p class="short-input ue-clear" id="xingbie">
    	<label>*性别：</label>
    </p>
    <p class="short-input ue-clear">
    	<label>*出生日期：</label>
        <input name="birthday" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" value="${person.birthday }"/>
    </p>
    <p class="long-input ue-clear">
    	<label>*毕业学校：</label>
        <input name="school" type="text" value="${person.school }"/>
    </p>
    <p class="long-input ue-clear">
    	<label>*联系方式：</label>
        <input name="phone" type="text" value="${person.phone }"/>
    </p>
    <p class="long-input ue-clear">
    	<label>电子邮箱：</label>
        <input name="email" type="text" value="${person.email }"/>
    </p>
    <div class="short-input select ue-clear" id="zhuanye">
    	<label>专业类别：</label>
    </div>
    <div class="short-input select ue-clear" id="xinzi">
    	<label>薪资期望：</label>
    </div>
    <p class="short-input ue-clear">
    	<label>个人评价：</label>
        <textarea name="tip" >${person.tip }</textarea>
    </p>
    <input name="type" type="hidden" value="个人">
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
<!--动态添加select-->
	$(function(){		
		var $sex = $("<select name='sex' style='width:200px;height:30px;border:1px solid #C5D6E0'></select>");
		var $trade = $("<select name='trade' style='width:200px;height:30px;border:1px solid #C5D6E0'></select>");
		var $salary = $("<select name='salary' style='width:200px;height:30px;border:1px solid #C5D6E0'></select>");
        $("#xingbie").append($sex);
        $("#zhuanye").append($trade);
        $("#xinzi").append($salary);
        var a = new Array();
        var b = new Array();
        var c = new Array();
        var temp;
        a[0] = "软件工程";
        a[1] = "经济管理";
        a[2] = "数学";
        a[3] = "土木工程";
        a[4] = "法学";
        
        b[0] = "男";
        b[1] = "女";
      
        c[0] = "3000-4000";
        c[1] = "4001-5000";
        c[2] = "5001-6000";
        c[3] = "6001-7000";
        c[4] = "7001-8000";
        var p_sex = "${person.sex}";
        var p_trade = "${person.trade}";
        var p_salary = "${person.salary}";
        //将当前项放到首位
        $.each(b,function(index,value){
            if(p_sex===value){
            	temp = b[0];
            	b[0] = b[index];
            	b[index]= temp;
            }
       });
        $.each(a,function(index,value){
            if(p_trade===value){
            	temp = a[0];
            	a[0] = a[index];
            	a[index]= temp;
            }
       });
        $.each(c,function(index,value){
            if(p_salary===value){
            	temp = c[0];
            	c[0] = c[index];
            	c[index]= temp;
            }
       });
        // 添加选项
        $.each(a,function(index,value){
            	$("<option></option>").val(value).text(value).appendTo($($trade));
       });
        $.each(b,function(index,value){
        	$("<option></option>").val(value).text(value).appendTo($($sex));
  		});
        $.each(c,function(index,value){
        	$("<option></option>").val(value).text(value).appendTo($($salary));
  		});
	});
	
	showRemind('input[type=text], textarea','placeholder');
	$( "#fm" ).validate({
	      rules: {
	          name: {
		         required:true
		      },
	          birthday: {
		         required:true
	          },
	          school: {
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
		      birthday: {
	              required: "*不能为空！"
		      },
		      school: {
	              required: "*不能为空！"
		      },
		      phone: {
		          required: "*不能为空！"
			  }
	      }
	  });
</script>

</html>
