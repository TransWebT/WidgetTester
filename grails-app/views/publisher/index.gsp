
<%@ page import="com.twt.widgettester.Publisher" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-publisher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-publisher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'publisher.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'publisher.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'publisher.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'publisher.city.label', default: 'City')}" />
					
						<g:sortableColumn property="state" title="${message(code: 'publisher.state.label', default: 'State')}" />
					
						<g:sortableColumn property="zip" title="${message(code: 'publisher.zip.label', default: 'Zip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${publisherInstanceList}" status="i" var="publisherInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${publisherInstance.id}">${fieldValue(bean: publisherInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: publisherInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "state")}</td>
					
						<td>${fieldValue(bean: publisherInstance, field: "zip")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${publisherInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
