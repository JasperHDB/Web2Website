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
            <li class="actief"><a href="Controller?command=overzicht">Overzicht</a></li>
            <li><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1 id="cancelh1">Wil je deze gitaar verwijderen van de lijst?
    </h1>
    <div class="container">
        <p id="cancelp"><%=request.getParameter("typenaam")%>e gitaar van het merk <%=request.getParameter("merknaam")%></p>
        <form action="Controller?command=delete&typenaam=<%=request.getParameter("typenaam")%>" method="POST">
            <div>
                <input class="submit" type="submit" value="Confirm"/>
                <input id="cancelbutton" class="submit" type="submit" value="Cancel" formaction="Controller?command=overzicht"/>
            </div>
        </form>
    </div>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>