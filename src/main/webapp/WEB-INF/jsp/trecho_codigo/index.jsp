<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Listing Trecho_codigos</h1>

<table>
  <tr>
   <th>nome</th>
   <th>tags</th>
   <th>linguagem</th>
   <th>trecho</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${trecho_codigoList}" var="trecho_codigo">
  <tr>
      <td>
      ${trecho_codigo.nome}
    </td>
      <td>
      ${trecho_codigo.tags}
    </td>
      <td>
      ${trecho_codigo.linguagem}
    </td>
      <td>
      ${trecho_codigo.trecho}
    </td>
      <td><a href="<c:url value="/trecho_codigos/${trecho_codigo.id}"/>">show</a></td>
    <td><a href="<c:url value="/trecho_codigos/${trecho_codigo.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/trecho_codigos/${trecho_codigo.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/trecho_codigos/new"/>">New Trecho_codigo</a> 
</body>
