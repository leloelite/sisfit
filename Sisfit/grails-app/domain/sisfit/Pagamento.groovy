package sisfit

class Pagamento {

	java.sql.Date data
	double valor
	
    static constraints = {
    }
	
	static mapping = {
		table 'pagamento'
			columns {
				data column: 'data'
				valor column: 'valor'				
			}
	}
}
