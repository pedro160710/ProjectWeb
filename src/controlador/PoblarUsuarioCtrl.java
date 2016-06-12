package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.ServicioUsuario;

/**
 * Servlet implementation class PoblarUsuarioCtrl
 */
@WebServlet("/PoblarUsuarioCtrl")
public class PoblarUsuarioCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PoblarUsuarioCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		ServicioUsuario servicioUsuario = new ServicioUsuario();
		request.setAttribute("USUARIOS", servicioUsuario.findAll());
		
		RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/interfaces/usuarios.jsp");
		rd.forward(request, response);
	}

}
