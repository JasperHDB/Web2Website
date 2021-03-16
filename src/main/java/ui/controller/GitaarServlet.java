package ui.controller;

import domain.db.GitaarDB;
import domain.model.Gitaar;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Gitaar", value = "/Gitaar")
public class GitaarServlet extends HttpServlet {
    private GitaarDB db = new GitaarDB();
/*
    public Gitaar() {
        Gitaar gitaar1 = new Gitaar("Klassiek", "Fender", 299.99, 3);
        Gitaar gitaar2 = new Gitaar("Akoestisch", "Epiphone", 228.19, 3);
        Gitaar gitaar3 = new Gitaar("Elektrisch", "Gibson", 90.50, 2);

        db.addGuitar(gitaar1);
        db.addGuitar(gitaar2);
        db.addGuitar(gitaar3);
    }*/

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
    }

    public void destroy() {
    }
}