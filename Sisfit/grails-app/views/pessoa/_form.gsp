<%@ page import="sisfit.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${pessoaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="pessoa.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefone" type="number" value="${pessoaInstance.telefone}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="pessoa.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpf" type="number" value="${pessoaInstance.cpf}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="pessoa.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${pessoaInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${pessoaInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="pessoa.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textField name="observacoes" value="${pessoaInstance?.observacoes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="pessoa.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rg" type="number" value="${pessoaInstance.rg}" required=""/>
</div>

