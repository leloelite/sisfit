package sisfit

class Modalidade {
	
	String nome

    static constraints = {
		
    }
	
	static mapping = {
		table: 'modalidade'
		columns{
			nome column: 'nome'
		}
	}
}
