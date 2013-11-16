package com.mateuszmidor;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mateuszmidor.dto.User;
import com.mateuszmidor.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		LoginService service = new LoginService();
		boolean result = service.authenticate(userId, password);

		if (result) {
			// przekierowujemy klienta do strony z gratulacjami
			User user = service.getUser(userId);
			request.getSession().setAttribute("user", user);
			
			// server-side redirect - moze czytac dane prosto z request'a
			// jednak w URL przegl¹darki bedziemy mieli "loginServlet" zamiast "successPage"
			// RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			// dispatcher.forward(request, response);
			
			// client-side redirect - czyta dane z HttpSession
			response.sendRedirect("successPage");
			return;
		} else {
			// przekierowujemy klienta do strony logwania 
			response.sendRedirect("loginPage");
			return;
		}

	}

}
