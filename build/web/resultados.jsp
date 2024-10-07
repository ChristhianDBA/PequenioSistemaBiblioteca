<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Resultados de búsqueda</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto px-4 py-8">
        <h1 class="text-4xl font-bold text-center text-indigo-600 mb-6">Resultados de búsqueda</h1>
        
        <c:if test="${not empty libros}">
            <ul class="list-none">
                <c:forEach var="libro" items="${libros}">
                    <li class="flex justify-between items-center bg-white shadow-md rounded-lg p-4 mb-4">
                        <div>
                            <h2 class="text-lg font-semibold">${libro.titulo}</h2>
                            <p class="text-gray-600">por ${libro.autor}</p>
                        </div>
                        <c:if test="${libro.disponible}">
                            <a href="LibroController?accion=tomar&idLibro=${libro.id}" class="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-600">Tomar prestado</a>
                        </c:if>
                        <c:if test="${!libro.disponible}">
                            <span class="text-red-500 font-semibold">No disponible</span>
                            <a href="LibroController?accion=devolver&idLibro=${libro.id}" class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 ml-2">Devolver</a>
                        </c:if>
                    </li>
                </c:forEach>
            </ul>
        </c:if>
        
        <c:if test="${empty libros}">
            <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4 mb-4" role="alert">
                <p>No se encontraron libros que coincidan con su criterio de búsqueda.</p>
            </div>
        </c:if>

        <a href="index.jsp" class="bg-gray-500 text-white px-4 py-2 rounded-lg hover:bg-gray-600">Volver al inicio</a>
    </div>
</body>
</html>
