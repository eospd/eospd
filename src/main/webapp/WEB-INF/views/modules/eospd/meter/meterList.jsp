<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>仪表信息管理</title>
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
		<li class="active"><a href="${ctx}/eospd/meter/meter/">仪表信息列表</a></li>
		<shiro:hasPermission name="eospd:meter:meter:edit"><li><a href="${ctx}/eospd/meter/meter/form">仪表信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="meter" action="${ctx}/eospd/meter/meter/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>deviceurl：</label>
				<form:input path="deviceurl" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>仪表类型ID，关联到仪表类型表：</label>
				<form:input path="datatypeid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>仪表通讯地址，一般为modbus地址（1-254有效）：</label>
				<form:input path="devicecommaddr" htmlEscape="false" maxlength="255" class="input-medium"/>
			</li>
			<li><label>位置：</label>
				<form:input path="location" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>描述：</label>
				<form:input path="desc" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>数据采集器通道编号，从1开始：</label>
				<form:input path="dcchannelsn" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>deviceurl</th>
				<th>仪表类型ID，关联到仪表类型表</th>
				<th>仪表通讯地址，一般为modbus地址（1-254有效）</th>
				<th>位置</th>
				<th>描述</th>
				<th>数据采集器ID，关联到表 dc</th>
				<th>数据采集器通道编号，从1开始</th>
				<th>自动添加标志，1-自动添加，0-手工添加</th>
				<th>安装时间</th>
				<th>入库时间</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:meter:meter:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="meter">
			<tr>
				<td><a href="${ctx}/eospd/meter/meter/form?id=${meter.id}">
					${meter.deviceurl}
				</a></td>
				<td>
					${meter.datatypeid}
				</td>
				<td>
					${meter.devicecommaddr}
				</td>
				<td>
					${meter.location}
				</td>
				<td>
					${meter.desc}
				</td>
				<td>
					${meter.dcid}
				</td>
				<td>
					${meter.dcchannelsn}
				</td>
				<td>
					${meter.autosign}
				</td>
				<td>
					<fmt:formatDate value="${meter.installtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${meter.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${meter.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${meter.remarks}
				</td>
				<shiro:hasPermission name="eospd:meter:meter:edit"><td>
    				<a href="${ctx}/eospd/meter/meter/form?id=${meter.id}">修改</a>
					<a href="${ctx}/eospd/meter/meter/delete?id=${meter.id}" onclick="return confirmx('确认要删除该仪表信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>