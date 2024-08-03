-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2024 a las 00:40:44
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `boletinesss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo`
--

CREATE TABLE `ciclo` (
  `id` int(11) NOT NULL,
  `ciclo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `idMateria` int(11) DEFAULT NULL,
  `idCiclo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre`, `idMateria`, `idCiclo`) VALUES
(1, '1°1', NULL, NULL),
(2, '1°2', NULL, NULL),
(3, '1°3', NULL, NULL),
(4, '1°4', NULL, NULL),
(5, '1°6', NULL, NULL),
(6, '2°1', NULL, NULL),
(7, '2°2', NULL, NULL),
(8, '2°3', NULL, NULL),
(9, '2°4', NULL, NULL),
(10, '2°5', NULL, NULL),
(11, '3°1', NULL, NULL),
(12, '3°2', NULL, NULL),
(13, '3°3', NULL, NULL),
(14, '3°4', NULL, NULL),
(15, '3°5', NULL, NULL),
(16, '4°1', NULL, NULL),
(17, '4°2', NULL, NULL),
(18, '4°3', NULL, NULL),
(19, '4°4', NULL, NULL),
(20, '5°1', NULL, NULL),
(21, '5°3', NULL, NULL),
(22, '5°4', NULL, NULL),
(23, '5°5', NULL, NULL),
(24, '6°1', NULL, NULL),
(25, '6°2', NULL, NULL),
(26, '6°3', NULL, NULL),
(27, '6°4', NULL, NULL),
(28, '7°1', NULL, NULL),
(29, '7°2', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`) VALUES
(1, 'Matematica'),
(2, 'Ciencias Sociales'),
(3, 'Ciencias Naturales'),
(4, 'Prácticas de Lenguaje'),
(5, 'Educación Artistica'),
(6, 'Educación Fisica'),
(7, 'Construcción de Ciudadanía'),
(8, 'Ingles'),
(9, 'Literatura'),
(10, 'Biología'),
(11, 'Fisico Quimica'),
(12, 'Historia'),
(13, 'Geografia'),
(14, 'Fisica'),
(15, 'Quimica'),
(16, 'Politica y Ciudadania'),
(17, 'Analisis Matematico'),
(18, 'Arte'),
(19, 'Filosofía'),
(20, 'Derecho Laboral'),
(21, 'Salud y Adolescencia'),
(22, 'Sistemas Digitales'),
(23, 'Seguridad Informatica'),
(24, 'Teleinformatica'),
(25, 'Tecnologias Electronicas'),
(26, 'Investigación Operativa'),
(27, 'Evaluación de Proyectos'),
(28, 'Emprendimiento Productivo y Desarrollo Local'),
(29, 'Introducción a Modelos y Sistemas'),
(30, 'Base de Datos'),
(31, 'Prácticas Profesionalizantes'),
(32, 'Fund. de los Mod. Circuitales'),
(33, 'Analisis de Modelos Circuitales'),
(34, 'Lenguaje Electrónico'),
(35, 'Sistemas de Comunicaciones'),
(36, 'Instalaciones y Maquinas Eléctricas'),
(37, 'Sistemas Productivos'),
(38, 'Sistemas de Control'),
(39, 'Sistemas Digitales'),
(40, 'Seguridad Informatica'),
(41, 'Teleinformatica'),
(42, 'Tecnologias Electronicas'),
(43, 'Investigación Operativa'),
(44, 'Evaluación de Proyectos'),
(45, 'Emprendimiento Productivo y Desarrollo Local'),
(46, 'Introducción a Modelos y Sistemas'),
(47, 'Base de Datos'),
(48, 'Prácticas Profesionalizantes'),
(49, 'Fund. de los Mod. Circuitales'),
(50, 'Analisis de Modelos Circuitales'),
(51, 'Lenguaje Electrónico'),
(52, 'Sistemas de Comunicaciones'),
(53, 'Instalaciones y Maquinas Eléctricas'),
(54, 'Sistemas Productivos'),
(55, 'Sistemas de Control'),
(56, 'Seguridad e Higiene'),
(57, 'Procedimiento Técnico'),
(58, 'Lenguaje Tecnologico'),
(59, 'Sistemas Operativos'),
(60, 'Laboratorio de Hadware'),
(61, 'Laboratorio de Apicación'),
(62, 'Laboratorio de Sistemas Operativos'),
(63, 'Laboratorio de Programación'),
(64, 'Proyecto, diseño e Imple. De Sistemas'),
(65, 'Inst. Mant. y Rep. de Sist. Computo'),
(66, 'Inst. Mant. y Rep. de Redes Informática'),
(67, 'Aplic. de Electrónica Analogica'),
(68, 'Aplic. de Electrónica Digital'),
(69, 'Montaje de Proyectos Electrónicos'),
(70, 'Diseño Asistido y Simulación Electrónica'),
(71, 'Lenguaje Electrónico'),
(72, 'Proyecto y Diseño Electronico'),
(73, 'Instalaciones Industriales'),
(74, 'Electrónica Aplicada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`id`, `nombre`) VALUES
(1, 'Ciclo Basico'),
(2, 'Informatica'),
(3, 'Electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `permiso` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `contra` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `permiso`, `user`, `contra`) VALUES
(1, 'Admin', 'preceptoria', 'educar'),
(2, 'SuperAdmin', 'direccion', 'tecnica1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
