<%@ page import="sisfit.Professor" %>



<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="professor.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpf" type="number" value="${professorInstance.cpf}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'cref', 'error')} required">
	<label for="cref">
		<g:message code="professor.cref.label" default="Cref" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cref" type="number" value="${professorInstance.cref}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'ctps', 'error')} required">
	<label for="ctps">
		<g:message code="professor.ctps.label" default="Ctps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ctps" type="number" value="${professorInstance.ctps}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="professor.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${professorInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="professor.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${professorInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="professor.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${professorInstance?.nascimento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="professor.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${professorInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="professor.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textField name="observacoes" value="${professorInstance?.observacoes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="professor.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rg" type="number" value="${professorInstance.rg}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: professorInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="professor.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefone" type="number" value="${professorInstance.telefone}" required=""/>
</div>

