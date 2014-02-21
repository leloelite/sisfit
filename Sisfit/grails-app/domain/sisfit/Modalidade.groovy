package sisfit

class Modalidade {
	
	String nome

    static constraints = {
		table: 'modalidade'
			columns{
				nome column: nome
			}
    }
}
