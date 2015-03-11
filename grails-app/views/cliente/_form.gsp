<%@ page import="telcel.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${clienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="cliente.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="50" required="" value="${clienteInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="cliente.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="50" required="" value="${clienteInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="cliente.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${clienteInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="cliente.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" required="" value="${clienteInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="cliente.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${clienteInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="cliente.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${clienteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="cliente.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidad" required="" value="${clienteInstance?.localidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="cliente.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${clienteInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="cliente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sexo" required="" value="${clienteInstance?.sexo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefonos', 'error')} ">
	<label for="telefonos">
		<g:message code="cliente.telefonos.label" default="Telefonos" />
		
	</label>
	<g:select name="telefonos" from="${telcel.Telefono.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.telefonos*.id}" class="many-to-many"/>

</div>

