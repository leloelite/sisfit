
<%@ page import="sisfit.Alocacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alocacao.label', default: 'Alocacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alocacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alocacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="alocacao.aluno.label" default="Aluno" /></th>
					
						<th><g:message code="alocacao.modalidade.label" default="Modalidade" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alocacaoInstanceList}" status="i" var="alocacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alocacaoInstance.id}">${fieldValue(bean: alocacaoInstance, field: "aluno")}</g:link></td>
					
						<td>${fieldValue(bean: alocacaoInstance, field: "modalidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alocacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
