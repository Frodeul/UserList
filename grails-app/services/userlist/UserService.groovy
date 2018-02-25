package userlist

import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def createEntry(ipAddress, method) {
    	if (method == 'DELETE') {
    		UserEntry.executeUpdate('delete from UserEntry')
    	}
    	else {
	    	Date date = new Date()
	    	UserEntry entry = new UserEntry(entryDate: date, ipAddress: ipAddress, method: method)
	    	entry.save()	
    	}    	
    }

}
