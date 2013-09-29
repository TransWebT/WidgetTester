
<%@ page import="com.twt.widgettester.Publisher" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'publisher.label', default: 'Publisher')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

        <!--[if lt IE 9]><script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/', file: 'excanvas.js')}"></script><![endif]-->
        <script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/', file: 'jquery.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/', file: 'jquery.jqplot.js')}"></script>
        <script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/plugins', file: 'jqplot.barRenderer.js')}"></script>
        <script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/plugins', file: 'jqplot.categoryAxisRenderer.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: '/jquery.jqPlot-1.0.8r1250/plugins', file: 'jqplot.pointLabels.min.js')}"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${resource(dir: '/jquery.jqPlot-1.0.8r1250', file: 'jquery.jqplot.css')}" />
	</head>
	<body>
		<a href="#list-publisher" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="plot-publisher" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

            <div id="chart1" style="width:950px; height:250px;"></div>

        </div>


        <script class="code" type="text/javascript">
            // This chart is a sample used to try to identify an issue involving bars disappearing when too many data points are rendered.
            // todo: This chart should graph books by publisher
            $(document).ready(function(){
                $.jqplot.config.enablePlugins = true;

                var s1 = new Array();
                var ticks = new Array();
                for (var i=0; i<100; i++) {
                    ticks[i] = "x" + i;
                    s1[i] = i*2;
                }

                plot1 = $.jqplot('chart1', [s1], {
                    // Only animate if we're not using excanvas (not in IE 7 or IE 8)..
                    animate: !$.jqplot.use_excanvas,
                    seriesDefaults:{
                        renderer:$.jqplot.BarRenderer,
                        pointLabels: { show: true }
                    },
                    axes: {
                        xaxis: {
                            renderer: $.jqplot.CategoryAxisRenderer,
                            ticks: ticks
                        }
                    },
                    highlighter: { show: false }
                });

                $('#chart1').bind('jqplotDataClick',
                        function (ev, seriesIndex, pointIndex, data) {
                            $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
                        }
                );
            });
        </script>


    </body>
</html>
