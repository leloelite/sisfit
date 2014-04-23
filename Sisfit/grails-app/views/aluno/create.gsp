<%@ page import="sisfit.Aluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'aluno.label', default: 'Aluno')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<style>
	form{
	background-color: #EEDD82;
	}
	
	avaliacaoFisica{
	position:absolute;
	left:5px;}
	</style>
		<div id="create-aluno" class="content scaffold-create" role="main"><br><br><br><br>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${alunoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${alunoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<center><h1><g:message code="default.create.label" args="[entityName]" /></h1></center>
			<div class="formuAluno">
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
			</div>
		</div>
	</body>
</html>
