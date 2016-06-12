package controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.ServicioUsuario;
import modelo.Usuario;

/**
 * Servlet implementation class CrearClienteCtrl
 */
@WebServlet("interfaces/CrearUsuarioCtrl")
public class CrearUsuarioCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CrearUsuarioCtrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("entro al controlador");
		/*String nombre = request.getParameter("nombre_usuario");
		String login = request.getParameter("login_usuario");
		String password = request.getParameter("password_usuario");
		String nivel = request.getParameter("nivel_usuario");
		String correo = request.getParameter("correo_usuario");
		String foto = null;*/
		String nombre = "nombre_usuario";
		String login = "login_usuario";
		String password = "password_usuario";
		String nivel = "1";
		String correo = "correo_usuario";
		ServicioUsuario servicioUsuario = new ServicioUsuario();
		for (Usuario item : servicioUsuario.findAll()) {
			System.out.println("valores "+item.getUsuNombre());
		}
		
//		Usuario usuario = new Usuario(correo, login, 1, nombre, password);
////		
////		usuario.setUsuCorreo(correo);
////		usuario.setUsuLogin(login);
////		usuario.setUsuNombre(nombre);
////		usuario.setUsuPassword(password);
////		usuario.setUsuNivel(Integer.parseInt(nivel));
//				
//		
//		ServicioUsuario servicioUsuario = new ServicioUsuario();
//		servicioUsuario.crear(usuario);
		
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
