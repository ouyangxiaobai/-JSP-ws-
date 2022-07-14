<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,tyut.bean.*,tyut.service.imp.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/info-mgt.css" />
<link rel="stylesheet" href="css/WdatePicker.css" />
<title>网上招聘系统</title>
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
</head>

<body>
<% 
	if(request.getParameter("source")==null){
		List<Person> persons = new IPersonServiceImp().listAllPersons();
		application.setAttribute("persons", persons);
	}
%>
<div class="title"><h2>人才库信息</h2></div>
<div class="query">
<form method="post" action="listServlet">
	<div class="query-conditions ue-clear">
        <div class="conditions name ue-clear">
            <label>专业：</label>
            <select name="trade" style="width:200px;height:28px;border:1px solid #C5D6E0">
            	<option value="">不限</option>
                <option>软件工程</option>
            	<option>经济管理</option>
            	<option>数学</option>
            	<option>土木工程</option>
            	<option>法学</option>
            </select>
        </div>
        <div class="conditions operate-time ue-clear">
            <label>薪资范围：</label>
            <div class="select-wrap">
               <select name="salary" style="width:200px;height:28px;border:1px solid #C5D6E0">
                	<option value="">不限</option>
                	<option >3000-4000</option>
            		<option >4001-5000</option>
                	<option >5001-6000</option>
                	<option >6001-7000</option>
                	<option >7001-8000</option>
            </select>
            </div>
        </div>
        <div class="conditions time ue-clear">
            <label>截止时间：</label>
            <div class="time-select">
            	<input name="pubtime" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
                <i class="icon"></i>
            </div>
        </div>
        <div class="conditions name ue-clear">
            <label>学校：</label>
        	<input style="width:195px;height:25px;border:1px solid #C5D6E0" name="school" type="text">
        </div>
        <input name="type" type="hidden" value="公司">
    </div>
    <div class="query-btn ue-clear">
		<input style="background-color:#68B86C;color:white;border-radius:10px" type="submit" value="查询"/>
		<input style="background-color:#EFF6FA;color:black;border-radius:10px" type="reset" value="清空"/>    
	</div>
</form>
</div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num">序号</th>
                <th class="name">姓名</th>
                <th class="node">专业</th>
                <th class="node">毕业学校</th>
                <th class="node">薪资要求</th>
                <th class="node">联系方式</th>
                <th class="node">操作</th>
            </tr>
        </thead>
        <tbody>
			<c:forEach items="${persons }" var ="person"  begin="0" varStatus="status">  
				<tr>
            		<td class="num">${status.count }</td>
                	<td class="name">${person.name}</td>
                	<td class="node">${person.trade}</td>
                	<td class="node">&nbsp;${person.school}</td>
                	<td class="node">${person.salary}</td>
                	<td class="node">${person.phone}</td>
                	<td class="node"><a style="color:blue" href="c_info.jsp?id=${person.id }" target="_blank">详细信息</a></td>
            	</tr>
      		</c:forEach>  
        </tbody>
    </table>
</div>
<div class="pagination ue-clear"></div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<!--  <script type="text/javascript" src="js/jquery.pagination.js"></script>-->
<!--<script type="text/javascript">
 $('.pagination').pagination(100,{
	callback: function(page){
	},
	display_msg: true,
	setPageNo: true
});-->
<script type="text/javascript">
$("tbody").find("tr:odd").css("backgroundColor","#eff6fa");
showRemind('input[type=text], textarea','placeholder');
</script>
</html>
