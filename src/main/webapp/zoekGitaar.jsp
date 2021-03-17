<%@ page import="domain.model.Gitaar" %>
<%@ page import="domain.db.GitaarDB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Custom Google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
    <!-- Reference to the css file -->
    <link rel="stylesheet" href="CSS/style.css">
    <title>Gitaar</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="Controller?command=index">Home</a></li>
            <li><a href="voegtoe.jsp">Voeg toe</a></li>
            <li><a href="Controller?command=overzicht">Overzicht</a></li>
            <li class="actief"><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1 id="cancelh1">
        Zoek een gitaar op:
    </h1>
    <form class="zoekForm" action="Controller?command=search" method="POST" novalidate>
        <div class="field">
            <!-- Zoek op type van gitaar -->
            <label for="typenaam">Type gitaar:</label>
            <select name="typenaam" id="typenaam">
                <option selected value="Elektrisch">Elektrische gitaar</option>
                <option value="Klassiek">Klassieke gitaar</option>
                <option value="Akoestisch">Akoestische gitaar</option>
            </select>
        </div>
        <div class="field">
            <!-- Zoek op merk van gitaar -->
            <label for="merknaam">Merk gitaar:</label>
            <select name="merknaam" id="merknaam">
                <option selected value="Fender">Fender</option>
                <option value="Gibson">Gibson</option>
                <option value="G&L">G&L</option>
                <option value="Rickenbacker">Rickenbacker</option>
                <option value="Jackson">Jackson</option>
                <option value="Epiphone">Epiphone</option>
                <option value="Ibanez">Ibanez</option>
            </select>
        </div>
        <input id="zoekSubmit" type="submit">
    </form>
    <% if ( request.getAttribute("resultaten") != null ) { %>
    <% ArrayList<Gitaar> resultaten = (ArrayList<Gitaar>) request.getAttribute("resultaten"); %>
    <% if ( resultaten.size() != 0 ) { %>

    <table align="center">
        <thead>
        <tr>
            <th>Type</th>
            <th>Merk</th>
            <th>Prijs</th>
            <th>Score</th>
            <th>Verwijder</th>
        </tr>
        </thead>
        <tbody>
        <% GitaarDB db = (GitaarDB) request.getAttribute("db"); %>
        <% for (Gitaar gitaar: resultaten) { %>
        <tr>
            <td><%=gitaar.getType()%></td>
            <td><%=gitaar.getMerk()%></td>
            <td>&euro;<%=gitaar.getPrijs()%></td>
            <td><%=gitaar.getScore()%></td>
            <td>
                <a style="color: red;" href="Controller?command=deleteConfirmation&typenaam=<%=gitaar.getType()%>&merknaam=<%=gitaar.getMerk()%>">Remove</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } else { %>
    <p>Zoekopdracht heeft geen resultaten opgeleverd.</p>
    <% } %>
    <% } %>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>