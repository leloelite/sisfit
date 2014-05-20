<%@ page import="sisfit.Pagamento" %>



<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'aluno', 'error')} required">
	<label for="aluno">
		<g:message code="pagamento.aluno.label" default="Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="aluno" name="aluno.id" from="${sisfit.Aluno.list()}" optionKey="id" required="" value="${pagamentoInstance?.aluno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'datapg', 'error')} required">
	<label for="datapg">
		<g:message code="pagamento.datapg.label" default="Datapg" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datapg" precision="day"  value="${pagamentoInstance?.datapg}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'mensalidade', 'error')} required">
	<label for="mensalidade">
		<g:message code="pagamento.mensalidade.label" default="Mensalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="mensalidade" precision="day"  value="${pagamentoInstance?.mensalidade}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pagamentoInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="pagamento.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: pagamentoInstance, field: 'valor')}" required=""/>
</div>

