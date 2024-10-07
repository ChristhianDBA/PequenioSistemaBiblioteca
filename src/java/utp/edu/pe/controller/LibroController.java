// src/utp/edu/pe/controller/LibroController.java
package utp.edu.pe.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utp.edu.pe.dao.LibroDao;
import utp.edu.pe.daoImpl.LibroDaoImpl;
import utp.edu.pe.entity.Libro;

public class LibroController extends HttpServlet {

    private LibroDao libroDAO;

    @Override
    public void init() {
        libroDAO = new LibroDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");

        try {
            if ("buscar".equals(accion)) {
                buscarLibros(request, response);
            } else if ("tomar".equals(accion)) {
                tomarLibro(request, response);
            } else if ("devolver".equals(accion)) {
                devolverLibro(request, response);
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void buscarLibros(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String criterio = request.getParameter("criterio");
        List<Libro> resultados = libroDAO.buscarLibros(criterio);
        
        request.setAttribute("libros", resultados);
        request.getRequestDispatcher("resultados.jsp").forward(request, response);
    }

    private void tomarLibro(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int idLibro = Integer.parseInt(request.getParameter("idLibro"));
        libroDAO.tomarLibro(idLibro);

        request.setAttribute("mensaje", "Libro tomado prestado con éxito.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private void devolverLibro(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int idLibro = Integer.parseInt(request.getParameter("idLibro"));
        libroDAO.devolverLibro(idLibro);

        request.setAttribute("mensaje", "Libro devuelto con éxito.");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
