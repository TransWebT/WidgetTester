<%@ page import="com.twt.widgettester.Publisher" %>



<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="publisher.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${publisherInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="publisher.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${publisherInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="publisher.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${publisherInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="publisher.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${publisherInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="publisher.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${publisherInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="publisher.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${publisherInstance?.zip}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'phone', 'error')} ">
	<label for="phone">
		<g:message code="publisher.phone.label" default="Phone" />
		
	</label>
	<g:textField name="phone" value="${publisherInstance?.phone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="publisher.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${publisherInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['publisher.id': publisherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>

</div>

