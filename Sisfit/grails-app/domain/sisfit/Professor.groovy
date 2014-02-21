package sisfit

class Professor {
	
	String nome
	int cpf
	java.sql.Date data
	int telefone
	int rg
	java.sql.Date nascimento
	String endereco
	String observacoes
	int ctps
	int cref
	
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
		}
	}
	
    static constraints = {
    }
}
