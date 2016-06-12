package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.ServicioUsuario;
import modelo.Usuario;


/**
 * Servlet implementation class UsuarioModificacionCtrl
 */
@WebServlet("/UsuarioModificacionCtrl")
public class UsuarioModificacionCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioModificacionCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String idUsuario = request.getParameter("id");
		Usuario usuario = new Usuario();
		ServicioUsuario servicioUsuario = new ServicioUsuario();
		usuario = servicioUsuario.findByIdUsuario(Integer.parseInt(idUsuario))
				.get(0);
		request.setAttribute("USUARIO", usuario);
		RequestDispatcher rd = request.getServletContext()
				.getRequestDispatcher("/interfaces/editarUsuario.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
