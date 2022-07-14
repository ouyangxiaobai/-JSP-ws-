<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="css/login.css" />
	<style type="text/css">
	a:link {
 	font-size: 12px;
 	color: #000000;
	text-decoration: none;
	}
	a:visited {
	font-size: 12px;
	color: #000000;
 	text-decoration: none;
	}
	a:hover {
 	font-size: 12px;
 	color: #999999;
 	text-decoration: none;
	}
	</style>
	<title>网上招聘系统</title>
</head>
<body>
	<% 
		Cookie[] cookies = request.getCookies();
		String username = ""; 
		String password = ""; 
		if(cookies!=null){
			for(Cookie c:cookies){
				if("username".equals(c.getName())){
					username = c.getValue();
				}
				if("password".equals(c.getName())){
					password = c.getValue();
				}
			}
		}
	%>
	<div id="container">
		<div id="bd">
			<form method="post" action="loginServlet">
			<div class="login">
            	<div class="login-top"><h1 class="logo"></h1></div>
                <div class="login-input">
                	<p class="user ue-clear">
                    	<label>用户名</label>
                        <input type="text" name="username" value="<%=username %>"/>
                    </p>
                    <p class="password ue-clear">
                    	<label>密&nbsp;&nbsp;&nbsp;码</label>
                        <input type="password" name="password" value="<%=password %>"/>
                    </p><br>
                    <label style="font-size:16px">&nbsp;类&nbsp;&nbsp;&nbsp;型</label>
                    &nbsp;&nbsp;&nbsp;<input type="radio" value="个人" name="type" checked/><label style="font-size:16px">个人
                    <input type="radio" value="公司" name="type"/><label style="font-size:16px">公司
                </div>
                <div class="login-btn ue-clear">
                	<input type="submit" style="width:117px;height:40px;border-radius:10px;background-color:#2E84CD;color:white" value="登录">
                	<input type="checkbox" name="rem" id="remember"/>
                    <label for="remember" style="font-size:15px">记住密码</label>
                      <a style="font-size:15px;position:relative;left:100px"  href="javascript:void(0)" onclick="tiaozhuan()">
                      <label>&nbsp;&nbsp;&nbsp;&nbsp;点击注册</label></a>
                </div>
                   
            </div>
            </form>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript">
var height = $(window).height();
$("#container").height(height);
$("#bd").css("padding-top",height/2 - $("#bd").height()/2);

$(window).resize(function(){
	var height = $(window).height();
	$("#bd").css("padding-top",$(window).height()/2 - $("#bd").height()/2);
	$("#container").height(height);
	
});

$('#remember').focus(function(){
   $(this).blur();
});

$('#remember').click(function(e) {
	checkRemember($(this));
});

function checkRemember($this){
	if(!-[1,]){
		 if($this.prop("checked")){
			$this.parent().addClass('checked');
		}else{
			$this.parent().removeClass('checked');
		}
	}
}
function tiaozhuan(){
	var type=$("input[name='type']:checked").val();
	console.log(type)
	if(type=="个人")
		location.href="html/register.html"
	else
		location.href="html/c_register.html"
}
</script>
</html>