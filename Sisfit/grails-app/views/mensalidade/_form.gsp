<%@ page import="sisfit.Mensalidade" %>



<div class="fieldcontain ${hasErrors(bean: mensalidadeInstance, field: 'ano', 'error')} required">
	<label for="ano">
		<g:message code="mensalidade.ano.label" default="Ano" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ano" type="number" value="${mensalidadeInstance.ano}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: mensalidadeInstance, field: 'mes', 'error')} ">
	<label for="mes">
		<g:message code="mensalidade.mes.label" default="Mes" />
		
	</label>
	<g:textField name="mes" value="${mensalidadeInstance?.mes}"/>
</div>

