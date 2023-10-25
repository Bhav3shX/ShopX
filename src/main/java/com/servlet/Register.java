package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        // Handle POST requests
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phno = req.getParameter("phone");
        long phoneNumber = Long.parseLong(phno);
        String pass = req.getParameter("password");

        String fqcn = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306?user=root&password=root";
        String qry = "insert into ShopX.users values(?,?,?,?)";

        try {
            Class.forName(fqcn);
            System.out.println("Step 1 Done");

            Connection con = DriverManager.getConnection(url);
            System.out.println("Step 2 Done");
            PreparedStatement pstmt = con.prepareStatement(qry);
            System.out.println("Step 3 Done");

            pstmt.setString(1, name);
            pstmt.setLong(2, phoneNumber);
            pstmt.setString(3, email);
            pstmt.setString(4, pass);

            pstmt.executeUpdate();
            System.out.println("step 4");
            con.close();
            System.out.println("Step 5 Done");

            // Redirect to the login page after successful registration
            res.sendRedirect("/ShopX/src/main/webapp/JSP/login.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
		
	}
    

