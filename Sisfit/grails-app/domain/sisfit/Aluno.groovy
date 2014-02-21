package sisfit

import sun.util.calendar.BaseCalendar.Date;

class Aluno {

	String nome
	int cpf
	int rg
	java.sql.Date nascimento
	int telefone
	String endereco
	String observacoes
	String avaliacaoFisica
	
	static mapping = {
		tablePerHierarchy false
		table 'aluno'
		columns{
			nome column:'nome'
			cpf column: 'cpf'
			rg column: 'rg'
			nascimento column: 'nascimento'
			telefone column: 'telefone'
			endereco column: 'endereco'
			observacoes column: 'observacoes'
			avaliacaoFisica column:'avaliacaoFisica'
		}
		
	}
	
    static constraints = {
		avaliacaoFisica maxSize: 5000
    }
}
