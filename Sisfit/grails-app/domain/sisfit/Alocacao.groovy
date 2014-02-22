package sisfit

import org.hibernate.annotations.ForeignKey;

class Alocacao {

	//static hasMany = [aluno:Aluno, modalidade:Modalidade]
	
	Aluno aluno
	Modalidade modalidade
    static constraints = {
    }
	
	
	static mapping = {
		table 'alocacao'
		columns{
			aluno column: 'aluno'
			modalidade column: 'modalidade'
//			id generator: 'id'
//			aluno joinTable: [name: "nomeAluno", key: 'id' ]
		}
		
	}
}
