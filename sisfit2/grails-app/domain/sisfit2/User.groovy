package sisfit2

class User {

	static constraints = {
		login(unique:true)
		password(password:true)
		name()
		role(inList:["author", "admin"])
	  }
	  
	  static hasMany = [entries:Aluno]
	  
	  String login
	  String password
	  String name
	  String role = "author"
	  
	  String toString(){
		name
	  }
	}