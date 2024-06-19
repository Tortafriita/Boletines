-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 17:02:39
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `boletines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) NOT NULL,
  `idModalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nombre`) VALUES
(1, '1°1'),
(2, '1°2'),
(3, '1°3'),
(4, '1°4'),
(5, '1°6'),
(6, '2°1'),
(7, '2°2'),
(8, '2°3'),
(9, '2°4'),
(10, '2°5'),
(11, '3°1'),
(12, '3°2'),
(13, '3°3'),
(14, '3°4'),
(15, '3°5'),
(16, '4°1'),
(17, '4°2'),
(18, '4°3'),
(19, '4°4'),
(20, '5°1'),
(21, '5°3'),
(22, '5°4'),
(23, '5°5'),
(24, '6°1'),
(25, '6°2'),
(26, '6°3'),
(27, '6°4'),
(28, '7°1'),
(29, '7°2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especiales`
--

CREATE TABLE `especiales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `especiales`
--

INSERT INTO `especiales` (`id`, `nombre`) VALUES
(1, 'Sistemas Digitales'),
(2, 'Seguridad Informatica'),
(3, 'Teleinformatica'),
(4, 'Tecnologias Electronicas'),
(5, 'Investigación Operativa'),
(6, 'Evaluación de Proyectos'),
(7, 'Emprendimiento Productivo y Desarrollo Local'),
(8, 'Introducción a Modelos y Sistemas'),
(9, 'Base de Datos'),
(10, 'Prácticas Profesionalizantes'),
(11, 'Fund. de los Mod. Circuitales'),
(12, 'Analisis de Modelos Circuitales'),
(13, 'Lenguaje Electrónico'),
(14, 'Sistemas de Comunicaciones'),
(15, 'Instalaciones y Maquinas Eléctricas'),
(16, 'Sistemas Productivos'),
(17, 'Sistemas de Control'),
(18, 'Seguridad e Higiene');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`) VALUES
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
(21, 'Salud y Adolescencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modalidad`
--

INSERT INTO `modalidad` (`id`, `nombre`) VALUES
(1, 'Ciclo Básico'),
(2, 'Informatica'),
(3, 'Electronica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres`
--

CREATE TABLE `talleres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talleres`
--

INSERT INTO `talleres` (`id`, `nombre`) VALUES
(1, 'Procedimiento Técnico'),
(2, 'Lenguaje Tecnologico'),
(3, 'Sistemas Operativos'),
(4, 'Laboratorio de Hadware'),
(5, 'Laboratorio de Apicación'),
(6, 'Laboratorio de Sistemas Operativos'),
(7, 'Laboratorio de Programación'),
(8, 'Proyecto, diseño e Imple. De Sistemas'),
(9, 'Inst. Mant. y Rep. de Sist. Computo'),
(10, 'Inst. Mant. y Rep. de Redes Informática'),
(11, 'Aplic. de Electrónica Analogica'),
(12, 'Aplic. de Electrónica Digital'),
(13, 'Montaje de Proyectos Electrónicos'),
(14, 'Diseño Asistido y Simulación Electrónica'),
(15, 'Lenguaje Electrónico'),
(16, 'Proyecto y Diseño Electronico'),
(17, 'Instalaciones Industriales'),
(18, 'Electrónica Aplicada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `permiso` int(2) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especiales`
--
ALTER TABLE `especiales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talleres`
--
ALTER TABLE `talleres`
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
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `especiales`
--
ALTER TABLE `especiales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `talleres`
--
ALTER TABLE `talleres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
