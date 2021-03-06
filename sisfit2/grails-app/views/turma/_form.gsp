<%@ page import="sisfit2.Turma" %>



<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'diaSemana', 'error')} ">
	<label for="diaSemana">
		<g:message code="turma.diaSemana.label" default="Dia Semana" />
		
	</label>
	<g:textField name="diaSemana" value="${turmaInstance?.diaSemana}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'horaFim', 'error')} required">
	<label for="horaFim">
		<g:message code="turma.horaFim.label" default="Hora Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horaFim" value="${fieldValue(bean: turmaInstance, field: 'horaFim')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'horaInicio', 'error')} required">
	<label for="horaInicio">
		<g:message code="turma.horaInicio.label" default="Hora Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horaInicio" value="${fieldValue(bean: turmaInstance, field: 'horaInicio')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: turmaInstance, field: 'modalidade', 'error')} required">
	<label for="modalidade">
		<g:message code="turma.modalidade.label" default="Modalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modalidade" name="modalidade.id" from="${sisfit2.Modalidade.list()}" optionKey="id" required="" optionValue="nome" value="${turmaInstance?.modalidade?.id}" class="many-to-one"/>

</div>

