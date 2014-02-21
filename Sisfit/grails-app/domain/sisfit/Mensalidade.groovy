package sisfit

class Mensalidade {

	String mes
	int ano
	
    static constraints = {
		table 'mensalidade'
		columns{
			mes column: mes
			ano column: ano 
		}
    }
}
