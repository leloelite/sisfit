
<%@ page import="sisfit2.Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-professor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="professor.modalidade.label" default="Modalidade" /></th>
					
						<g:sortableColumn property="cpf" title="${message(code: 'professor.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="cref" title="${message(code: 'professor.cref.label', default: 'Cref')}" />
					
						<g:sortableColumn property="ctps" title="${message(code: 'professor.ctps.label', default: 'Ctps')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'professor.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'professor.endereco.label', default: 'Endereco')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${professorInstanceList}" status="i" var="professorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${professorInstance.id}">${fieldValue(bean: professorInstance, field: "modalidade.nome")}</g:link></td>
					
						<td>${fieldValue(bean: professorInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: professorInstance, field: "cref")}</td>
					
						<td>${fieldValue(bean: professorInstance, field: "ctps")}</td>
					
						<td><g:formatDate date="${professorInstance.data}" /></td>
					
						<td>${fieldValue(bean: professorInstance, field: "endereco")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${professorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
