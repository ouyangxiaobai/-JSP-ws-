<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.dialog.css" />
<link rel="stylesheet" href="css/index.css" />
<title>网上招聘系统</title>
</head>

<body>
<script type="text/javascript" src="js/jquery.js"></script>
<div id="container">
	<div id="hd">
    	<div class="hd-wrap ue-clear">
        	<div class="top-light"></div>
            <h1 class="logo"></h1>
            <div class="login-info ue-clear">
                <div class="welcome ue-clear"><span>欢迎您,</span><a href="javascript:;" class="user-name">${company.username }</a></div>
            </div>
            <div class="toolbar ue-clear">
                <a href="javascript:;" class="quit-btn exit"></a>
            </div>
        </div>
    </div>
    <div id="bd">
    	<div class="wrap ue-clear">
        	<div class="sidebar">
            	<h2 class="sidebar-header"><p>功能导航</p></h2>
                <ul class="nav">
                	<li class="index"><div class="nav-header"><a href="javascript:;" date-src="c_query.jsp" class="ue-clear"><span>首页</span></a></div></li>
                    <li class="modify"><div class="nav-header"><a href="javascript:;" date-src="c_update.jsp"class="ue-clear"><span>公司信息修改</span></a></div>
                    <li class="publish"><div class="nav-header"><a href="javascript:;" date-src="publishServlet?type=公司" class="ue-clear"><span>发布招聘信息</span></a></div></li>
                    <li class="delete"><div class="nav-header"><a href="javascript:;" date-src="cancleServlet?type=公司" class="ue-clear"><span>撤销招聘信息</span></a></div></li>
                	<li class="email"><div class="nav-header"><a href="javascript:;" date-src="candidate.jsp" class="ue-clear"><span>求职者通知</span></a></div></li>
                 </ul>
            </div>
            <div class="content">
            	<iframe id="iframe" width="100%" height="100%" frameborder="0"></iframe>
            <% 
				if(request.getParameter("source")!=null){
			%>
				<script type="text/javascript">
					$('#iframe').attr('src','c_query.jsp?source=listServlet');
				</script>
			<% 
				}else{
			%>	
				<script type="text/javascript">
					$('#iframe').attr('src','c_query.jsp');
				</script> 
			<% 
				}
			%>
            </div>
        </div>
    </div>
    <div id="ft" class="ue-clear">
    </div>
</div>
<div class="exitDialog">
	<div class="dialog-content">
    	<div class="ui-dialog-icon"></div>
        <div class="ui-dialog-text">
        	<p class="dialog-content">你确定要退出系统？</p>
            <p class="tips">如果是请点击“确定”，否则点“取消”</p>
            
            <div class="buttons">
                <a href="exitServlet"><input type="button" class="button long2 ok" value="确定" /></a>
                <input type="button" class="button long2 normal" value="取消" />
            </div>
        </div>
        
    </div>
</div>
</body>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.dialog.js"></script>
<script type="text/javascript" src="js/index.js"></script>

</html>