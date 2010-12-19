<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<p>
  <b>Nome:</b>
   ${trecho_codigo.nome}
</p>
<p>
  <b>Tags:</b>
   ${trecho_codigo.tags}
</p>
<p>
  <b>Linguagem:</b>
   ${trecho_codigo.linguagem}
</p>
<p>
  <b>Trecho:</b>
   ${trecho_codigo.trecho}
</p>

<a href="<c:url value="/trecho_codigos/${trecho_codigo.id}/edit"/>">Edit</a>
<a href="<c:url value="/trecho_codigos"/>">Back</a>

</body>
