<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>设备在线状态历史管理</title>
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
		<li class="active"><a href="${ctx}/eospd/devonline/devonline/">设备在线状态历史列表</a></li>
		<shiro:hasPermission name="eospd:devonline:devonline:edit"><li><a href="${ctx}/eospd/devonline/devonline/form">设备在线状态历史添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="devonline" action="${ctx}/eospd/devonline/devonline/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>数据采集器ID</label>
				<form:input path="dcid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>设备类型</label>
				<form:input path="devicetype" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>设备标识</label>
				<form:input path="deviceid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>帧当前时间</label>
				<input name="currenttime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${devonline.currenttime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>设备状态</label>
				<form:input path="devicestatus" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>数据采集器ID，关联数据采集器表</th>
				<th>设备类型。1：数据采集器；2-仪表；</th>
				<th>设备标识，关联数据采集器表或仪表表</th>
				<th>帧当前时间</th>
				<th>设备状态，0：离线；1：在线；2：重启</th>
				<th>断点标识，0-正常，1-重传</th>
				<th>入库时间</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新者</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:devonline:devonline:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="devonline">
			<tr>
				<td><a href="${ctx}/eospd/devonline/devonline/form?id=${devonline.devolid}">
					${devonline.dcid}
				</a></td>
				<td>
					${devonline.devicetype}
				</td>
				<td>
					${devonline.deviceid}
				</td>
				<td>
					<fmt:formatDate value="${devonline.currenttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${devonline.devicestatus}
				</td>
				<td>
					${devonline.bpsign}
				</td>
				<td>
					<fmt:formatDate value="${devonline.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${devonline.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${devonline.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${devonline.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${devonline.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${devonline.remarks}
				</td>
				<shiro:hasPermission name="eospd:devonline:devonline:edit"><td>
    				<a href="${ctx}/eospd/devonline/devonline/form?id=${devonline.devolid}">修改</a>
					<a href="${ctx}/eospd/devonline/devonline/delete?id=${devonline.devolid}" onclick="return confirmx('确认要删除该设备在线状态历史吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>