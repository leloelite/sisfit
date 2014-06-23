
<%@ page import="sisfit2.Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-professor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-professor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list professor">
			
				<g:if test="${professorInstance?.modalidade}">
				<li class="fieldcontain">
					<span id="modalidade-label" class="property-label"><g:message code="professor.modalidade.label" default="Modalidade" /></span>
					
						<span class="property-value" aria-labelledby="modalidade-label"><g:link controller="modalidade" action="show" id="${professorInstance?.modalidade?.id}">${professorInstance?.modalidade?.nome.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="professor.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${professorInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.cref}">
				<li class="fieldcontain">
					<span id="cref-label" class="property-label"><g:message code="professor.cref.label" default="Cref" /></span>
					
						<span class="property-value" aria-labelledby="cref-label"><g:fieldValue bean="${professorInstance}" field="cref"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.ctps}">
				<li class="fieldcontain">
					<span id="ctps-label" class="property-label"><g:message code="professor.ctps.label" default="Ctps" /></span>
					
						<span class="property-value" aria-labelledby="ctps-label"><g:fieldValue bean="${professorInstance}" field="ctps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="professor.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${professorInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="professor.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${professorInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.nascimento}">
				<li class="fieldcontain">
					<span id="nascimento-label" class="property-label"><g:message code="professor.nascimento.label" default="Nascimento" /></span>
					
						<span class="property-value" aria-labelledby="nascimento-label"><g:formatDate date="${professorInstance?.nascimento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="professor.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${professorInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.observacoes}">
				<li class="fieldcontain">
					<span id="observacoes-label" class="property-label"><g:message code="professor.observacoes.label" default="Observacoes" /></span>
					
						<span class="property-value" aria-labelledby="observacoes-label"><g:fieldValue bean="${professorInstance}" field="observacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.rg}">
				<li class="fieldcontain">
					<span id="rg-label" class="property-label"><g:message code="professor.rg.label" default="Rg" /></span>
					
						<span class="property-value" aria-labelledby="rg-label"><g:fieldValue bean="${professorInstance}" field="rg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${professorInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="professor.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${professorInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:professorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${professorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
