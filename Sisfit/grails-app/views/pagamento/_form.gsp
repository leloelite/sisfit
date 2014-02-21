<%@ page import="sisfit.Pagamento" %>



<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="pagamento.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${pagamentoInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="pagamento.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: pagamentoInstance, field: 'valor')}" required=""/>
</div>

