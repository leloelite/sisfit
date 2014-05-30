
<%@ page import="sisfit2.Turma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turma.label', default: 'Turma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-turma" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-turma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list turma">
			
				<g:if test="${turmaInstance?.diaSemana}">
				<li class="fieldcontain">
					<span id="diaSemana-label" class="property-label"><g:message code="turma.diaSemana.label" default="Dia Semana" /></span>
					
						<span class="property-value" aria-labelledby="diaSemana-label"><g:fieldValue bean="${turmaInstance}" field="diaSemana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.horaFim}">
				<li class="fieldcontain">
					<span id="horaFim-label" class="property-label"><g:message code="turma.horaFim.label" default="Hora Fim" /></span>
					
						<span class="property-value" aria-labelledby="horaFim-label"><g:fieldValue bean="${turmaInstance}" field="horaFim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.horaInicio}">
				<li class="fieldcontain">
					<span id="horaInicio-label" class="property-label"><g:message code="turma.horaInicio.label" default="Hora Inicio" /></span>
					
						<span class="property-value" aria-labelledby="horaInicio-label"><g:fieldValue bean="${turmaInstance}" field="horaInicio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.modalidade}">
				<li class="fieldcontain">
					<span id="modalidade-label" class="property-label"><g:message code="turma.modalidade.label" default="Modalidade" /></span>
					
						<span class="property-value" aria-labelledby="modalidade-label"><g:link controller="modalidade" action="show" id="${turmaInstance?.modalidade?.id}">${turmaInstance?.modalidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:turmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${turmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
