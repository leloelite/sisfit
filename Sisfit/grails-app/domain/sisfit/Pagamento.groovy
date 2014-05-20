package sisfit

import org.joda.time.YearMonth;

import com.sun.org.apache.xerces.internal.impl.dv.xs.YearMonthDV;

import sun.util.calendar.BaseCalendar.Date;

class Pagamento {

	java.sql.Date datapg
	double valor
	Aluno aluno
	java.sql.Date mensalidade
			
	
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
