-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2021 a las 11:39:49
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kratosgym`
--
CREATE DATABASE IF NOT EXISTS `kratosgym` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kratosgym`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasecolectiva`
--

CREATE TABLE `clasecolectiva` (
  `cod_clase` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `cod_ejercicio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `realizacion` longtext NOT NULL,
  `musculos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`cod_ejercicio`, `nombre`, `realizacion`, `musculos`) VALUES
(1, 'Dominadas', 'La posición de inicio comienza con una toma con palmas en supinación. Con el ancho de hombros o ligeramente más juntas. Los brazos deben extenderse por completo con el torso en la misma línea que los brazos.\r\n\r\nPara empezar el ascenso, se usarán los músculos relativamente fuertes de la espalda alta y los músculos flexores del codo, mientras los codos son llevados hacia atrás de la espalda. El ascenso debe continuar hasta que el mentón sobrepase la barra.\r\n\r\nPara completar el rango de movimiento, los brazos y abductores de la escapula deben estirarse en cada repetición. ', 'Dorsal ancho, bíceps, trapecio, deltoides, pectoral'),
(2, 'Remo con mancuerna', 'Sujete una mancuerna con la palma de la mano hacia adentro, la otra debe descansar sobre el banco, al igual que la rodilla opuesta al brazo que realiza el ejercicio. Mantenga la columna vertebral recta y casi paralela al suelo.\r\n\r\nEmpuje la mancuerna de forma vertical en dirección al pecho y elevando el codo hasta la altura de la espalda. Baje la mancuerna lentamente hasta regresar a la posición inicial.', 'Latísimo del dorso, trapecio, romboides, deltoides posterior, erector de la columna, bíceps'),
(3, 'Peso Muerto', 'Colocad los pies planos sobre el suelo, algo menos separados que la anchura de los hombros, con los dedos al frente o apuntando ligeramente hacia fuera.\r\n\r\nDoblad las rodillas y bajad las caderas hacia una posición de sentadilla profunda; los muslos deben formar ángulo de 45 grados respecto a los gemelos. \r\n\r\nAgarra la barra con agarre supino equidistante del centro, separando las manos algo más que las piernas y manteniendo los brazos estirados.\r\n\r\nDebes tener la espalda baja en la posición contraída durante todo el movimiento para que así se mantenga la curvatura normal de la columna y nunca se redondee.\r\n\r\nMira al frente o ligeramente hacia arriba.', 'Gemelos, musculatura posterior del muslo, glúteos.'),
(4, 'Jalones frontales', 'Sujeta fuertemente los ángulos de la barra larga, con las palmas al frente.\r\n\r\nPara iniciar el movimiento inhala de una forma superior a lo normal y retén la respiración. Mantén los hombros en la posición inicial y tira hacia abajo con tus brazos, dirigiendo el movimiento con los codos hacia abajo. Realiza un tirón de la barra directamente hacia abajo, pasando la misma frente a la cabeza hasta el nivel de los hombros.\r\n\r\nAl tiempo que haces el tirón mantén los hombros hacia atrás y a los lados, en el mismo plano que tu cuerpo. Exhalas el aire tan pronto como termines el movimiento y mantén la posición baja por uno o dos segundos antes de retomar controlando el movimiento a la posición inicial.', 'Deltoides posterior, pectoral mayor, bíceps, tríceps, musculatura abdominal.'),
(5, 'Press de banca con barra', 'Échate sobre un banco. Las palmas de las manos deben estar hacia arriba. Baja lentamente el peso hasta tocar la parte central del tórax.\r\n\r\nEmpuja la barra hacia arriba hasta que los brazos estén completamente estirados pero sin llegar a bloquear la articulación del codo. Vuelve a descender la barra hasta tocar la parte central del tórax y repite el movimiento.', 'Pectoral mayor, deltoides anterior, tríceps.'),
(6, 'Flexiones', 'Colocar las manos a la anchura de los hombros sobre el suelo, con el cuerpo plano y rígido, y las puntas de los pies apoyadas en el suelo. Comenzar con los brazos extendidos y perpendiculares al suelo.\r\n\r\nFlexionar los codos bajando lentamente el cuerpo hacia el suelo. Cuando el pecho alcance unos pocos centímetros del suelo, extender los brazos con un press hacia arriba para volver a la posición de inicio.', 'Pecho, tríceps, deltoides, espalda.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamientos`
--

