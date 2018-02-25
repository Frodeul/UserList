package userlist

class UserController {
	def UserService

    def index() { 
    	String address = request.getRemoteAddr()
    	String method = request.method
    	UserService.createEntry(address, method)
    	redirect(url: "/")
    }
}
