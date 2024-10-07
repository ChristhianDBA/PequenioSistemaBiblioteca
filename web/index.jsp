<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Biblioteca en línea</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto px-4 py-8">
        <h1 class="text-4xl font-bold text-center text-indigo-600 mb-6">Bienvenido a la biblioteca en línea</h1>
        
        <form action="LibroController" method="get" class="mb-4">
            <input type="hidden" name="accion" value="buscar">
            <div class="flex items-center justify-center">
                <input type="text" name="criterio" id="criterio" class="border border-gray-300 rounded-l-lg px-4 py-2 focus:outline-none focus:border-indigo-500" placeholder="Ingrese un título o autor">
                <button type="submit" class="bg-indigo-600 text-white rounded-r-lg px-4 py-2 hover:bg-indigo-700">Buscar</button>
            </div>
        </form>

        <h2 class="text-green-500 text-xl text-center">${mensaje}</h2>
    </div>
</body>
</html>
