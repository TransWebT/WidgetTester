<%@ page import="com.twt.widgettester.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'subtitle', 'error')} ">
	<label for="subtitle">
		<g:message code="book.subtitle.label" default="Subtitle" />
		
	</label>
	<g:textField name="subtitle" value="${bookInstance?.subtitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${com.twt.widgettester.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="publisher" name="publisher.id" from="${com.twt.widgettester.Publisher.list()}" optionKey="id" required="" value="${bookInstance?.publisher?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="book.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1000" value="${bookInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishDate', 'error')} required">
	<label for="publishDate">
		<g:message code="book.publishDate.label" default="Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publishDate" precision="day"  value="${bookInstance?.publishDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'pages', 'error')} required">
	<label for="pages">
		<g:message code="book.pages.label" default="Pages" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pages" type="number" value="${bookInstance.pages}" required=""/>
</div>

