<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>数据历史记录管理</title>
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
		<li class="active"><a href="${ctx}/eospd/dataontime/dataontime/">数据历史记录列表</a></li>
		<shiro:hasPermission name="eospd:dataontime:dataontime:edit"><li><a href="${ctx}/eospd/dataontime/dataontime/form">数据历史记录添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="dataontime" action="${ctx}/eospd/dataontime/dataontime/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>数据层级，1-仪表，2-能源：</label>
				<form:input path="datalayer" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>数据采集器ID，关联数据采集器表：</label>
				<form:input path="dcid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>帧当前时间：</label>
				<input name="currenttime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${dataontime.currenttime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>系统接收时间：</label>
				<input name="recetime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${dataontime.recetime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>帧时间间隔，单位：秒：</label>
				<form:input path="timeinterval" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>数据层级，1-仪表，2-能源</th>
				<th>数据采集器ID，关联数据采集器表</th>
				<th>帧当前时间</th>
				<th>系统接收时间</th>
				<th>帧时间间隔，单位：秒</th>
				<th>断点标识，0-正常，1-重传</th>
				<th>能源ID或仪表ID，原始信息</th>
				<th>能源或仪表类型ID，关联能源类型表或仪表类型表</th>
				<th>插值标志，0-正常；1-插值</th>
				<th>属性1当前值</th>
				<th>属性1错误标志，0-正常</th>
				<th>属性1插值</th>
				<th>属性1数据满刻度归0标志</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:dataontime:dataontime:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="dataontime">
			<tr>
				<td><a href="${ctx}/eospd/dataontime/dataontime/form?id=${dataontime.doid}">
					${dataontime.datalayer}
				</a></td>
				<td>
					${dataontime.dcid}
				</td>
				<td>
					<fmt:formatDate value="${dataontime.currenttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${dataontime.recetime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${dataontime.timeinterval}
				</td>
				<td>
					${dataontime.bpsign}
				</td>
				<td>
					${dataontime.dataid}
				</td>
				<td>
					${dataontime.datatypeid}
				</td>
				<td>
					${dataontime.ivsign}
				</td>
				<td>
					${dataontime.p1pv}
				</td>
				<td>
					${dataontime.p1err}
				</td>
				<td>
					${dataontime.p1dv}
				</td>
				<td>
					${dataontime.p1rsz}
				</td>
				<td>
					<fmt:formatDate value="${dataontime.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${dataontime.remarks}
				</td>
				<shiro:hasPermission name="eospd:dataontime:dataontime:edit"><td>
    				<a href="${ctx}/eospd/dataontime/dataontime/form?id=${dataontime.doid}">修改</a>
					<a href="${ctx}/eospd/dataontime/dataontime/delete?id=${dataontime.doid}" onclick="return confirmx('确认要删除该数据历史记录吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>