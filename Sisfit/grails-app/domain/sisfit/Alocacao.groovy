package sisfit

import org.hibernate.annotations.ForeignKey;

class Alocacao {

	static hasMany = [aluno:Aluno, modalidade:Modalidade]
    static constraints = {
    }
	
	static mapping = {
		table 'alocacao'
		columns{
			aluno column: 'id'
			aluno column: 'nome'
			modalidade column: 'id'
			modalidade column:'nome'
		}
	}
}
