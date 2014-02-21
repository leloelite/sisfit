package sisfit

class Turma {
	
	String diaSemana
	double horaInicio
	double horaFim
	
    static constraints = {
		
    }
	
	static mapping = {
		table 'turma'
			columns {
				diaSemana column: 'diaSemana'
				horaInicio column: 'horaInicio'
				horaFim Column: 'horaFim'
			}
	}
}
