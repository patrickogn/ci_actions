<%--
  Created by IntelliJ IDEA.
  User: patricknielsen
  Date: 25/08/2022
  Time: 14.33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Velkommen</title>
</head>
<body>


<h1>Hej amalie!</h1>

<h1>Hej med digdawdawdaw!</h1>




    <h1>Personer i databasen:</h1>

    <form method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Fornavn</th>
                <th>Efternavn</th>
                <th>Kodeord</th>
                <th>Telefonnummer</th>
                <th>Adresse</th>
            </tr>

            </thead>
            <tbody>

            <script>
                console.log('hej');
                console.log('med');
                console.log('dig');
            </script>

            <c:forEach var="stock" items="${requestScope.stockliste}">
                <tr>
                    <td>${stock.stockid}</td>
                    <td>${stock.description}</td>
                    <td>${stock.length}</td>
                    <td>${stock.unit}</td>
                    <td>${stock.price_per_unit}</td>
                    <td>${stock.price_per_unit}</td>
                    <td>

                        <button class="btn btn-primary submit px-3" style="background-color: #c82333"
                                    name="fjernstock" value="${stock.stockid}"
                                    formaction="${pageContext.request.contextPath}/fc/fjernstock?command=fjernstock">fjern</button>

                        <button class="btn btn-primary submit px-3" style="background-color: #000C66"
                                    name="redigerstock" value="${stock.stockid}" formaction="${pageContext.request.contextPath}/fc/redigerstock?command=redigerstock">rediger</button>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <button class="btn btn-primary submit px-3" style="background-color: #000C66"
                name="opret" formaction="${pageContext.request.contextPath}/fc/opretstockside?command=opretstockside">Opret</button>
    </form>



</body>
</html>
