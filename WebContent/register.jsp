<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modulo CRUD</title>
</head>
<s:head />
<sx:head />
<body>
	<sx:tabbedpanel id="formCrud">
		<sx:div label="Modulo CRUD Register">
			<s:form action="alta.action" method="post">
				<s:push value="register">
					<s:hidden key="id" />
					<s:textfield key="nombre" label="Nombre" />
					<s:radio name="genero" label="Genero" list="{'Masculino', 'Femenino'}" />
					<s:select name="ciudad" label="Ciudad" list="{'Puebla', 'Oaxaca', 'Morelos', 'Tlaxcala'}" headerKey="1" headerValue="Selecciona una Ciudad" />
					<s:textarea key="descripcion" label="Descripción" />
					<s:checkbox name="desarrollador" label="¿Tiene experiencia en SIABEL?" />
					<s:submit value="Aceptar" />
					<s:reset value="Limpiar" />
				</s:push>
			</s:form>
			<h2>Listado de Personas</h2>
			<br>
			<table>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>Genero</th>
					<th>Ciudad</th>
					<th>Descripción</th>
					<th>Desarrollador</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
				<s:iterator value="listRegister">
					<tr>
						<td><s:property value="id" /></td>
						<td><s:property value="nombre" /></td>
						<td><s:property value="genero" /></td>
						<td><s:property value="ciudad" /></td>
						<td><s:property value="descripcion" /></td>
						<td><s:property value="desarrollador" /></td>
						<td>
							<s:url id="editURL" action="editar">
								<s:param name="id" value="%{id}" />
							</s:url>
							<s:a href="%{editURL}">Editar</s:a>
						</td>
						<td>
							<s:url id="deleteURL" action="baja">
								<s:param name="id" value="%{id}" />
							</s:url>
							<s:a href="%{deleteURL}">Eliminar</s:a>
						</td>
					</tr>
				</s:iterator>
			</table>	
		</sx:div>
	</sx:tabbedpanel>
</body>
</html>