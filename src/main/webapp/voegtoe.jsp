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
            <li><a href="overzicht.jsp">Overzicht</a></li>
        </ul>
    </nav>
</header>

<main>
    <h1>
        Voeg een gitaar toe
    </h1>

    <form>
        <label for="type">Type gitaar:</label>
        <select name="test" id="type">
            <option value="elek">Elektrische gitaar</option>
            <option value="klass">Klassieke gitaar</option>
            <option value="akoe">Akoestische gitaar</option>
        </select>
    </form>

    <form>
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
    </form>

    <form>
        <label for="price">Prijs: &euro;</label>
        <input type="number" id="price" name="price" min="0" step="0.01">
    </form>

    <div style="margin-top: 2rem">
        <label for="brand" class="ratingLabel">Rating:</label>
        <form class="rate">
            <input type="radio" id="star5" name="rate" value="5" />
            <label for="star5" title="5"></label>
            <input type="radio" id="star4" name="rate" value="4" />
            <label for="star4" title="4"></label>
            <input type="radio" id="star3" name="rate" value="3" />
            <label for="star3" title="3"></label>
            <input type="radio" id="star2" name="rate" value="2" />
            <label for="star2" title="2"></label>
            <input type="radio" id="star1" name="rate" value="1" />
            <label for="star1" title="1"></label>
        </form>
    </div>

    <input class="submit" type="submit" value="Submit">
</main>

<footer>
    <small>Made with &hearts; by Jasper Heldenbergh</small>
</footer>
</body>
</html>