
<%@ page import="sisfit.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-aluno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="avaliacaoFisica" title="${message(code: 'aluno.avaliacaoFisica.label', default: 'Avaliacao Fisica')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'aluno.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'aluno.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="nascimento" title="${message(code: 'aluno.nascimento.label', default: 'Nascimento')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'aluno.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="observacoes" title="${message(code: 'aluno.observacoes.label', default: 'Observacoes')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alunoInstanceList}" status="i" var="alunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alunoInstance.id}">${fieldValue(bean: alunoInstance, field: "avaliacaoFisica")}</g:link></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "endereco")}</td>
					
						<td><g:formatDate date="${alunoInstance.nascimento}" /></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "observacoes")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alunoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
