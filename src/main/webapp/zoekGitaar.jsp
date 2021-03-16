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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="voegtoe.jsp">Voeg toe</a></li>
            <li><a href="Controller?command=overzicht">Overzicht</a></li>
            <li class="actief"><a href="zoekGitaar.jsp">Zoek</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1 style="text-align: center">
        Zoek een gitaar op:
    </h1>
    <div class="container" style="text-align: center">
        <form action="Controller?command=search" method="POST" novalidate>
            <!-- Zoek op type van gitaar -->
            <label for="typenaam">Type gitaar:</label>
            <select name="type" id="typenaam">
                <option value="elek">Elektrische gitaar</option>
                <option value="klass">Klassieke gitaar</option>
                <option value="akoe">Akoestische gitaar</option>
            </select>
        </form>
        <form>
            <!-- Zoek op merk van gitaar -->
            <label for="merknaam">Merk gitaar:</label>
            <select name="merk" id="merknaam">
                <option value="fen">Fender</option>
                <option value="gib">Gibson</option>
                <option value="gnl">G&L</option>
                <option value="ric">Rickenbacker</option>
                <option value="jac">Jackson</option>
                <option value="epi">Epiphone</option>
                <option value="iba">Ibanez</option>
            </select>
        </form>
        <input type="submit" value="Search">
    </div>
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>