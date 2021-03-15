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
/*
    public Gitaar {
        Gitaar gitaar1 = new Gitaar("Klassiek", "Fender", 299.99, 3);

    }*/

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String type = request.getParameter("type");
    }

    public void destroy() {
    }
}