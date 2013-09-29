
<%@ page import="com.twt.widgettester.Publisher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-publisher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="grid"><g:message code="default.grid.label" args="[entityName]" /></g:link></li>
                <li><g:link class="list" action="plot"><g:message code="default.plot.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-publisher" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list publisher">
			
				<g:if test="${publisherInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="publisher.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${publisherInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="publisher.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${publisherInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="publisher.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${publisherInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="publisher.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${publisherInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="publisher.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${publisherInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="publisher.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${publisherInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="publisher.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${publisherInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${publisherInstance?.books}">
				<li class="fieldcontain">
					<span id="books-label" class="property-label"><g:message code="publisher.books.label" default="Books" /></span>
					
						<g:each in="${publisherInstance.books}" var="b">
						<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:publisherInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${publisherInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
