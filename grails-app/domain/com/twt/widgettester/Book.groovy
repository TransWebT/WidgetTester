package com.twt.widgettester

import java.util.Date;

class Book {
	String title
	String subtitle
	String description
	Date publishDate
	int pages

	static constraints = {
	   title(blank:false)
	   subtitle()
	   author()
	   publisher()
	   description(maxSize:1000, nullable:true)
	   publishDate()
	}

	static belongsTo = [author: Author, publisher: Publisher]

	String toString() {
		return title
	}
}
