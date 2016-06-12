package controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Usuario;
import servicios.ServicioUsuario;

/**
 * Servlet implementation class GuardarCambiosUsuario
 */
@WebServlet("/interfaces/GuardarCambiosUsuario")
public class GuardarCambiosUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GuardarCambiosUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String idUsuario = request.getParameter("id");
		String nombre = request.getParameter("nombre_usuario");
		String login = request.getParameter("login_usuario");
		String password = request.getParameter("password_usuario");
		String nivel = request.getParameter("nivel_usuario");
		String correo = request.getParameter("correo_usuario");
		String foto = null;

		Usuario usuario = new Usuario();
		usuario.setIdUsuario(Integer.parseInt(idUsuario));
		usuario.setUsuCorreo(correo);
		usuario.setUsuLogin(login);
		usuario.setUsuNombre(nombre);
		usuario.setUsuPassword(password);
		usuario.setUsuNivel(Integer.parseInt(nivel));
		ServicioUsuario servicioUsuario = new ServicioUsuario();
		servicioUsuario.modificar(usuario);
	}

}
