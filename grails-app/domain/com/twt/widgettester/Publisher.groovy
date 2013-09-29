package com.twt.widgettester

class Publisher {
	String name
	String address1
	String address2
	String city
	String state
	String zip
	String phone

	static hasMany = [books:Book]

	static constraints = {
		name(blank:false)
		address1()
		address2(nullable:true)
		city()
		state()
		zip()
		phone()
		books()
	}

	String toString() {
		return name
	}
}
