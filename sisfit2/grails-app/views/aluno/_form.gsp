<%@ page import="sisfit2.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'avaliacaoFisica', 'error')} ">
	<label for="avaliacaoFisica">
		<g:message code="aluno.avaliacaoFisica.label" default="Avaliacao Fisica" />
		
	</label>
	<g:textArea name="avaliacaoFisica" cols="40" rows="5" maxlength="5000" value="${alunoInstance?.avaliacaoFisica}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="aluno.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cpf" type="number" value="${alunoInstance.cpf}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="aluno.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${alunoInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'modalidade', 'error')} required">
	<label for="modalidade">
		<g:message code="aluno.modalidade.label" default="Modalidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="modalidade" name="modalidade.id" from="${sisfit2.Modalidade.list()}" optionKey="id" optionValue="nome" multiple="multiple" required="" value="${alunoInstance?.modalidade?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="aluno.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${alunoInstance?.nascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="aluno.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textField name="observacoes" value="${alunoInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="aluno.rg.label" default="Rg" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rg" type="number" value="${alunoInstance.rg}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="aluno.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefone" type="number" value="${alunoInstance.telefone}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'turma', 'error')} required">
	<label for="turma">
		<g:message code="aluno.turma.label" default="Turma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="turma" name="turma.id" from="${sisfit2.Turma.list()}" optionKey="id" optionValue="diaSemana" required="" value="${alunoInstance?.turma?.id}" class="many-to-one"/>
</div>

