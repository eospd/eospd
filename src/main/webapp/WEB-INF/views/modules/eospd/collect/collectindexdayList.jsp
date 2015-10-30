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
			<li><label>采集指标时间</label>
				<input name="indextime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${collectindexday.indextime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>仪表ID</label>
				<form:input path="deviceid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>数据有效率</label>
				<form:input path="dataeffrate" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>仪表在线率</label>
				<form:input path="meteronlinerate" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>realcollectrate</label>
				<form:input path="realcollectrate" htmlEscape="false" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>采集指标时间，年月日有效</th>
				<th>仪表ID，=0指系统采集指标；&gt;0指某仪表采集指标 meter表的deviceId列</th>
				<th>数据有效率</th>
				<th>仪表在线率</th>
				<th>realcollectrate</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新者</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:collect:collectindexday:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="collectindexday">
			<tr>
				<td><a href="${ctx}/eospd/collect/collectindexday/form?id=${collectindexday.indexid}">
					<fmt:formatDate value="${collectindexday.indextime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</a></td>
				<td>
					${collectindexday.deviceid}
				</td>
				<td>
					${collectindexday.dataeffrate}
				</td>
				<td>
					${collectindexday.meteronlinerate}
				</td>
				<td>
					${collectindexday.realcollectrate}
				</td>
				<td>
					${collectindexday.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${collectindexday.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${collectindexday.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${collectindexday.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${collectindexday.remarks}
				</td>
				<shiro:hasPermission name="eospd:collect:collectindexday:edit"><td>
    				<a href="${ctx}/eospd/collect/collectindexday/form?id=${collectindexday.indexid}">修改</a>
					<a href="${ctx}/eospd/collect/collectindexday/delete?id=${collectindexday.indexid}" onclick="return confirmx('确认要删除该数据采集指标吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>