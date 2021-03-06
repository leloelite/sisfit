package sisfit2

import sisfit2.Modalidade;

class Professor {
	
	String nome
	int cpf
	java.util.Date data
	int telefone
	int rg
	java.util.Date nascimento
	String endereco
	String observacoes
	int ctps
	int cref
	Modalidade modalidade
	 
	static mapping = {
		tablePerHierarchy false
		table 'professor'
		columns{
			nome column:'nome'
			cpf column: 'cpf'
			rg column: 'rg'
			nascimento column: 'nascimento'
			telefone column: 'telefone'
			endereco column: 'endereco'
			observacoes column: 'observacoes'
			ctps column:'ctps'
			cref column: 'cref'
			modalidade:'modalidade'
		}	
	}
	
    static constraints = {
		
		modalidade size: 1..5
    }
}
