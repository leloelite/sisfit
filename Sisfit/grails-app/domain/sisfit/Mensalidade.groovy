package sisfit

class Mensalidade {

	String mes
	int ano
	
    static constraints = {
		
    }
	
	static mapping = {
		table 'mensalidade'
		columns{
			mes column: 'mes'
			ano column: 'ano'
		}
	}
}
