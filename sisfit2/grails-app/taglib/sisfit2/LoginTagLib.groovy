package sisfit2

class LoginTagLib {
    def loginControl = {
    if(session.user){
      out << "Ola ${session.user.name} "
      out << """[${link(action:"logout", controller:"user"){"Sair"}}]"""
    } else {
      out << """[${link(action:"login", controller:"user"){"Entrar"}}]"""      
    }
  }
}
