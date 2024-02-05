package com.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import bdUtil.InstructorDAO;

@Controller
@RequestMapping("/waterAnalysis")
public class WaterAnalysisController extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String month = request.getParameter("month");
        int numberOfDays = Integer.parseInt(request.getParameter("day"));
        double waterConsumption = Double.parseDouble(request.getParameter("water"));
        double waterConsumptionRM = Double.parseDouble(request.getParameter("waterRM"));
        double prorateFactor = Double.parseDouble(request.getParameter("factor"));

        InstructorDAO instructorDAO = new InstructorDAO();
        int rowsAffected = instructorDAO.addWaterAnalysisData(month, numberOfDays, waterConsumption, waterConsumptionRM, prorateFactor);

        if (rowsAffected > 0) {
            // Data inserted successfully
            response.sendRedirect("Getresults.jsp");
        } else {
            // Handle error
            response.getWriter().println("Error inserting data");
        }
    }
}
