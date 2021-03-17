<%@ page import="domain.model.Gitaar" %>
<%@ page import="domain.db.GitaarDB" %>
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
            <li class="actief"><a href="index.jsp">Home</a></li>
            <li><a href="voegtoe.jsp">Voeg toe</a></li>
            <li><a href="Controller?command=overzicht">Overzicht</a></li>
            <li><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>
        Gitaar Keuzelijst
    </h1>

    <p>
        Op deze pagina staat een keuzelijst van gitaren <br>
        waarvan ik er een van ga kopen. Ik kan ze dan makkelijk <br>
        vergelijken met hun voor- en nadelen, en dan zo<br>
        de perfecte gitaar kopen.
    </p>
    <%Gitaar gitaar = (Gitaar) request.getAttribute("gitaar");%>
    <p>
        De duurste gitaar is momenteel de <%=gitaar.getType()%>e gitaar van het merk <%=gitaar.getMerk()%>
    </p>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>