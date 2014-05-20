package sisfit

import sun.util.calendar.BaseCalendar.Date;
import sisfit.Aluno

class Aluno {

	String nome
	int cpf
	int rg
	java.sql.Date nascimento
	int telefone
	String endereco
	String observacoes
	String avaliacaoFisica
	Modalidade modalidade
	Turma turma
	
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
			modalidade column: 'modalidade'
			turma column: 'turma'
		}
		
	}
	
    static constraints = {
		avaliacaoFisica maxSize: 5000
    }
}
