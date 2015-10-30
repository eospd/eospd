<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>仪表厂家信息管理</title>
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
		<li class="active"><a href="${ctx}/eospd/meter_vender/metervender/">仪表厂家信息列表</a></li>
		<shiro:hasPermission name="eospd:meter_vender:metervender:edit"><li><a href="${ctx}/eospd/meter_vender/metervender/form">仪表厂家信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="metervender" action="${ctx}/eospd/meter_vender/metervender/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>厂家名称：</label>
				<form:input path="vendername" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>厂家地址：</label>
				<form:input path="venderaddr" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>厂家联系电话：</label>
				<form:input path="contactphone" htmlEscape="false" maxlength="40" class="input-medium"/>
			</li>
			<li><label>厂家联系人：</label>
				<form:input path="contactperson" htmlEscape="false" maxlength="10" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>厂家名称</th>
				<th>厂家地址</th>
				<th>厂家联系电话</th>
				<th>厂家联系人</th>
				<th>入库时间</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:meter_vender:metervender:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="metervender">
			<tr>
				<td><a href="${ctx}/eospd/meter_vender/metervender/form?id=${metervender.id}">
					${metervender.vendername}
				</a></td>
				<td>
					${metervender.venderaddr}
				</td>
				<td>
					${metervender.contactphone}
				</td>
				<td>
					${metervender.contactperson}
				</td>
				<td>
					<fmt:formatDate value="${metervender.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${metervender.updatetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${metervender.remarks}
				</td>
				<shiro:hasPermission name="eospd:meter_vender:metervender:edit"><td>
    				<a href="${ctx}/eospd/meter_vender/metervender/form?id=${metervender.venderid}">修改</a>
					<a href="${ctx}/eospd/meter_vender/metervender/delete?id=${metervender.venderid}" onclick="return confirmx('确认要删除该仪表厂家信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>