CREATE TABLE `entrenamientos` (
  `cod_entrenamiento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrenamientos`
--

INSERT INTO `entrenamientos` (`cod_entrenamiento`, `nombre`, `descripcion`) VALUES
(1, 'Entrenamiento 1', 'Descripcion del entr 1'),
(2, 'Entrenamiento 2', 'Descripcion Entrenamiento 2'),
(3, 'Entrenamiento 3', 'Descripcion Entrenamiento 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenamientos_ejercicios`
--

CREATE TABLE `entrenamientos_ejercicios` (
  `codigoEE` int(11) NOT NULL,
  `cod_entrenamiento` int(11) NOT NULL,
  `cod_ejercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `cod_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `cod_clase` int(11) DEFAULT NULL,
  `usuario` varchar(20) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `edad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`cod_usuario`, `nombre`, `apellidos`, `cod_clase`, `usuario`, `correo`, `pass`, `edad`) VALUES
(1, 'Administrador', 'Miapellido', NULL, 'admin', 'admin@mail.com', 'admin', 4),
(8, 'Juan Antonio', 'Barquero', NULL, 'jabarquero', 'mail@mail.com', '1234', 21),
(9, 'benito', 'castro', NULL, 'bencas', 'mail@mail2.com', '1234', 21),
(10, 'Daniel', 'Simon', NULL, 'dsimon', 'dani@mail.com', '1234', 21),
(11, 'asasg', 'adsgdasg', NULL, 'adsg', 'dsfd@mail', 'asdgdasg', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_ejercicio`
--

CREATE TABLE `usuario_ejercicio` (
  `codigoUE` int(11) NOT NULL,
  `cod_usuario` int(11) NOT NULL,
  `cod_ejercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_ejercicio`
--

INSERT INTO `usuario_ejercicio` (`codigoUE`, `cod_usuario`, `cod_ejercicio`) VALUES
(72, 1, 1),
(76, 1, 3),
(8, 8, 3),
(10, 10, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasecolectiva`
--
ALTER TABLE `clasecolectiva`
  ADD PRIMARY KEY (`cod_clase`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`cod_ejercicio`);

--
-- Indices de la tabla `entrenamientos`
--
ALTER TABLE `entrenamientos`
  ADD PRIMARY KEY (`cod_entrenamiento`);

--
-- Indices de la tabla `entrenamientos_ejercicios`
--
ALTER TABLE `entrenamientos_ejercicios`
  ADD PRIMARY KEY (`codigoEE`),
  ADD KEY `cod_entrenamiento` (`cod_entrenamiento`,`cod_ejercicio`),
  ADD KEY `cod_ejercicio` (`cod_ejercicio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cod_usuario`),
  ADD UNIQUE KEY `cod_clase` (`cod_clase`);

--
-- Indices de la tabla `usuario_ejercicio`
--
ALTER TABLE `usuario_ejercicio`
  ADD PRIMARY KEY (`codigoUE`),
  ADD KEY `cod_usuario` (`cod_usuario`,`cod_ejercicio`),
  ADD KEY `cod_ejercicio` (`cod_ejercicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clasecolectiva`
--
ALTER TABLE `clasecolectiva`
  MODIFY `cod_clase` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `cod_ejercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `entrenamientos`
--
ALTER TABLE `entrenamientos`
  MODIFY `cod_entrenamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `entrenamientos_ejercicios`
--
ALTER TABLE `entrenamientos_ejercicios`
  MODIFY `codigoEE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario_ejercicio`
--
ALTER TABLE `usuario_ejercicio`
  MODIFY `codigoUE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entrenamientos_ejercicios`
--
ALTER TABLE `entrenamientos_ejercicios`
  ADD CONSTRAINT `entrenamientos_ejercicios_ibfk_1` FOREIGN KEY (`cod_ejercicio`) REFERENCES `ejercicios` (`cod_ejercicio`),
  ADD CONSTRAINT `entrenamientos_ejercicios_ibfk_2` FOREIGN KEY (`cod_entrenamiento`) REFERENCES `entrenamientos` (`cod_entrenamiento`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cod_clase`) REFERENCES `clasecolectiva` (`cod_clase`);

--
-- Filtros para la tabla `usuario_ejercicio`
--
ALTER TABLE `usuario_ejercicio`
  ADD CONSTRAINT `usuario_ejercicio_ibfk_1` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`cod_usuario`),
  ADD CONSTRAINT `usuario_ejercicio_ibfk_2` FOREIGN KEY (`cod_ejercicio`) REFERENCES `ejercicios` (`cod_ejercicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;