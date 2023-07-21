
CREATE TABLE `quimicos` (
  `idQuimico` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecomercialQuimico` varchar(100) DEFAULT NULL,
  `reactivoprincipalquimico` varchar(100) DEFAULT NULL,
  `presentacion` varchar(100) DEFAULT NULL,
  `controlquimico` int(11) DEFAULT NULL,
  `ubicacion` text NOT NULL,
  `notas` text NOT NULL,
  PRIMARY KEY (`idQuimico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `quimicos` (`nombrecomercialQuimico`, `reactivoprincipalquimico`, `presentacion`, `controlquimico`, `ubicacion`, `notas`) VALUES
('1', 'Reactivo 1', '50g', 'lata', 1, 'laboratorio 1','conservar en humedad'),
('1', 'Reactivo 1', '300l', 'vaso',1,'laboratorio 2','cuidar del calor'),
('1', 'Reactivo 1', '200 ml', 'paquete', 1,'laboratorio 3','mantener en refrigeracion'),
('1', 'Reactivo 1', '50g', 'vaso', 1,'laboratorio 4','por vencer'),
('1', 'Reactivo 1', '150g', 'lata',1, 'laboratorio 5','conservar en calor');



CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombreUsuario` varchar(60) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `claveUsuario` varchar(32) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `recibe_alertas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `cargo`, `correo`, `claveUsuario`, `expiration_date`, `recibe_alertas`) VALUES
(1, 'Administrador del sistema', 'Administrador', 'uabc.laboratorio.fmp@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 1),
(11, 'Luis', 'Administrador', 'crisarael@gmail.com', 'fef810fc8e7a445588fcd9aae3cb9822', '2023-08-06', 1);



CREATE TABLE `clinicatienequimico` (
  `idClinica` int(11) NOT NULL DEFAULT 1,
  `idUsuario` int(11) NOT NULL,
  `idQuimico` int(11) NOT NULL,
  `cantidadQuimico` int(11) DEFAULT NULL,
  `laboratorio` varchar(100) DEFAULT NULL,
  `marca` varchar(40) DEFAULT NULL,
  `fechadecaducidadQuimico` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `clinicatienequimico` (`idClinica`, `idUsuario`, `idQuimico`, `cantidadQuimico`, `laboratorio`, `marca`, `fechadecaducidadQuimico`) VALUES
(1, 1, 1, 185, 'laboratorio 1', 'Pfizer', '2025-05-02'),
(1, 1, 2, 20, 'laboratorio 2', 'Similares2', '2024-12-24'),
(1, 1, 2, 20, 'laboratorio 3', 'Similares2', '2024-12-24'),
(1, 1, 3, 422, 'laboratorio 4', 'tempra forte', '2023-07-20'),
(1, 1, 4, 103, 'laboratorio 5', 'Erispanf', '2023-09-02'),
(1, 1, 5, 450, 'laboratorio 6', 'X', '2023-10-20'),
(1, 1, 6, 59, 'laboratorio 7', 'test', '2023-11-24');



CREATE TABLE `historial` (
  `txid` int(11) NOT NULL AUTO_INCREMENT,
  `idQuimico` int(11) NOT NULL,
  `ingrediente_activo` varchar(60) DEFAULT NULL,
  `marca` varchar(60) DEFAULT NULL,
  `laboratorio` varchar(60) DEFAULT NULL,
  `controlado` varchar(60) DEFAULT NULL,
  `presentacion` varchar(60) DEFAULT NULL,
  `cantidad` varchar(60) DEFAULT NULL,
  `ubicacion` varchar(60) DEFAULT NULL,
  `fecha_caducidad` date DEFAULT NULL,
  `usuario` varchar(60) DEFAULT NULL,
  `timepo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comentario` text DEFAULT NULL,
  PRIMARY KEY (`txid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

