<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>数据采集指标管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/eospd/collect/collectindexday/">数据采集指标列表</a></li>
		<shiro:hasPermission name="eospd:collect:collectindexday:edit"><li><a href="${ctx}/eospd/collect/collectindexday/form">数据采集指标添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="collectindexday" action="${ctx}/eospd/collect/collectindexday/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<shiro:hasPermission name="eospd:collect:collectindexday:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="collectindexday">
			<tr>
				<shiro:hasPermission name="eospd:collect:collectindexday:edit"><td>
    				<a href="${ctx}/eospd/collect/collectindexday/form?id=${collectindexday.id}">修改</a>
					<a href="${ctx}/eospd/collect/collectindexday/delete?id=${collectindexday.id}" onclick="return confirmx('确认要删除该数据采集指标吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>