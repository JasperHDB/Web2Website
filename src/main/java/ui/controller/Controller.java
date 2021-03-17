package ui.controller;

import domain.db.GitaarDB;
import domain.model.Gitaar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Controller", value = "/Controller")
public class Controller extends HttpServlet {
    private GitaarDB db = new GitaarDB();

    public Controller() {
        super();
    }

    public void init() throws ServletException {
        super.init();
        Gitaar a = new Gitaar("Klassiek", "Fender", 299.99, 3);
        Gitaar b = new Gitaar("Akoestisch", "Epiphone", 228.19, 3);
        Gitaar c = new Gitaar("Elektrisch", "Gibson", 90.50, 2);

        db.addGuitar(a);
        db.addGuitar(b);
        db.addGuitar(c);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
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
                destination = deleteConfirmation(request,response);
                break;
            case "voegtoe":
                destination = voegtoe(request, response);
                break;
            case "search":
                destination = search(request, response);
                break;
            case "delete":
                destination = delete(request, response);
                break;
            default :
                destination = index(request,response);
        }

        request.getRequestDispatcher(destination).forward(request,response);
    }

    private String index(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("db", db);
        request.setAttribute("gitaar", db.getPricedGuitar());
        return "index.jsp";
    }

    private String voegtoe (HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("typenaam");
        String merk  = request.getParameter("merknaam");
        double prijs = Double.parseDouble(request.getParameter("prijs"));
        int score = Integer.parseInt(request.getParameter("score"));

        if (!type.isEmpty() && !merk.isEmpty() && prijs > 0) {
            Gitaar gitaar = new Gitaar(type, merk, prijs, score);
            db.addGuitar(gitaar);
            return overzicht(request, response);
        }
        else {
            return "voegtoe.jsp";
        }
    }

    private String search(HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("typenaam");
        String merk = request.getParameter("merknaam");
        Gitaar gitaar = db.getGitaar(type, merk);

        if (gitaar == null) {
            request.setAttribute("message", "Deze gitaar zit niet in de lijst");
            return "zoekGitaar.jsp";
        } else {
            return "zoekGitaar.jsp";
        }
    }

    private String overzicht (HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("db",db);
        return "overzicht.jsp";
    }

    private String deleteConfirmation(HttpServletRequest request, HttpServletResponse response) {
        String type = request.getParameter("typenaam");
        String merk = request.getParameter("merknaam");
        request.setAttribute("Gitaar", db.getGitaar(type, merk));
        return "deleteConfirmation.jsp";
    }

    private String delete (HttpServletRequest request, HttpServletResponse response) {
        String typenaam = request.getParameter("typenaam");
        db.removeGuitar(typenaam);
        return overzicht(request, response);
    }
}