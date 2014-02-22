<%@ page import="sisfit.Modalidade" %>



<div class="fieldcontain ${hasErrors(bean: modalidadeInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="modalidade.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${modalidadeInstance?.nome}"/>
</div>

