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
            <li><a href="index.jsp">Home</a></li>
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
            <select name="test" id="type">
                <option value="elek">Elektrische gitaar</option>
                <option value="klass">Klassieke gitaar</option>
                <option value="akoe">Akoestische gitaar</option>
            </select>
        </div>
        <div class="field">
            <label for="brand">Merk gitaar:</label>
            <select name="test" id="brand">
                <option value="fen">Fender</option>
                <option value="gib">Gibson</option>
                <option value="gnl">G&L</option>
                <option value="ric">Rickenbacker</option>
                <option value="jac">Jackson</option>
                <option value="epi">Epiphone</option>
                <option value="iba">Ibanez</option>
            </select>
        </div>
        <div class="field">
            <label for="prijs">Prijs: &euro;</label>
            <input type="number" id="prijs" name="prijs" min="0" step="0.01">
        </div>
        <div class="score">
            <input type="range" name="score" id="score" min="0" max="5" step="1" value="0">
        </div>
        <button class="submit" type="submit">Submit</button>
    </form>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>