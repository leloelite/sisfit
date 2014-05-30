import sisfit2.User
import grails.util.GrailsUtil

class BootStrap {

    def init = { servletContext ->
    switch(GrailsUtil.environment){
      case "development":
        def admin = new User(login:"admin", 
                             password:"password", 
                             name:"Administrator", 
                             role:"admin")
        admin.save()
      
        def jdoe = new User(login:"jdoe", 
                            password:"password", 
                            name:"John Doe", 
                            role:"author")
        //snip...
        
        def jsmith = new User(login:"jsmith", 
                            password:"wordpass", 
                            name:"Jane Smith", 
                            role:"author")
        //snip...
        
      break

      case "production":
      break
    }

  }
  def destroy = {
  }
}
