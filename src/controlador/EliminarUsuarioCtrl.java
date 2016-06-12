package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Usuario;
import servicios.ServicioUsuario;

/**
 * Servlet implementation class EliminarUsuarioCtrl
 */
@WebServlet("/EliminarUsuarioCtrl")
public class EliminarUsuarioCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarUsuarioCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String idUsuario = request.getParameter("id");
		Usuario usuario = new Usuario();
		usuario.setIdUsuario(Integer.parseInt(idUsuario));
		ServicioUsuario servicioUsuario = new ServicioUsuario();
		servicioUsuario.eliminar(usuario);
		
		RequestDispatcher rd= request.getRequestDispatcher("PoblarUsuarioCtrl");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
