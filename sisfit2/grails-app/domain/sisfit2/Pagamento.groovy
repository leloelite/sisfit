package sisfit2

import sisfit2.Aluno;

class Pagamento {

	java.util.Date datapg
	double valor
	Aluno aluno
	java.util.Date mensalidade
			
	
    static constraints = {
		
    }
	
	static mapping = {
		table 'pagamento'
			columns {
				
				datapg column: 'datapg'
				valor column: 'valor'
				mensalidade column: 'mensalidade'
				aluno column: 'aluno'
			}
	}
}
