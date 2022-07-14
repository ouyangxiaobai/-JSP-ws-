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
<script type="text/javascript" src="js/jquery.js"></script>
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
		long p_id = ((Person)session.getAttribute("person")).getId();
		List<Company> companys = new IEmployeeServiceImp().companyQuery(p_id);
		if(companys==null){
			out.println("暂无通知");
		}else{
	%>
<div class="title"><h2>我的通知</h2></div>
<div class="table-box">
	<table>
    	<thead>
        	<tr>
            	<th class="num">序号</th>
                <th class="name">公司名称</th>
                <th class="node">职位需求</th>
                <th class="node">薪资待遇</th>
                <th class="node">联系方式</th>
                <th class="node">操作</th>
            </tr>
        </thead>
        <tbody>
			<%
				int count = 0;		
				for(Company c:companys){
					count++;
					long c_id = c.getId();
					Employee employee = new IEmployeeServiceImp().query(p_id, c_id);
					long id = employee.getId();
					long isAgreed = employee.getIsAgreed();
			%>	
				<tr>
            		<td class="num"><%=count %></td>
                	<td class="name"><%=c.getName() %></td>
                	<td class="node"><%=c.getTrade() %></td>
                	<td class="node"><%=c.getSalary() %></td>
                	<td class="node"><%=c.getPhone() %></td>
                	<td class="node">
                		<a style="color:blue" href="info.jsp?id=<%=c.getId() %>" target="_blank">详细信息</a>&nbsp;&nbsp;&nbsp;
                	<% 
                		//已同意
                		if(isAgreed==1){
                	%>		
                			<lable>已通过筛选</lable>
                	<% 	}else if(isAgreed==-1){
            				
                	%>
                			<lable>未通过筛选</lable>
                	<% 
                	
                		}else{
                	%>
                			<lable>等待通知</lable>
                	<%	
    					}
                	%>
                	</td>
            	</tr>
			<% 
				}
			%>			
        </tbody>
    </table>
</div>		
		<%		
			}
		%>
</body>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">
$('.pagination').pagination(100,{
	callback: function(page){
	},
	display_msg: true,
	setPageNo: true
});

$("tbody").find("tr:odd").css("backgroundColor","#eff6fa");

showRemind('input[type=text], textarea','placeholder');
</script>
</html>
