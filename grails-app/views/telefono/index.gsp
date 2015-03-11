
<%@ page import="telcel.Telefono" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-telefono" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-telefono" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="marca" title="${message(code: 'telefono.marca.label', default: 'Marca')}" />
					
						<g:sortableColumn property="modelo" title="${message(code: 'telefono.modelo.label', default: 'Modelo')}" />
					
						<g:sortableColumn property="numeroSerie" title="${message(code: 'telefono.numeroSerie.label', default: 'Numero Serie')}" />
					
						<g:sortableColumn property="numeroDeLinea" title="${message(code: 'telefono.numeroDeLinea.label', default: 'Numero De Linea')}" />
					
						<g:sortableColumn property="anioDeFabricacion" title="${message(code: 'telefono.anioDeFabricacion.label', default: 'Anio De Fabricacion')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'telefono.precio.label', default: 'Precio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${telefonoInstanceList}" status="i" var="telefonoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${telefonoInstance.id}">${fieldValue(bean: telefonoInstance, field: "marca")}</g:link></td>
					
						<td>${fieldValue(bean: telefonoInstance, field: "modelo")}</td>
					
						<td>${fieldValue(bean: telefonoInstance, field: "numeroSerie")}</td>
					
						<td>${fieldValue(bean: telefonoInstance, field: "numeroDeLinea")}</td>
					
						<td><g:formatDate date="${telefonoInstance.anioDeFabricacion}" /></td>
					
						<td>${fieldValue(bean: telefonoInstance, field: "precio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${telefonoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
