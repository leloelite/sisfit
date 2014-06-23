
<%@ page import="sisfit2.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-aluno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
					    <g:sortableColumn property="id" title="${message(code: 'aluno.id.label', default: 'Matricula')}" />
					    
						<g:sortableColumn property="avaliacaoFisica" title="${message(code: 'aluno.avaliacaoFisica.label', default: 'Avaliacao Fisica')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'aluno.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'aluno.endereco.label', default: 'Endereco')}" />
					
						<th><g:message code="aluno.modalidade.label" default="Modalidade" /></th>
					
						<g:sortableColumn property="nascimento" title="${message(code: 'aluno.nascimento.label', default: 'Nascimento')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'aluno.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alunoInstanceList}" status="i" var="alunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alunoInstance.id}">${fieldValue(bean: alunoInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "avaliacaoFisica")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: alunoInstance, field: "modalidade.nome")}</td>
					
						<td><g:formatDate date="${alunoInstance.nascimento}" /></td>
					
						<td>${fieldValue(bean: alunoInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<g:form action="report" target="blank">
			nome: <input name="nome"/>
			<br>
			<input type="submit" value="Gerar">
			</g:form>
			<div class="pagination">
				<g:paginate total="${alunoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
