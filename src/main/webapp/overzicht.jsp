<%@ page import="domain.model.Gitaar" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.db.GitaarDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    GitaarDB db = (GitaarDB) request.getAttribute("db");
    ArrayList<Gitaar> gitaarLijst = db.getGitaarList();
%>
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
            <li><a href="Controller?command=home">Home</a></li>
            <li><a href="voegtoe.jsp">Voeg toe</a></li>
            <li class="actief"><a href="Controller?command=overzicht">Overzicht</a></li>
            <li><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>
        Lijst van de gitaren
    </h1>

    <table>
        <tr>
            <th>Type</th>
            <th>Merk</th>
            <th>Prijs</th>
            <th>Score</th>
            <th>Verwijder</th>
        </tr>
        <%
            for (Gitaar gitaar : gitaarLijst) {
        %>
        <tr>
            <td><%=gitaar.getType()%></td>
            <td><%=gitaar.getMerk()%></td>
            <td>&euro;<%=gitaar.getPrijs()%></td>
            <td><%=gitaar.getScore()%></td>
            <td>
                <a href="Controller?command=deleteConfirmation&typenaam=<%=gitaar.getType()%>">Remove</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>