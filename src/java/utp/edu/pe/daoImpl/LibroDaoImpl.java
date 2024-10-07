/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utp.edu.pe.daoImpl;

/**
 *
 * @author Pc
 */
// LibroDAO.java
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import utp.edu.pe.config.ConexionDB;
import utp.edu.pe.dao.LibroDao;
import utp.edu.pe.entity.Libro;

public class LibroDaoImpl implements LibroDao {

    @Override
    public List<Libro> buscarLibros(String criterio) throws SQLException {
        List<Libro> libros = new ArrayList<>();
        String sql = "SELECT * FROM libros WHERE titulo LIKE ?";

        try (Connection conn = ConexionDB.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, "%" + criterio + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Libro libro = new Libro(
                        rs.getInt("id"),
                        rs.getString("titulo"),
                        rs.getString("autor"),
                        rs.getBoolean("disponible")
                );
                libros.add(libro);
            }
        }
        return libros;
    }

    @Override
    public void tomarLibro(int idLibro) throws SQLException {
        String sql = "UPDATE libros SET disponible = FALSE WHERE id = ? AND disponible = TRUE";

        try (Connection conn = ConexionDB.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, idLibro);
            stmt.executeUpdate();
        }
    }

    @Override
    public void devolverLibro(int idLibro) throws SQLException {
        String sql = "UPDATE libros SET disponible = TRUE WHERE id = ? AND disponible = FALSE";

        try (Connection conn = ConexionDB.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, idLibro);
            stmt.executeUpdate();
        }
    }
}
