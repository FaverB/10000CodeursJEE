package com.objis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCodeurs
 */
@WebServlet(name="cs",
			description="permet de gerer l'inscription des 10.000 Codeurs",
			urlPatterns= {"/addCodeurs"})

public class AddCodeurs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCodeurs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher Vue=request.getRequestDispatcher("/WEB-INF/inscription.jsp");
		Vue.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//
		request.setAttribute("erreur", false);
		String nom= request.getParameter("nom");
		System.out.println("nom: " +nom);
		
		//définition d'une expression reguliere(model)
//		 String pattern  = "^\\d{1,2}\\/\\d{1,2}\\/\\{4}$";
		 
//		 Pattern r = Pattern.compile(pattern);
//		 Matcher m = r.matcher();

		if(nom.length()==0) {
			request.setAttribute("erreur", true);
			request.setAttribute("erreur_nom", true);
			System.out.println("erreur sur le nom");
		}
		
		String prenom= request.getParameter("prenom");
		if(prenom.length()==0) {
			request.setAttribute("erreur",  true);
			request.setAttribute("erreur_prenom", true);
			System.out.println("erreur sur le prenom");
		}
		
		String email=request.getParameter("email");
		if(email.length()==0) {
			request.setAttribute("erreur",  true);
			request.setAttribute("erreur_email", true);
			System.out.println("erreur sur le email");
		}
		
		System.out.println("**********fin requete**************");
	
		doGet(request, response);
	}

}
