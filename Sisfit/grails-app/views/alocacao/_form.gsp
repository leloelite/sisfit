<%@ page import="sisfit.Alocacao" %>



<div class="fieldcontain ${hasErrors(bean: alocacaoInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="alocacao.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${sisfit.Aluno.list()}" optionKey="id" required="" value="${alocacaoInstance?.aluno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alocacaoInstance, field: 'modalidade', 'error')} required">
	<label for="modalidade">
		<g:message code="alocacao.modalidade.label" default="Modalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modalidade" name="modalidade.id" from="${sisfit.Modalidade.list()}" optionKey="id" required="" value="${alocacaoInstance?.modalidade?.id}" class="many-to-one"/>
</div>

