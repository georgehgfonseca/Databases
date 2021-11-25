#
# TABLE STRUCTURE FOR: EQUIPE
#

DROP TABLE IF EXISTS `EQUIPE`;

CREATE TABLE `EQUIPE` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `TipoPneus` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (1, 'Renault', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (2, 'Racing-Point Mercedes', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (3, 'Mercedes', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (4, 'Alfa-Romeo Ferrari', 'Michelan');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (5, 'Ferrari', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (6, 'McLaren-Renault', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (7, 'Williams-Mercedes', 'Bridgestone');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (8, 'Alpha Tauri Honda', 'Michelan');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (9, 'RBR Honda', 'Michelan');
INSERT INTO `EQUIPE` (`Codigo`, `Nome`, `TipoPneus`) VALUES (10, 'Haas-Ferrari', 'Bridgestone');


#
# TABLE STRUCTURE FOR: PILOTO
#

DROP TABLE IF EXISTS `PILOTO`;

CREATE TABLE `PILOTO` (
  `Numero` int(11) NOT NULL,
  `Nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DataNascimento` date NOT NULL,
  `Pais` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ECodigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Numero`),
  KEY `ECodigo` (`ECodigo`),
  CONSTRAINT `PILOTO_ibfk_1` FOREIGN KEY (`ECodigo`) REFERENCES `EQUIPE` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (1, 'Lonnie', '1986-08-26', 'Japao', 1);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (2, 'Adriel', '1986-11-26', 'Japao', 10);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (3, 'Stanley', '1992-08-29', 'Franca', 9);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (4, 'Efrain', '1997-12-05', 'Alemanha', 4);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (5, 'Claud', '1986-03-09', 'Italia', 2);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (6, 'Jonatan', '1993-12-10', 'Espanha', 5);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (7, 'Ian', '1997-08-11', 'Brasil', 9);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (8, 'Llewellyn', '1989-12-24', 'Italia', 2);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (9, 'Levi', '1997-01-11', 'EUA', 10);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (10, 'Brant', '1995-01-14', 'Italia', 9);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (11, 'Nicklaus', '1995-07-04', 'Finlandia', 10);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (12, 'Ignatius', '1990-03-30', 'Mexico', 5);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (13, 'Ryann', '2000-08-13', 'Japao', 1);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (14, 'Ernie', '1990-02-10', 'EUA', 10);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (15, 'Larue', '1989-02-11', 'Alemanha', 2);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (16, 'Willy', '1987-05-01', 'Reino Unido', 7);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (17, 'Elmo', '1990-04-07', 'Reino Unido', 10);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (18, 'Omer', '1998-10-15', 'Japao', 4);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (19, 'Kiley', '1993-03-28', 'Mexico', 9);
INSERT INTO `PILOTO` (`Numero`, `Nome`, `DataNascimento`, `Pais`, `ECodigo`) VALUES (20, 'Fredy', '1988-07-06', 'Mexico', 9);


#
# TABLE STRUCTURE FOR: CORRIDA
#

DROP TABLE IF EXISTS `CORRIDA`;

CREATE TABLE `CORRIDA` (
  `Codigo` int(11) NOT NULL,
  `NumVoltas` int(11) NOT NULL,
  `VoltaRecorde` float NOT NULL,
  `Pais` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Cidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `PublicoPagante` int(11) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (1, 58, '131.628', 'Reino Unido', 'Powlowskihaven', '2019-04-28', 11133);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (2, 64, '148.972', 'China', 'Lempichester', '2019-10-30', 10309);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (3, 45, '136.387', 'Italia', 'East Josianefurt', '2019-04-30', 30253);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (4, 70, '147.115', 'Brasil', 'South Sonyatown', '2019-04-08', 15452);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (5, 62, '138.096', 'Japao', 'South Cary', '2019-07-26', 39060);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (6, 70, '145.106', 'Portugal', 'Lake Jaimeport', '2019-03-02', 6920);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (7, 52, '131.777', 'Mexico', 'Zoilaside', '2019-07-26', 20932);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (8, 69, '77.42', 'Canada', 'Trantowfort', '2019-05-04', 46534);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (9, 54, '146.199', 'Franca', 'Port Derick', '2019-08-17', 36445);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (10, 67, '70.807', 'Russia', 'North Lucyshire', '2019-11-26', 36986);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (11, 46, '69.44', 'Finlandia', 'Schoenton', '2019-02-03', 22534);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (12, 52, '60.025', 'Alemanha', 'Carolinamouth', '2019-08-27', 48352);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (13, 45, '89.057', 'Espanha', 'Eloisachester', '2019-02-09', 19800);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (14, 62, '144.263', 'Africa do Sul', 'Bahringerfurt', '2019-12-05', 41359);
INSERT INTO `CORRIDA` (`Codigo`, `NumVoltas`, `VoltaRecorde`, `Pais`, `Cidade`, `Data`, `PublicoPagante`) VALUES (15, 59, '80.582', 'EUA', 'North Mariofort', '2019-07-05', 14425);


#
# TABLE STRUCTURE FOR: PARTICIPA
#

DROP TABLE IF EXISTS `PARTICIPA`;

CREATE TABLE `PARTICIPA` (
  `PosicaoFinal` int(11) NOT NULL,
  `PosicaoLargada` int(11) NOT NULL,
  `VoltaMaisRapida` float NOT NULL,
  `PNumero` int(11) NOT NULL,
  `CCodigo` int(11) NOT NULL,
  PRIMARY KEY (`PNumero`,`CCodigo`),
  KEY `CCodigo` (`CCodigo`),
  CONSTRAINT `PARTICIPA_ibfk_1` FOREIGN KEY (`PNumero`) REFERENCES `PILOTO` (`Numero`),
  CONSTRAINT `PARTICIPA_ibfk_2` FOREIGN KEY (`CCodigo`) REFERENCES `CORRIDA` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 3, '123.246', 1, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 11, '91.59', 1, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 19, '139.213', 1, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 11, '129.551', 1, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 18, '61.238', 1, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 6, '68.056', 1, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 18, '104.649', 1, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 14, '60.247', 1, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 14, '71.235', 1, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 1, '67.21', 2, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 7, '82.56', 2, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 15, '121.262', 2, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 15, '67.238', 2, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 9, '76.907', 2, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 1, '82.136', 2, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 8, '147.06', 2, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 18, '139.814', 2, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 4, '129.9', 2, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 20, '115.815', 2, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 17, '128.776', 2, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (16, 16, '145.016', 2, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 18, '91.765', 2, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 11, '132.34', 2, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 17, '146.978', 2, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 1, '98.095', 3, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 2, '84.368', 3, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 17, '135.908', 3, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 10, '147.343', 3, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 17, '114.218', 3, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 7, '125.891', 3, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 1, '132.465', 3, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 6, '124.043', 3, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 5, '68.801', 4, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 19, '109.991', 4, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 14, '142.428', 4, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 10, '129.881', 4, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 2, '98.192', 4, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 2, '137.147', 4, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 2, '91.933', 4, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 19, '127.875', 4, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 12, '108.873', 4, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 16, '127.285', 4, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 15, '129.775', 5, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 13, '88.82', 5, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 12, '74.714', 5, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 14, '149.389', 5, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 15, '134.031', 5, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 16, '67.227', 5, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 13, '105.518', 5, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 19, '87.467', 6, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 14, '86.663', 6, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 9, '104.831', 6, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 10, '64.511', 6, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 12, '63.617', 6, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 18, '148.337', 6, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 2, '110.937', 6, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 9, '87.31', 6, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 2, '106.435', 6, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 4, '80.401', 6, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 11, '83.688', 6, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 5, '104.721', 6, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 15, '96.826', 7, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 2, '93.97', 7, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 2, '81.503', 7, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 16, '68.88', 7, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 16, '137.463', 7, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 13, '120.263', 7, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 18, '110.795', 7, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 18, '120.763', 7, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 2, '129.716', 7, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 7, '86.903', 8, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 17, '82.151', 8, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 9, '81.168', 8, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 18, '69.867', 8, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 8, '121.769', 8, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 7, '129.072', 8, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 7, '84.359', 8, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 10, '87.084', 8, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 12, '123.729', 9, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 11, '109.649', 9, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 2, '124.582', 9, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 1, '93.863', 9, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 4, '146.016', 9, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 14, '106.149', 9, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (16, 11, '64.134', 9, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 1, '134.098', 9, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 10, '148.981', 9, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 12, '82.319', 10, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 2, '88.989', 10, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 16, '99.35', 10, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 16, '99.956', 10, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 18, '134.64', 10, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 8, '143.521', 10, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 9, '143.202', 10, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 7, '95.343', 10, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 19, '134.324', 10, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 8, '104.535', 10, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 6, '76.381', 11, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 1, '78.149', 11, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 9, '81.404', 11, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 5, '65.674', 11, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 12, '132.607', 11, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (16, 11, '102.827', 11, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 13, '141.088', 11, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 3, '95.828', 11, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 11, '91.566', 11, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 12, '64.454', 11, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 15, '101.694', 11, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 6, '85.004', 11, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 13, '60.179', 12, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 7, '131.375', 12, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 16, '119.71', 12, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 1, '84.18', 12, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 7, '84.133', 12, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 19, '89.332', 12, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 15, '149.419', 12, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 14, '85.71', 12, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 18, '61.778', 13, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 5, '60.963', 13, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 11, '84.559', 13, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 2, '115.619', 13, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 1, '116.426', 13, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 10, '133.294', 13, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 5, '82.593', 13, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 16, '61.744', 13, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 5, '94.054', 13, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 4, '107.871', 14, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 9, '86.937', 14, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 6, '72.499', 14, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 16, '142.48', 14, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 15, '110.945', 14, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 8, '130.701', 14, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 10, '120.59', 14, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 20, '98.718', 14, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 7, '61.583', 14, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 16, '148.555', 15, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 1, '66.73', 15, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 7, '65.624', 15, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 19, '141.926', 15, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 2, '101.348', 15, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 20, '104.137', 15, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 18, '125.254', 15, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 6, '79.578', 15, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 12, '117.433', 15, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 10, '117.866', 15, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 13, '101.393', 16, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 17, '112', 16, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 20, '103.751', 16, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 16, '128.798', 16, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 7, '105.27', 16, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 3, '125.313', 16, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 5, '65.956', 16, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 12, '104.465', 16, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 4, '127.378', 16, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (7, 1, '93.503', 16, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 7, '90.176', 16, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 13, '138.664', 17, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 2, '143.143', 17, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 10, '78.954', 17, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 20, '115.688', 17, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 18, '113.888', 17, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 17, '115.074', 17, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (3, 5, '99.942', 17, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (19, 18, '89.886', 17, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 5, '131.853', 17, 15);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 9, '112.409', 18, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 12, '63.973', 18, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 1, '133.696', 18, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (20, 5, '124.613', 18, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 4, '134.637', 18, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 10, '61.351', 18, 10);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 16, '139.555', 18, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 15, '72.464', 19, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 16, '75.316', 19, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 6, '110.381', 19, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (13, 1, '73.287', 19, 4);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 6, '120.562', 19, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 1, '132.458', 19, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (6, 13, '139.816', 19, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 2, '124.547', 19, 8);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (2, 7, '109.537', 19, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (10, 19, '98.436', 19, 12);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (15, 12, '108.993', 19, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (14, 6, '65.426', 19, 14);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (12, 16, '112.905', 20, 1);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 2, '88.148', 20, 2);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (18, 1, '106.767', 20, 3);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (17, 10, '149.359', 20, 5);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (1, 7, '76.192', 20, 6);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (5, 15, '78.904', 20, 7);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (8, 11, '66.605', 20, 9);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (4, 20, '133.906', 20, 11);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (9, 1, '122.956', 20, 13);
INSERT INTO `PARTICIPA` (`PosicaoFinal`, `PosicaoLargada`, `VoltaMaisRapida`, `PNumero`, `CCodigo`) VALUES (11, 6, '73.782', 20, 15);


