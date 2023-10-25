package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        // Handle POST requests
       
       
    	String phno = req.getParameter("phone");
    	long phoneNumber;
    	 PrintWriter out=res.getWriter();

    	try {
    	    phoneNumber = Long.parseLong(phno);
    	} catch (NumberFormatException e) {
    	    // Handle the case where "phno" is not a valid number
    	    // You can set an error attribute to indicate the failure
    	    req.setAttribute("loginFailed", true);
    	    req.getRequestDispatcher("/ShopX/src/main/webapp/JSP/login.jsp").forward(req, res);
    	    return; // Exit the method to prevent further processing
    	}
        String pass = req.getParameter("pass");
        

        System.out.println(phno);
        System.out.println(pass);

        String fqcn = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306?user=root&password=root";
        String qry = "SELECT * FROM ShopX.users WHERE phone_number=? AND password=?";

        try {
            Class.forName(fqcn);
            System.out.println("Step 1 Done");

            Connection con = DriverManager.getConnection(url);
            System.out.println("Step 2 Done");
            PreparedStatement pstmt = con.prepareStatement(qry);
            System.out.println("Step 3 Done");
            pstmt.setLong(1, phoneNumber);
            pstmt.setString(2, pass);

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String dbPhoneNumber = rs.getString("phone_number");
                String dbPassword = rs.getString("password");
                
               
                if (dbPhoneNumber.equals(phno) && dbPassword.equals(pass)) {
                	HttpSession session = req.getSession();
                	 session.setAttribute("username",rs.getString("name") );
                	 session.setAttribute("email",rs.getString("email") );
                	 session.setAttribute("phone_number",rs.getString("phone_number") );
                    // Phone number and password match, redirect to home.jsp
                	 req.getRequestDispatcher("/ShopX/src/main/webapp/JSP/home.jsp").forward(req, res);

                } else {
                    // Phone number and password do not match
                	  // Login failed, set an attribute to indicate the failure
                     req.getRequestDispatcher("/ShopX/src/main/webapp/JSP/login.jsp").forward(req, res);
                    
                }
            } else {
                // No data found for the given phone number and password
            	  // Login failed, set an attribute to indicate the failure
            	
                req.getRequestDispatcher("/ShopX/src/main/webapp/JSP/login.jsp").forward(req, res);
            }

            rs.close();
            pstmt.close();
            con.close();


           
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

   
		
	}
    

