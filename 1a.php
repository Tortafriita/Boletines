<?php
// Inicia una sesión o reanuda la sesión actual basada en un identificador de sesión pasado a través de una solicitud HTTP.
session_start();

// Incluye el archivo 'db.php' que se espera que contenga la configuración y conexión a la base de datos.
include 'db.php';

// Define una consulta SQL para seleccionar todos los registros de la tabla 'alumnos' y unirla con la tabla 'curso' mediante el campo 'idCurso' de 'alumnos' y 'id' de 'curso'.
$sql = "SELECT * FROM alumnos INNER JOIN curso ON alumnos.idCurso = curso.id";
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Define el conjunto de caracteres utilizado en el documento como UTF-8 para soportar caracteres especiales. -->
    <meta charset="UTF-8">
    <!-- Define cómo debe mostrarse el contenido en dispositivos móviles y el zoom inicial. -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Establece el título de la página que aparece en la pestaña del navegador. -->
    <title>Ciclo Básico</title>
    <!-- Incluye una hoja de estilos CSS externa para el diseño adicional. -->
    <link rel="stylesheet" href="..\boletines\css\Tabla.css">
    <style>
        /* Estilo para el contenedor del título y el formulario de búsqueda */
        .pino {
            align-items: center; /* Centra el contenido dentro del contenedor */
            font-family: monospace; /* Define la fuente del texto */
            font-size: 20px; /* Define el tamaño de la fuente */
            color: #03093f; /* Define el color del texto */
            padding: 10px 5px; /* Agrega espacio interno en el contenedor */
        }

        /* Estilo para el formulario de búsqueda */
        .form {
            padding: 10px; /* Agrega espacio interno al formulario */
        }

        /* Estilo para los campos de entrada del formulario */
        .inp {
            padding: 10px; /* Agrega espacio interno en el campo de entrada */
            border-radius: 5px; /* Redondea las esquinas del campo de entrada */
            border: 0px; /* Elimina el borde del campo de entrada */
            width: 200px; /* Define el ancho del campo de entrada */
            font-size: 1rem; /* Define el tamaño de la fuente del campo de entrada */
        }

        /* Estilo para el botón de búsqueda */
        .button {
            background-color: #8389db; /* Define el color de fondo del botón */
            width: 45px; /* Define el ancho del botón */
            height: 40px; /* Define la altura del botón */
            margin-top: 40px; /* Agrega un margen superior */
            border-radius: 5px; /* Redondea las esquinas del botón */
            cursor: pointer; /* Cambia el cursor cuando se pasa sobre el botón */
            color: white; /* Define el color del texto del botón */
            border: none; /* Elimina el borde del botón */
        }

        /* Estilo para el botón cuando se pasa el cursor sobre él */
        .button:hover {
            background-color: #243063; /* Cambia el color de fondo del botón en el estado hover */
        }

        /* Estilo para la tabla */
        table {
            width: 80%; /* Define el ancho de la tabla */
            margin: 20px auto; /* Agrega márgenes automáticos para centrar la tabla y un margen superior e inferior */
            border-collapse: collapse; /* Colapsa los bordes de las celdas */
        }

        /* Estilo para las celdas de encabezado y de datos */
        th, td {
            padding: 10px; /* Agrega espacio interno a las celdas */
            text-align: left; /* Alinea el texto a la izquierda */
            border: 1px solid #ddd; /* Agrega un borde ligero a las celdas */
        }

        /* Estilo específico para las celdas de encabezado */
        th {
            background-color: #03093f; /* Define el color de fondo de las celdas de encabezado */
            color: white; /* Define el color del texto de las celdas de encabezado */
        }

        /* Estilo específico para las celdas de datos */
        td {
            background-color: #f2f2f2; /* Define el color de fondo de las celdas de datos */
        }

        /* Estilo para los checkboxes */
        .checkbox {
            margin: 10px; /* Agrega un margen alrededor del checkbox */
        }

        /* Estilo para el botón de envío */
        .submit-button {
            background-color: #8389db; /* Define el color de fondo del botón */
            color: white; /* Define el color del texto del botón */
            border: none; /* Elimina el borde del botón */
            padding: 10px 20px; /* Agrega espacio interno al botón */
            border-radius: 5px; /* Redondea las esquinas del botón */
            cursor: pointer; /* Cambia el cursor cuando se pasa sobre el botón */
        }

        /* Estilo para el botón de envío cuando se pasa el cursor sobre él */
        .submit-button:hover {
            background-color: #243063; /* Cambia el color de fondo del botón en el estado hover */
        }
    </style>
</head>
<body>
    <!-- Centra el contenido de la página -->
    <center>
        <div class="pino">
            <!-- Título y formulario de búsqueda -->
            <p>SELECCIONE UN ALUMNO Y CARGUE LAS NOTAS</p>
            <!-- Formulario para la búsqueda de alumnos -->
            <form action='ResultadoBusqueda.php' method='post' class="form">
                <!-- Campo de entrada para la búsqueda de alumnos -->
                <input type='text' name='busqueda' placeholder='Inicie su búsqueda' class='inp'>
                <!-- Botón para enviar el formulario de búsqueda -->
                <input type='submit' value='🔎' class='button'/>
            </form>
        </div>

        <!-- Formulario para seleccionar alumnos y cargar notas -->
        <form action="ProcesarNotas.php" method="post">
            <!-- Tabla para mostrar los alumnos -->
            <table>
                <thead>
                    <tr>
                        <!-- Encabezados de las columnas -->
                        <th>Seleccionar</th>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Curso</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Ejecuta la consulta SQL y obtiene el resultado
                    $result = $db->query($sql);

                    // Recorre los resultados y genera una fila por cada registro
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        // Celda para el checkbox de selección
                        echo "<td><input type='checkbox' name='alumno[]' value='" . $row['idAlumno'] . "' class='checkbox'></td>";
                        // Celdas para el ID del alumno, nombre y nombre del curso
                        echo "<td>" . $row['idAlumno'] . "</td>";
                        echo "<td>" . $row['nombre'] . "</td>";
                        echo "<td>" . $row['nombreCurso'] . "</td>";
                        echo "</tr>";
                    }
                    ?>
                </tbody>
            </table>
            <!-- Botón para enviar el formulario de selección -->
            <input type="submit" value="Cargar Notas" class="submit-button">
        </form>
    </center>
</body>
</html>
