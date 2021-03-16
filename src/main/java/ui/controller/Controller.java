package ui.controller;

import domain.db.GitaarDB;
import domain.model.Gitaar;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    private GitaarDB db = new GitaarDB();

    public Controller() {
        super();
        Gitaar a = new Gitaar("Klassiek", "Fender", 299.99, 3);
        Gitaar b = new Gitaar("Akoestisch", "Epiphone", 228.19, 3);
        Gitaar c = new Gitaar("Elektrisch", "Gibson", 90.50, 2);

        db.addGuitar(a);
        db.addGuitar(b);
        db.addGuitar(c);
    }

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = "home";

        if (request.getParameter("command") != null) {
            command = request.getParameter("command");
        }

        String destination;

        switch (command) {
            case "overzicht":
                destination = overzicht(request, response);
                break;
            case "deleteConfirmation":
                destination = getDeleteConfirmation();
                break;
            case "voegtoe":
                destination = voegToe(request, response);
                break;
            case "search":
                destination = search(request, response);
                break;
            case "delete":
                destination = delete(request, response);
                break;
            default:
                destination = index(request, response);
        }

        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String index(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("pricedGuitar", db.getPricedGuitar().getType());
        return "index.jsp";
    }

    private String overzicht (HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("Gitaren", db.getGitaarList());
        return "overzicht.jsp";
    }

    private String voegToe (HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("type-naam");
        String merk  = request.getParameter("merk-naam");
        double prijs = 2; /*AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH*/
        int score = Integer.parseInt(request.getParameter("score"));

        if (!type.trim().isEmpty() && !merk.trim().isEmpty() && prijs > 0) {
            Gitaar gitaar = new Gitaar(type, merk, prijs, score);
            db.addGuitar(gitaar);
            return overzicht(request, response);
        }
        else {
            return "voegtoe.jsp";
        }
    }

    private String search(HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("type-name");
        String merk = request.getParameter("merk-name");
        Gitaar gitaar = db.getGitaar(type, merk);

        if (gitaar == null) {
            request.setAttribute("message", "Deze gitaar zit niet in de lijst");
            return "zoekGitaar.jsp";
        } else {
            return overzicht(request, response, gitaar);
        }
    }

    private String overzicht (HttpServletRequest request, HttpServletResponse response, Gitaar gitaar) {
        ArrayList<Gitaar> gitaren = new ArrayList<>();
        gitaren.add(gitaar);
        request.setAttribute("tracks", gitaren);
        return "playlist.jsp";
    }

    private String getDeleteConfirmation() {
        return "deleteConfirmation.jsp";
    }

    private String delete (HttpServletRequest request, HttpServletResponse response) {
        String trackName = request.getParameter("track-name");
        db.removeGuitar(trackName);
        return overzicht(request, response);
    }
}