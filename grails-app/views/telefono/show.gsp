
<%@ page import="telcel.Telefono" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-telefono" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-telefono" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list telefono">
			
				<g:if test="${telefonoInstance?.marca}">
				<li class="fieldcontain">
					<span id="marca-label" class="property-label"><g:message code="telefono.marca.label" default="Marca" /></span>
					
						<span class="property-value" aria-labelledby="marca-label"><g:fieldValue bean="${telefonoInstance}" field="marca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${telefonoInstance?.modelo}">
				<li class="fieldcontain">
					<span id="modelo-label" class="property-label"><g:message code="telefono.modelo.label" default="Modelo" /></span>
					
						<span class="property-value" aria-labelledby="modelo-label"><g:fieldValue bean="${telefonoInstance}" field="modelo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${telefonoInstance?.numeroSerie}">
				<li class="fieldcontain">
					<span id="numeroSerie-label" class="property-label"><g:message code="telefono.numeroSerie.label" default="Numero Serie" /></span>
					
						<span class="property-value" aria-labelledby="numeroSerie-label"><g:fieldValue bean="${telefonoInstance}" field="numeroSerie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${telefonoInstance?.numeroDeLinea}">
				<li class="fieldcontain">
					<span id="numeroDeLinea-label" class="property-label"><g:message code="telefono.numeroDeLinea.label" default="Numero De Linea" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeLinea-label"><g:fieldValue bean="${telefonoInstance}" field="numeroDeLinea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${telefonoInstance?.anioDeFabricacion}">
				<li class="fieldcontain">
					<span id="anioDeFabricacion-label" class="property-label"><g:message code="telefono.anioDeFabricacion.label" default="Anio De Fabricacion" /></span>
					
						<span class="property-value" aria-labelledby="anioDeFabricacion-label"><g:formatDate date="${telefonoInstance?.anioDeFabricacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${telefonoInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="telefono.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${telefonoInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:telefonoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${telefonoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
