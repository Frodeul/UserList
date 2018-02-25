package userlist

import grails.databinding.BindingFormat

class UserEntry {
	@BindingFormat('yyyy-MM-dd HH:mm:ss')
	Date entryDate
	String ipAddress
	String method
}
