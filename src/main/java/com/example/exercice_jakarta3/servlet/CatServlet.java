package com.example.exercice_jakarta3.servlet;

import com.example.exercice_jakarta3.entity.Cat;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "catServlet", urlPatterns = "/addCat")
public class CatServlet extends HttpServlet {
    @Override
    public void init() {
        if (getServletContext().getAttribute("cats") == null) {
            getServletContext().setAttribute("cats", new ArrayList<Cat>());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/jsp/addCat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String breed = request.getParameter("breed");
        String favoriteMeal = request.getParameter("favoriteMeal");
        String birthDate = request.getParameter("birthDate");

        Cat newCat = new Cat(name, breed, favoriteMeal, birthDate);
        List<Cat> cats = (List<Cat>) getServletContext().getAttribute("cats");
        cats.add(newCat);

        response.sendRedirect(request.getContextPath() + "/cats");
    }
}
