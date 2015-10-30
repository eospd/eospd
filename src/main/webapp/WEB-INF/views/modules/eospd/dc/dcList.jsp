<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>数据采集器信息管理</title>
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
		<li class="active"><a href="${ctx}/eospd/dc/dc/">数据采集器信息列表</a></li>
		<shiro:hasPermission name="eospd:dc:dc:edit"><li><a href="${ctx}/eospd/dc/dc/form">数据采集器信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="dc" action="${ctx}/eospd/dc/dc/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>数据采集器Url</label>
				<form:input path="dcurl" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>位置</label>
				<form:input path="location" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>描述</label>
				<form:input path="desc" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>通道数量</label>
				<form:input path="channelcount" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>数据采集器IP地址</label>
				<form:input path="dcip" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>自动添加标志，1-自动添加，0-手工添加：</label>
				<form:input path="autosign" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>安装时间</label>
				<input name="installtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${dc.installtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>入库时间</label>
				<input name="inserttime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${dc.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>创建者</label>
				<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>数据采集器Url</th>
				<th>位置</th>
				<th>描述</th>
				<th>通道数量</th>
				<th>数据采集器IP地址</th>
				<th>自动添加标志，1-自动添加，0-手工添加</th>
				<th>安装时间</th>
				<th>入库时间</th>
				<th>创建者</th>
				<th>创建时间</th>
				<th>更新者</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:dc:dc:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="dc">
			<tr>
				<td><a href="${ctx}/eospd/dc/dc/form?id=${dc.dcid}">
					${dc.dcurl}
				</a></td>
				<td>
					${dc.location}
				</td>
				<td>
					${dc.desc}
				</td>
				<td>
					${dc.channelcount}
				</td>
				<td>
					${dc.dcip}
				</td>
				<td>
					${dc.autosign}
				</td>
				<td>
					<fmt:formatDate value="${dc.installtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${dc.inserttime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${dc.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${dc.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${dc.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${dc.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${dc.remarks}
				</td>
				<shiro:hasPermission name="eospd:dc:dc:edit"><td>
    				<a href="${ctx}/eospd/dc/dc/form?id=${dc.dcid}">修改</a>
					<a href="${ctx}/eospd/dc/dc/delete?id=${dc.dcid}" onclick="return confirmx('确认要删除该数据采集器信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>