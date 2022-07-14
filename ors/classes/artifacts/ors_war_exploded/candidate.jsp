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
		long c_id = ((Company)session.getAttribute("company")).getId();
		List<Person> persons= new IEmployeeServiceImp().candidateQuery(c_id);
		if(persons==null){
			out.println("暂无应聘者");
		}else{
	%>
<div class="title"><h2>应聘者名单</h2></div>
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
			<%
				int count = 0;		
				for(Person p:persons){
					count++;
					long p_id = p.getId();
					Employee employee = new IEmployeeServiceImp().query(p_id, c_id);
					long id = employee.getId();
					long isAgreed = employee.getIsAgreed();
			%>	
				<tr>
            		<td class="num"><%=count %></td>
                	<td class="name"><%=p.getName() %></td>
                	<td class="node"><%=p.getTrade() %></td>
                	<td class="node">&nbsp;<%=p.getSchool() %></td>
                	<td class="node"><%=p.getSalary() %></td>
                	<td class="node"><%=p.getPhone() %></td>
                	<td class="node">
                		<a style="color:blue" href="c_info.jsp?id=<%=p.getId() %>" target="_blank">详细信息</a>&nbsp;&nbsp;&nbsp;
                	<% 
                		//已同意
                		if(isAgreed==1){
                	%>		
                			<lable>已同意</lable>
                	<%
                		}else if(isAgreed==-1){ 
                	%>
                			<lable>已拒绝</lable>
                	<% 	
                		}else{
                	%>
                			<a style="color:red" id="inform" href="informServlet?id=<%=id %>&isAgreed=1">同意</a>&nbsp;&nbsp;&nbsp;
                			<a style="color:red" id="inform" href="informServlet?id=<%=id %>&isAgreed=-1">拒绝</a>
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
