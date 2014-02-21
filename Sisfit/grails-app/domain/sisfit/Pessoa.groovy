package sisfit

class Pessoa {

	String nome
	int cpf
	java.sql.Date data
	int telefone
	int rg
	String endereco
	String observacoes
	
	static mapping = {
		tablePerHierarchy false
		
		}
	
    static constraints = {
		
		nome size: 3..50, blank: false
		telefone minLength: 8, size: 8..13
		
    }
}
