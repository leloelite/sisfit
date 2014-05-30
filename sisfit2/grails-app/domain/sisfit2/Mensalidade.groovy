package sisfit2

import sisfit2.Aluno;
import sisfit2.Modalidade;

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

