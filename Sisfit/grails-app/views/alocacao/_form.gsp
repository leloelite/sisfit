<%@ page import="sisfit.Alocacao" %>



<div class="fieldcontain ${hasErrors(bean: alocacaoInstance, field: 'aluno', 'error')} ">
	<label for="aluno">
		<g:message code="alocacao.aluno.label" default="Aluno" />
		
	</label>
	<g:select name="aluno" from="${sisfit.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${alocacaoInstance?.aluno*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alocacaoInstance, field: 'modalidade', 'error')} ">
	<label for="modalidade">
		<g:message code="alocacao.modalidade.label" default="Modalidade" />
		
	</label>
	<g:select name="modalidade" from="${sisfit.Modalidade.list()}" multiple="multiple" optionKey="id" size="5" value="${alocacaoInstance?.modalidade*.id}" class="many-to-many"/>
</div>

