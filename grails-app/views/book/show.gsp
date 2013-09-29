
<%@ page import="com.twt.widgettester.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="book.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bookInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.subtitle}">
				<li class="fieldcontain">
					<span id="subtitle-label" class="property-label"><g:message code="book.subtitle.label" default="Subtitle" /></span>
					
						<span class="property-value" aria-labelledby="subtitle-label"><g:fieldValue bean="${bookInstance}" field="subtitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="book.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="author" action="show" id="${bookInstance?.author?.id}">${bookInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="book.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:link controller="publisher" action="show" id="${bookInstance?.publisher?.id}">${bookInstance?.publisher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="book.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bookInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publishDate}">
				<li class="fieldcontain">
					<span id="publishDate-label" class="property-label"><g:message code="book.publishDate.label" default="Publish Date" /></span>
					
						<span class="property-value" aria-labelledby="publishDate-label"><g:formatDate date="${bookInstance?.publishDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.pages}">
				<li class="fieldcontain">
					<span id="pages-label" class="property-label"><g:message code="book.pages.label" default="Pages" /></span>
					
						<span class="property-value" aria-labelledby="pages-label"><g:fieldValue bean="${bookInstance}" field="pages"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
