<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>仪表型号信息管理</title>
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
		<li class="active"><a href="${ctx}/eospd/meter_type/metertype/">仪表型号信息列表</a></li>
		<shiro:hasPermission name="eospd:meter_type:metertype:edit"><li><a href="${ctx}/eospd/meter_type/metertype/form">仪表型号信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="metertype" action="${ctx}/eospd/meter_type/metertype/" method="post" class="breadcrumb form-search">
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
				<th>类型Url</th>
				<th>类型名称</th>
				<th>备注信息</th>
				<th>厂家ID</th>
				<th>自动添加标志，1-自动添加，0-手工添加</th>
				<th>入库时间</th>
				<th>更新时间</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:meter_type:metertype:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="metertype">
			<tr>
				<td><a href="${ctx}/eospd/meter_type/metertype/form?id=${metertype.id}">
					${metertype.typeurl}
				</a></td>
				<td>
					${metertype.typename}
				</td>
				<td>
					${metertype.desc}
				</td>
				<td>
					${metertype.venderid}
				</td>
				<td>
					${metertype.autosign}
				</td>
				<td>
					<fmt:formatDate value="${metertype.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${metertype.updatetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${metertype.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${metertype.remarks}
				</td>
				<shiro:hasPermission name="eospd:meter_type:metertype:edit"><td>
    				<a href="${ctx}/eospd/meter_type/metertype/form?id=${metertype.datatypeid}">修改</a>
					<a href="${ctx}/eospd/meter_type/metertype/delete?id=${metertype.datatypeid}" onclick="return confirmx('确认要删除该仪表型号信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>