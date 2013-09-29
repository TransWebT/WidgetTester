
<%@ page import="com.twt.widgettester.Publisher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<link rel="stylesheet" type="text/css" media="screen" href="${resource(dir: '/jquery-ui-1.10.3/css/le-frog', file: 'jquery-ui-1.10.3.custom.css')}" />
		<link rel="stylesheet" type="text/css" media="screen" href="${resource(dir: '/jquery.jqGrid-4.5.2/css', file: 'ui.jqgrid.css')}" />
 
 		<script type="text/javascript" src="${resource(dir: '/jquery.jqGrid-4.5.2/js/', file: 'jquery-1.9.0.min.js')}"></script>
  		<script type="text/javascript" src="${resource(dir: '/jquery.jqGrid-4.5.2/js/i18n/', file: 'grid.locale-en.js')}"></script>
  		<script type="text/javascript" src="${resource(dir: '/jquery.jqGrid-4.5.2/js/', file: 'jquery.jqGrid.min.js')}"></script>
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
			
			<script type="text/javascript">		
			$(document).ready(function() {
			  jQuery("#list").jqGrid({
			    datatype: 'json',
			    url: "${createLink(controller: 'publisher', action: 'listJSON')}",
			    colNames:['Id', 'Name','Address1', 'Address2','City','State', 'Zipcode', 'Phone'],
			    colModel :[ 
			      {name:'id', index:'id', width:30, sorttype:'int'}, 
			      {name:'name', index:'name', width:140, align:'left', sorttype:'text'}, 
			      {name:'address1', index:'address1', width:120, align:'left', sorttype:'text'}, 
			      {name:'address2', index:'address2', width:120, align:'left', sorttype:'text'}, 
			      {name:'city', index:'city', width:80, align:'left', sorttype:'text'}, 
			      {name:'state', index:'state', width:40, align:'left', sorttype:'text'}, 
			      {name:'zip', index:'zip', width:60, align:'left', sorttype:'text'}, 
			      {name:'phone', index:'phone', width:80, align:'left', sorttype:'text'}
			    ],
			    pager: '#pager',
			    rowNum:10,
				rowList:[10,20,30],
				sortname: 'name',
				sortorder: 'desc',
			    viewrecords: true,
			    jsonReader: {
			        root: "jsonData",
			        repeatitems: false,
			        subgrid: {
						root: "jsonData", 
						repeatitems: false, 
					}
			     },
			     caption: 'JSON Example',
				gridview: true,
				subGrid : true, 
				subGridUrl: "${createLink(controller: 'book', action: 'fetchBooksByPublisherIdAsJSON')}", 
				subGridModel: [
					{
						name : ['Title', 'Subtitle', 'PublishDate', 'Pages', 'Description'],
						width : [100, 100, 125, 30, 200],
						mapping : ['title', 'subtitle', 'publishDate', 'pages', 'description'],
						params: ['id']
					} 
				],
				altRows: true,
				altclass:'myAltRowClass'
			  }); 
			  
			  $(".ui-jqgrid-titlebar").hide();
			  $("#pager").hide();
			  // $([list]).setGridWidth(550,true);
			  $([list]).setGridHeight(307,true);
			  
			  // $([list].find(tbody tr), 
			  // $("tr:not(:has('.myAltRowClass'))").addClass("myAltRowClassEven");
			});
			</script>

			<table id="list"><tr><td/></tr></table> 
			<div id="pager"></div> 
		</div>
	</body>
</html>
