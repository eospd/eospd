<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>电支路信息管理</title>
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
		<li class="active"><a href="${ctx}/eospd/circuitinfo/circuitinfo/">电支路信息列表</a></li>
		<shiro:hasPermission name="eospd:circuitinfo:circuitinfo:edit"><li><a href="${ctx}/eospd/circuitinfo/circuitinfo/form">电支路信息添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="circuitinfo" action="${ctx}/eospd/circuitinfo/circuitinfo/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>电支路URL：</label>
				<form:input path="circuiturl" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>电支路名称：</label>
				<form:input path="circuitname" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>所在位置：</label>
				<form:input path="location" htmlEscape="false" maxlength="200" class="input-medium"/>
			</li>
			<li><label>开关额定电流，单位：A：</label>
				<form:input path="switchratedc" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>电压等级，单位：V：</label>
				<form:input path="levelv" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>设计功率，单位：kw：</label>
				<form:input path="designpower" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>电源相数，1 or 3：</label>
				<form:input path="powerphase" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>上级电支路，0-动态，-1-没有，&gt;0-静态：</label>
				<form:input path="parentid" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>动态上级1：</label>
				<form:input path="dynamicparent1id" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li><label>动态上级2：</label>
				<form:input path="dynamicparent2id" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>电支路URL</th>
				<th>电支路名称</th>
				<th>所在位置</th>
				<th>开关额定电流，单位：A</th>
				<th>电压等级，单位：V</th>
				<th>设计功率，单位：kw</th>
				<th>电源相数，1 or 3</th>
				<th>上级电支路，0-动态，-1-没有，&gt;0-静态</th>
				<th>动态上级1</th>
				<th>动态上级2</th>
				<th>更新者</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="eospd:circuitinfo:circuitinfo:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="circuitinfo">
			<tr>
				<td><a href="${ctx}/eospd/circuitinfo/circuitinfo/form?id=${circuitinfo.circuitid}">
					${circuitinfo.circuiturl}
				</a></td>
				<td>
					${circuitinfo.circuitname}
				</td>
				<td>
					${circuitinfo.location}
				</td>
				<td>
					${circuitinfo.switchratedc}
				</td>
				<td>
					${circuitinfo.levelv}
				</td>
				<td>
					${circuitinfo.designpower}
				</td>
				<td>
					${circuitinfo.powerphase}
				</td>
				<td>
					${circuitinfo.parentid}
				</td>
				<td>
					${circuitinfo.dynamicparent1id}
				</td>
				<td>
					${circuitinfo.dynamicparent2id}
				</td>
				<td>
					${circuitinfo.updateBy.id}
				</td>
				<td>
					<fmt:formatDate value="${circuitinfo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${circuitinfo.remarks}
				</td>
				<shiro:hasPermission name="eospd:circuitinfo:circuitinfo:edit"><td>
    				<a href="${ctx}/eospd/circuitinfo/circuitinfo/form?id=${circuitinfo.circuitid}">修改</a>
					<a href="${ctx}/eospd/circuitinfo/circuitinfo/delete?id=${circuitinfo.circuitid}" onclick="return confirmx('确认要删除该电支路信息吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>