package com.example.exercice_jakarta3.servlet;

import com.example.exercice_jakarta3.entity.Cat;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "catListServlet", urlPatterns = "/cats")
public class CatListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cat> cats = (List<Cat>) getServletContext().getAttribute("cats");
        req.setAttribute("cats", cats);
        req.getRequestDispatcher("/jsp/cats.jsp").forward(req, resp);
    }
}
