<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/trecho_codigos"/>" method="post">
  
  <c:if test="${not empty trecho_codigo.id}">
    <input type="hidden" name="trecho_codigo.id" value="${trecho_codigo.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input type="text" name="trecho_codigo.nome" value="${trecho_codigo.nome}"/>
  </div>
  <div class="field">
    Tags:<br />
    <input type="text" name="trecho_codigo.tags" value="${trecho_codigo.tags}"/>
  </div>
  <div class="field">
    Linguagem:<br />
    <input type="text" name="trecho_codigo.linguagem" value="${trecho_codigo.linguagem}"/>
  </div>
  <div class="field">
    Trecho:<br />
    <input type="text" name="trecho_codigo.trecho" value="${trecho_codigo.trecho}"/>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/trecho_codigos"/>">Back</a>

