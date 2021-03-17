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
    <title>Gitaar | Voeg Toe</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="Controller?command=index">Home</a></li>
            <li class="actief"><a href="voegtoe.jsp">Voeg toe</a></li>
            <li><a href="Controller?command=overzicht">Overzicht</a></li>
            <li><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>
        Voeg een gitaar toe
    </h1>

    <form action="Controller?command=voegtoe" method="POST" novalidate>
        <div class="field">
            <label for="type">Type gitaar:</label>
            <select name="typenaam" id="type">
                <option value="Elektrisch">Elektrische gitaar</option>
                <option value="Klassiek">Klassieke gitaar</option>
                <option value="Akoestisch">Akoestische gitaar</option>
            </select>
        </div>
        <div class="field">
            <label for="merk">Merk gitaar:</label>
            <select name="merknaam" id="merk">
                <option value="Fender">Fender</option>
                <option value="Gibson">Gibson</option>
                <option value="G&L">G&L</option>
                <option value="Rickenbacker">Rickenbacker</option>
                <option value="Jackson">Jackson</option>
                <option value="Epiphone">Epiphone</option>
                <option value="Ibanez">Ibanez</option>
            </select>
        </div>
        <div class="field">
            <label for="prijs">Prijs: &euro;</label>
            <input type="number" id="prijs" name="prijs" min="0" step="0.01">
        </div>
        <div class="score">
            <div>
                <p class="stars">&#9733;&#9733;&#9733;&#9733;&#9733;</p>
            </div>
            <label for="score"></label>
            <input type="range" name="score" id="score" min="1" max="5" step="1" value="0">
        </div>
        <button class="submit" type="submit">Submit</button>
    </form>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>