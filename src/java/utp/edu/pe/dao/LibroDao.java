package utp.edu.pe.dao;

import java.sql.SQLException;
import java.util.List;
import utp.edu.pe.entity.Libro;

public interface LibroDao {

    List<Libro> buscarLibros(String criterio) throws SQLException;

    void tomarLibro(int idLibro) throws SQLException;

    void devolverLibro(int idLibro) throws SQLException;
}
