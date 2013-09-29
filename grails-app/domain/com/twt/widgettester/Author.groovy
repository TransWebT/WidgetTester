package com.twt.widgettester

class Author {
	String lastName
	String firstName
	String email

	static hasMany = [books: Book]

	static constraints = {
		firstName(blank:false)
		lastName(blank:false)
		email()
		books()
	}

	String toString() {
		return "$lastName, $firstName"
	}
}
