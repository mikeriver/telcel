<%@ page import="telcel.Telefono" %>



<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="telefono.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" maxlength="50" required="" value="${telefonoInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="telefono.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelo" maxlength="50" required="" value="${telefonoInstance?.modelo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'numeroSerie', 'error')} required">
	<label for="numeroSerie">
		<g:message code="telefono.numeroSerie.label" default="Numero Serie" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroSerie" maxlength="10" required="" value="${telefonoInstance?.numeroSerie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'numeroDeLinea', 'error')} required">
	<label for="numeroDeLinea">
		<g:message code="telefono.numeroDeLinea.label" default="Numero De Linea" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroDeLinea" type="number" value="${telefonoInstance.numeroDeLinea}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'anioDeFabricacion', 'error')} required">
	<label for="anioDeFabricacion">
		<g:message code="telefono.anioDeFabricacion.label" default="Anio De Fabricacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="anioDeFabricacion" precision="day"  value="${telefonoInstance?.anioDeFabricacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: telefonoInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="telefono.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" value="${fieldValue(bean: telefonoInstance, field: 'precio')}" required=""/>

</div>

