package sisfit

class Mensalidade {

	String mes
	int ano
	Aluno aluno 
	Modalidade modalidade

	
    static constraints = {
		
    }
	
	static mapping = {
		table 'mensalidade'
		columns{
			mes column: 'mes'
			ano column: 'ano'
			aluno column: 'aluno'
			modalidade column: 'modalidade'
		}
	}
}
