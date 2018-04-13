-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 12 Avril 2018 à 15:35
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `PharmaVie`
--

-- --------------------------------------------------------

--
-- Structure de la table `Administration`
--

CREATE TABLE `Administration` (
  `ID_Administration` int(11) NOT NULL,
  `Nom_Administration` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Administration`
--

INSERT INTO `Administration` (`ID_Administration`, `Nom_Administration`) VALUES
(1, 'orale'),
(2, 'parenterale (injectable)'),
(3, 'rectale'),
(4, 'vaginale'),
(5, 'oculaire'),
(6, 'cutane'),
(8, 'inhalee'),
(9, 'autre');

-- --------------------------------------------------------

--
-- Structure de la table `Avoir_Cause`
--

CREATE TABLE `Avoir_Cause` (
  `Nom_Cause` varchar(25) NOT NULL,
  `Nom_Maladie` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Avoir_Symptome`
--

CREATE TABLE `Avoir_Symptome` (
  `Nom_Maladie` varchar(25) NOT NULL,
  `Nom_Symptome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Avoir_Symptome`
--

INSERT INTO `Avoir_Symptome` (`Nom_Maladie`, `Nom_Symptome`) VALUES
('test', 'ampoule'),
('test', 'bégaiement'),
('Syphilis', 'chancre'),
('Syphilis', 'cheveux sec'),
('Syphilis', 'courbatures'),
('Rhume', 'enrouement'),
('Syphilis', 'eruptions cutanees'),
('Rhume', 'eternuements'),
('Syphilis', 'fatigue ( asthénie)'),
('Grippe', 'fievre'),
('Rhume', 'fievre'),
('Syphilis', 'fievre'),
('Rhume', 'frissons'),
('Rhinopharyngite', 'mal de gorge'),
('Rhume', 'mal de gorge'),
('Rhume', 'maux de tete'),
('Syphilis', 'maux de tete'),
('Rhinopharyngite', 'nez bouché'),
('Rhume', 'nez bouché'),
('Rhinopharyngite', 'nez qui coule'),
('Rhume', 'nez qui coule'),
('Rhinopharyngite', 'toux'),
('Rhume', 'toux'),
('Rhume', 'yeux qui pleurent');

-- --------------------------------------------------------

--
-- Structure de la table `Avoir_Transmission`
--

CREATE TABLE `Avoir_Transmission` (
  `Nom_Maladie` varchar(25) NOT NULL,
  `Nom_Transmission` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Avoir_Transmission`
--

INSERT INTO `Avoir_Transmission` (`Nom_Maladie`, `Nom_Transmission`) VALUES
('Impetigo', 'contact direct'),
('Syphilis', 'contact direct'),
('Hepatite C', 'transmission iatrogenique'),
('Sida', 'transmission iatrogenique'),
('Cholera', 'voies orales'),
('Cytomegalovirus', 'voies orales'),
('Hepatite A', 'voies orales'),
('Poliomyélite', 'voies orales'),
('Rotavirus', 'voies orales'),
('Salmonellose', 'voies orales'),
('Coqueluche', 'voies respiratoires'),
('Meningite Bacterienne', 'voies respiratoires'),
('Rhinopharyngite', 'voies respiratoires'),
('Rougeole', 'voies respiratoires'),
('Tuberculose', 'voies respiratoires'),
('Varicelle', 'voies respiratoires'),
('Rubeole', 'voies sexuelles'),
('Sida', 'voies sexuelles');

-- --------------------------------------------------------

--
-- Structure de la table `Avoir_Zone`
--

CREATE TABLE `Avoir_Zone` (
  `Nom_Zone` varchar(25) NOT NULL,
  `Nom_Symptome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Avoir_Zone`
--

INSERT INTO `Avoir_Zone` (`Nom_Zone`, `Nom_Symptome`) VALUES
('tete', 'bégaiement'),
('thorax', 'brulures estomac'),
('tete', 'cheveux gras'),
('tete', 'cheveux sec'),
('abdomen', 'chute de cheveux'),
('tete', 'dent cassée'),
('tete', 'dents jaunes'),
('tete', 'dents sensibles'),
('abdomen', 'diarrhée'),
('abdomen', 'ejaculation precoce'),
('tete', 'nez bouché'),
('cou', 'toux'),
('tete', 'toux'),
('thorax', 'toux');

-- --------------------------------------------------------

--
-- Structure de la table `Cause`
--

CREATE TABLE `Cause` (
  `ID_Cause` int(11) NOT NULL,
  `Nom_Cause` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Cause`
--

INSERT INTO `Cause` (`ID_Cause`, `Nom_Cause`) VALUES
(1, 'tabagisme'),
(2, 'alcoolisme'),
(3, 'choix nutritionnels'),
(4, 'sedentarite'),
(5, 'soleil sans protection'),
(6, 'absence de vaccins'),
(7, 'rapport sexuel non protege'),
(8, 'surpoids / obesite'),
(9, 'hypertension'),
(10, 'hypercholesterolomie'),
(11, 'hyperglycemie'),
(12, 'age'),
(13, 'sexe'),
(14, 'profession'),
(15, 'revenus'),
(16, 'religion'),
(17, 'acces a l eau potable'),
(18, 'risque sur lieu de travail'),
(19, 'pollution de l air'),
(20, 'contexte sociaux'),
(21, 'genetique');

-- --------------------------------------------------------

--
-- Structure de la table `Classe`
--

CREATE TABLE `Classe` (
  `ID_Classe` int(11) NOT NULL,
  `Nom_Classe` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Classe`
--

INSERT INTO `Classe` (`ID_Classe`, `Nom_Classe`) VALUES
(1, 'Anthalgique'),
(2, 'Oto-rhino-laryngologie'),
(3, 'Cardiologie et angeiologie ');

-- --------------------------------------------------------

--
-- Structure de la table `Forme`
--

CREATE TABLE `Forme` (
  `ID_Forme` int(11) NOT NULL,
  `Nom_Forme` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Forme`
--

INSERT INTO `Forme` (`ID_Forme`, `Nom_Forme`) VALUES
(1, 'comprime'),
(2, 'capsule'),
(3, 'collyre'),
(4, 'creme'),
(5, 'emplatre'),
(6, 'flacon'),
(7, 'gelée'),
(8, 'graines'),
(9, 'insert'),
(10, 'lyophilisat'),
(11, 'ovule'),
(12, 'pate'),
(13, 'poche'),
(14, 'sachet'),
(15, 'solide'),
(16, 'solvant'),
(17, 'systeme de diffusion'),
(18, 'bain de bouche'),
(19, 'cartouche'),
(20, 'compresse'),
(21, 'dispersion'),
(22, 'eponge'),
(23, 'gaz'),
(24, 'gelule'),
(25, 'granules'),
(26, 'liquide'),
(27, 'microsphere'),
(28, 'pansement'),
(29, 'pilule'),
(30, 'poudre'),
(31, 'shampooing'),
(32, 'solution'),
(33, 'suppositoire'),
(34, 'tampon'),
(35, 'baton'),
(36, 'collutoire'),
(37, 'cone'),
(38, 'dispositif'),
(39, 'film'),
(40, 'gel'),
(41, 'gomme'),
(42, 'implant'),
(43, 'lotion'),
(44, 'mousse'),
(45, 'pastille'),
(46, 'plante'),
(47, 'pommade'),
(48, 'sirop'),
(49, 'solution buvable'),
(50, 'suspension'),
(51, 'vernis à ongles');

-- --------------------------------------------------------

--
-- Structure de la table `identifiants`
--

CREATE TABLE `identifiants` (
  `ID_user` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `identifiants`
--

INSERT INTO `identifiants` (`ID_user`, `user`, `password`) VALUES
(1, 'marius', 'marius'),
(2, 'valentin', 'valentin'),
(3, 'ok', 'ok');

-- --------------------------------------------------------

--
-- Structure de la table `Laboratoire`
--

CREATE TABLE `Laboratoire` (
  `SIREN_Laboratoire` int(11) DEFAULT NULL,
  `Nom_Laboratoire` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Laboratoire`
--

INSERT INTO `Laboratoire` (`SIREN_Laboratoire`, `Nom_Laboratoire`) VALUES
(399295385, 'Mylan'),
(403335904, 'SANOFI-AVENTIS FRANCE'),
(612009936, 'Pfizer Holding France');

-- --------------------------------------------------------

--
-- Structure de la table `Maladie`
--

CREATE TABLE `Maladie` (
  `ID_Maladie` int(11) NOT NULL,
  `Nom_Maladie` varchar(25) NOT NULL,
  `Traitement_Maladie` varchar(25) DEFAULT NULL,
  `Nombre_Symptome` int(11) NOT NULL,
  `Frequence_Maladie` int(11) DEFAULT '0',
  `Description_Maladie` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Maladie`
--

INSERT INTO `Maladie` (`ID_Maladie`, `Nom_Maladie`, `Traitement_Maladie`, `Nombre_Symptome`, `Frequence_Maladie`, `Description_Maladie`) VALUES
(13, 'Angine', NULL, 0, 0, NULL),
(3, 'Asthme', NULL, 0, 1, ''),
(4, 'Brûlure', NULL, 0, 0, ''),
(14, 'Cholera', NULL, 0, 0, NULL),
(15, 'Coqueluche', NULL, 0, 0, NULL),
(16, 'Cytomegalovirus', NULL, 0, 0, NULL),
(5, 'Gastro-Entérite', NULL, 0, 0, ''),
(2, 'Grippe', '7', 1, 1, 'La grippe est une maladie infectieuse qui touche les voies respiratoires. Elle survient de manière épisodique et épidémique chaque hiver.\n\nLa grippe est due à un virus dont la particularité est que son génome (sa carte d\'identité) change tout le temps. Il est impossible de créer des vaccins qui protègent à 100% et puissent éradiquer la maladie de la planète. Pour l\'heure, chaque année, on est dans l\'obligation de créer un nouveau vaccin à partir des dernières souches virales analysées.\n\nLa grippe est une maladie qui peut être très sévère, avec des symptômes importants. Les personnes qui ont eu la grippe s\'en souviennent ! Chez des personnes très vulnérables, les conséquences de la grippe peuvent même être dramatiques... Chaque année, on déplore plusieurs centaines de morts liées à cette maladie. Ce que l\'on peut redouter, un hiver, c\'est l\'arrivée d\'un virus de la grippe particulièrement virulent. Aussi est-il important pour les personnes fragiles, de s\'en protéger, en particulier grâce à la vaccination...'),
(17, 'Hepatite A', NULL, 0, 0, NULL),
(18, 'Hepatite C', NULL, 0, 0, NULL),
(19, 'Impetigo', NULL, 0, 0, NULL),
(20, 'Meningite Bacterienne', NULL, 0, 0, NULL),
(21, 'Poliomyélite', NULL, 0, 0, NULL),
(22, 'Rhinopharyngite', NULL, 0, 0, NULL),
(1, 'Rhume', NULL, 2, 2, 'Le rhume est l’autre nom de la rhinopharyngite. Il s’agit d’une infection bénigne d’origine virale des muqueuses des cavités nasales (de l’intérieur du nez) et du pharynx.\n\nLe rhume est une maladie contagieuse. Le virus est transmis par les gouttelettes de salive qui sont en suspension dans l\'air, il contamine les autres par cette voie. Les éternuements et la toux facilitent encore plus la dissémination virale. De même, les virus du rhume peuvent être transportés par les mains.\n\nLa contagion est extrême dans les lieux de promiscuité : dans les transports en commun, dans les entreprises, dans les crèches et les écoles, à la maison, dans les salles de sport...'),
(23, 'Rotavirus', NULL, 0, 0, NULL),
(24, 'Rougeole', NULL, 0, 0, NULL),
(25, 'Rubeole', NULL, 0, 0, NULL),
(27, 'Salmonellose', NULL, 0, 0, NULL),
(6, 'Sida', NULL, 0, 0, ''),
(12, 'Syphilis', NULL, 4, 1, ''),
(28, 'test', '5', 2, 6, 'test'),
(8, 'Thrombose veineuse', NULL, 0, 0, ''),
(7, 'Trachéite', NULL, 0, 0, ''),
(26, 'Tuberculose', NULL, 0, 0, NULL),
(9, 'Varicelle', NULL, 0, 0, ''),
(10, 'Zona', NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `Medicament`
--

CREATE TABLE `Medicament` (
  `ID_Medicament` int(11) NOT NULL,
  `Nom_Medicament` varchar(50) NOT NULL,
  `Posologie_Medicament` varchar(10) NOT NULL,
  `Nom_Laboratoire` varchar(25) NOT NULL,
  `Nom_Substance` varchar(25) NOT NULL,
  `Nom_Forme` varchar(25) NOT NULL,
  `Nom_Administration` varchar(25) NOT NULL,
  `Nom_Classe` varchar(40) NOT NULL,
  `Ordonance_Medicament` tinyint(1) DEFAULT NULL,
  `ID_TauxRemboursement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Medicament`
--

INSERT INTO `Medicament` (`ID_Medicament`, `Nom_Medicament`, `Posologie_Medicament`, `Nom_Laboratoire`, `Nom_Substance`, `Nom_Forme`, `Nom_Administration`, `Nom_Classe`, `Ordonance_Medicament`, `ID_TauxRemboursement`) VALUES
(1, 'Doliprane comprime 1000mg', '1000 mg', 'SANOFI-AVENTIS FRANCE', 'Paracétamol', 'comprime', 'orale', 'Anthalgique', 0, 65),
(2, 'Doliprane comprime 500mg', '500 mg', 'SANOFI-AVENTIS FRANCE', 'Paracétamol', 'comprime', 'orale', 'Anthalgique', 0, 65),
(3, 'Pivalone 1%', '10 mL', 'Pfizer Holding France', 'Tixocortol', 'suspension', 'parenterale (injectable)', 'Oto-rhino-laryngologie', 1, 30),
(4, 'Tahor 10 mg', '10 mg', 'Pfizer Holding France', 'Atorvastatine', 'comprime', 'orale', 'Cardiologie et angeiologie ', 1, 65);

-- --------------------------------------------------------

--
-- Structure de la table `Soigner`
--

CREATE TABLE `Soigner` (
  `Nom_Maladie` varchar(25) NOT NULL,
  `Nom_Medicament` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Soigner`
--

INSERT INTO `Soigner` (`Nom_Maladie`, `Nom_Medicament`) VALUES
('Rhume', 'Doliprane comprime 1000mg'),
('Rhume', 'Doliprane comprime 500mg');

-- --------------------------------------------------------

--
-- Structure de la table `Substance`
--

CREATE TABLE `Substance` (
  `ID_Substance` int(11) NOT NULL,
  `Nom_Substance` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Substance`
--

INSERT INTO `Substance` (`ID_Substance`, `Nom_Substance`) VALUES
(1, 'Paracétamol'),
(2, 'Tixocortol'),
(3, 'Atorvastatine'),
(4, 'Vaseline'),
(5, 'Glyceriol(E422)'),
(6, 'Paraffine');

-- --------------------------------------------------------

--
-- Structure de la table `Symptome`
--

CREATE TABLE `Symptome` (
  `ID_Symptome` int(11) NOT NULL,
  `Nom_Symptome` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Symptome`
--

INSERT INTO `Symptome` (`ID_Symptome`, `Nom_Symptome`) VALUES
(1, 'fievre'),
(2, 'nez bouché'),
(3, 'chute de cheveux'),
(4, 'mal de gorge'),
(5, 'courbatures'),
(6, 'diarrhée'),
(7, 'mal de dos'),
(8, 'ampoule'),
(9, 'jambes lourdes'),
(10, 'torticolis'),
(11, 'fatigue ( asthénie)'),
(12, 'brulures estomac'),
(13, 'bouffées de chaleur'),
(14, 'constipation'),
(15, 'crampe'),
(17, 'bégaiement'),
(18, 'cheveux gras'),
(19, 'cheveux sec'),
(20, 'crevasses'),
(21, 'gerçures'),
(22, 'déchaussement dentaire'),
(23, 'dent cassée'),
(24, 'dents jaunes'),
(25, 'dents sensibles'),
(26, 'diplopie'),
(27, 'toux'),
(28, 'respiration difficile (dyspnée)'),
(29, 'pénétration douloureuse (dyspareunie)'),
(30, 'dyspepsie '),
(31, 'dysphagie'),
(32, 'ejaculation precoce'),
(33, 'enrouement'),
(34, 'enuresie'),
(35, 'eruptions cutanees'),
(36, 'erytheme fessier (fesses rouges)'),
(37, 'etat de stress post-traumatique (ESPT)'),
(38, 'fourmillement'),
(39, 'fuites uriniraires'),
(40, 'frissons'),
(41, 'frigidité'),
(42, 'fragilité'),
(43, 'ganglion'),
(44, 'gelures'),
(45, 'genu valgum (genoux en X)'),
(46, 'glaires'),
(47, 'goitre (hypertrophie thyroïdienne)'),
(48, 'grain de milium'),
(49, 'Gros ventre (Graisse abdominale)'),
(54, 'halitose (mauvaise haleine)'),
(55, 'hallucinations'),
(56, 'hallux valgus'),
(57, 'hématurie (sang dans urine)'),
(58, 'hyperpilosité '),
(59, 'hoquet'),
(60, 'hyperactivité vésicale'),
(61, 'Hypoglycémie '),
(62, 'chancre'),
(63, 'maux de tete'),
(64, 'nez qui coule'),
(65, 'yeux qui pleurent'),
(66, 'eternuements');

-- --------------------------------------------------------

--
-- Structure de la table `TauxRemboursement`
--

CREATE TABLE `TauxRemboursement` (
  `ID_TauxRemboursement` int(11) NOT NULL,
  `Pourcentage_TauxRemboursement` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `TauxRemboursement`
--

INSERT INTO `TauxRemboursement` (`ID_TauxRemboursement`, `Pourcentage_TauxRemboursement`) VALUES
(5, 5),
(10, 10),
(15, 15),
(20, 20),
(25, 25),
(30, 30),
(35, 35),
(40, 40),
(45, 45),
(50, 50),
(55, 55),
(60, 60),
(65, 65),
(70, 70),
(75, 75),
(80, 80),
(85, 85),
(90, 90),
(95, 95),
(100, 100);

-- --------------------------------------------------------

--
-- Structure de la table `Transmission`
--

CREATE TABLE `Transmission` (
  `ID_Transmission` int(11) NOT NULL,
  `Nom_Transmission` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Transmission`
--

INSERT INTO `Transmission` (`ID_Transmission`, `Nom_Transmission`) VALUES
(1, 'voies respiratoires'),
(2, 'voies orales'),
(3, 'voies sexuelles'),
(4, 'contact direct'),
(5, 'transmission iatrogenique'),
(6, 'genetique');

-- --------------------------------------------------------

--
-- Structure de la table `Zone`
--

CREATE TABLE `Zone` (
  `ID_Zone` int(11) NOT NULL,
  `Nom_Zone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Zone`
--

INSERT INTO `Zone` (`ID_Zone`, `Nom_Zone`) VALUES
(1, 'tete'),
(2, 'cou'),
(3, 'thorax'),
(4, 'abdomen'),
(5, 'bras'),
(6, 'mains'),
(7, 'jambes'),
(8, 'pieds');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Administration`
--
ALTER TABLE `Administration`
  ADD PRIMARY KEY (`Nom_Administration`),
  ADD UNIQUE KEY `ID_Administration` (`ID_Administration`);

--
-- Index pour la table `Avoir_Cause`
--
ALTER TABLE `Avoir_Cause`
  ADD PRIMARY KEY (`Nom_Cause`,`Nom_Maladie`),
  ADD KEY `FK_Avoir_Cause_Nom_Maladie` (`Nom_Maladie`);

--
-- Index pour la table `Avoir_Symptome`
--
ALTER TABLE `Avoir_Symptome`
  ADD PRIMARY KEY (`Nom_Maladie`,`Nom_Symptome`),
  ADD KEY `FK_Avoir_Symptome_Nom_Symptome` (`Nom_Symptome`);

--
-- Index pour la table `Avoir_Transmission`
--
ALTER TABLE `Avoir_Transmission`
  ADD PRIMARY KEY (`Nom_Maladie`,`Nom_Transmission`),
  ADD KEY `FK_Avoir_Transmission_Nom_Transmission` (`Nom_Transmission`);

--
-- Index pour la table `Avoir_Zone`
--
ALTER TABLE `Avoir_Zone`
  ADD PRIMARY KEY (`Nom_Zone`,`Nom_Symptome`),
  ADD KEY `FK_Avoir_Zone_Nom_Symptome` (`Nom_Symptome`);

--
-- Index pour la table `Cause`
--
ALTER TABLE `Cause`
  ADD PRIMARY KEY (`Nom_Cause`),
  ADD UNIQUE KEY `ID_Cause` (`ID_Cause`);

--
-- Index pour la table `Classe`
--
ALTER TABLE `Classe`
  ADD PRIMARY KEY (`Nom_Classe`),
  ADD UNIQUE KEY `ID_Classe` (`ID_Classe`);

--
-- Index pour la table `Forme`
--
ALTER TABLE `Forme`
  ADD PRIMARY KEY (`Nom_Forme`),
  ADD UNIQUE KEY `ID_Forme` (`ID_Forme`);

--
-- Index pour la table `identifiants`
--
ALTER TABLE `identifiants`
  ADD PRIMARY KEY (`ID_user`);

--
-- Index pour la table `Laboratoire`
--
ALTER TABLE `Laboratoire`
  ADD PRIMARY KEY (`Nom_Laboratoire`),
  ADD UNIQUE KEY `SIREN_Laboratoire` (`SIREN_Laboratoire`);

--
-- Index pour la table `Maladie`
--
ALTER TABLE `Maladie`
  ADD PRIMARY KEY (`Nom_Maladie`),
  ADD UNIQUE KEY `ID_Maladie` (`ID_Maladie`);

--
-- Index pour la table `Medicament`
--
ALTER TABLE `Medicament`
  ADD PRIMARY KEY (`Nom_Medicament`),
  ADD UNIQUE KEY `ID_Medicament` (`ID_Medicament`),
  ADD KEY `FK_Medicament_Nom_Laboratoire` (`Nom_Laboratoire`),
  ADD KEY `FK_Medicament_Nom_Forme` (`Nom_Forme`),
  ADD KEY `FK_Medicament_Nom_Administration` (`Nom_Administration`),
  ADD KEY `FK_Medicament_ID_TauxRemboursement` (`ID_TauxRemboursement`),
  ADD KEY `FK_Medicament_Nom_Classe` (`Nom_Classe`),
  ADD KEY `Posologie_Medicament` (`Posologie_Medicament`),
  ADD KEY `FK_Medicament_Nom_Substance` (`Nom_Substance`);

--
-- Index pour la table `Soigner`
--
ALTER TABLE `Soigner`
  ADD PRIMARY KEY (`Nom_Maladie`,`Nom_Medicament`),
  ADD KEY `FK_Soigner_Nom_Medicament` (`Nom_Medicament`);

--
-- Index pour la table `Substance`
--
ALTER TABLE `Substance`
  ADD PRIMARY KEY (`Nom_Substance`),
  ADD UNIQUE KEY `ID_Substance` (`ID_Substance`);

--
-- Index pour la table `Symptome`
--
ALTER TABLE `Symptome`
  ADD PRIMARY KEY (`Nom_Symptome`),
  ADD UNIQUE KEY `ID_Symptome` (`ID_Symptome`);

--
-- Index pour la table `TauxRemboursement`
--
ALTER TABLE `TauxRemboursement`
  ADD PRIMARY KEY (`ID_TauxRemboursement`);

--
-- Index pour la table `Transmission`
--
ALTER TABLE `Transmission`
  ADD PRIMARY KEY (`Nom_Transmission`),
  ADD UNIQUE KEY `ID_Transmission` (`ID_Transmission`);

--
-- Index pour la table `Zone`
--
ALTER TABLE `Zone`
  ADD PRIMARY KEY (`Nom_Zone`),
  ADD UNIQUE KEY `ID_Zone` (`ID_Zone`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Administration`
--
ALTER TABLE `Administration`
  MODIFY `ID_Administration` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Cause`
--
ALTER TABLE `Cause`
  MODIFY `ID_Cause` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `Classe`
--
ALTER TABLE `Classe`
  MODIFY `ID_Classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Forme`
--
ALTER TABLE `Forme`
  MODIFY `ID_Forme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT pour la table `identifiants`
--
ALTER TABLE `identifiants`
  MODIFY `ID_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Maladie`
--
ALTER TABLE `Maladie`
  MODIFY `ID_Maladie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `Medicament`
--
ALTER TABLE `Medicament`
  MODIFY `ID_Medicament` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Substance`
--
ALTER TABLE `Substance`
  MODIFY `ID_Substance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Symptome`
--
ALTER TABLE `Symptome`
  MODIFY `ID_Symptome` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `TauxRemboursement`
--
ALTER TABLE `TauxRemboursement`
  MODIFY `ID_TauxRemboursement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `Transmission`
--
ALTER TABLE `Transmission`
  MODIFY `ID_Transmission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `Zone`
--
ALTER TABLE `Zone`
  MODIFY `ID_Zone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Avoir_Cause`
--
ALTER TABLE `Avoir_Cause`
  ADD CONSTRAINT `FK_Avoir_Cause_Nom_Cause` FOREIGN KEY (`Nom_Cause`) REFERENCES `Cause` (`Nom_Cause`),
  ADD CONSTRAINT `FK_Avoir_Cause_Nom_Maladie` FOREIGN KEY (`Nom_Maladie`) REFERENCES `Maladie` (`Nom_Maladie`);

--
-- Contraintes pour la table `Avoir_Symptome`
--
ALTER TABLE `Avoir_Symptome`
  ADD CONSTRAINT `FK_Avoir_Symptome_Nom_Maladie` FOREIGN KEY (`Nom_Maladie`) REFERENCES `Maladie` (`Nom_Maladie`),
  ADD CONSTRAINT `FK_Avoir_Symptome_Nom_Symptome` FOREIGN KEY (`Nom_Symptome`) REFERENCES `Symptome` (`Nom_Symptome`);

--
-- Contraintes pour la table `Avoir_Transmission`
--
ALTER TABLE `Avoir_Transmission`
  ADD CONSTRAINT `FK_Avoir_Transmission_Nom_Maladie` FOREIGN KEY (`Nom_Maladie`) REFERENCES `Maladie` (`Nom_Maladie`),
  ADD CONSTRAINT `FK_Avoir_Transmission_Nom_Transmission` FOREIGN KEY (`Nom_Transmission`) REFERENCES `Transmission` (`Nom_Transmission`);

--
-- Contraintes pour la table `Avoir_Zone`
--
ALTER TABLE `Avoir_Zone`
  ADD CONSTRAINT `FK_Avoir_Zone_Nom_Symptome` FOREIGN KEY (`Nom_Symptome`) REFERENCES `Symptome` (`Nom_Symptome`),
  ADD CONSTRAINT `FK_Avoir_Zone_Nom_Zone` FOREIGN KEY (`Nom_Zone`) REFERENCES `Zone` (`Nom_Zone`);

--
-- Contraintes pour la table `Medicament`
--
ALTER TABLE `Medicament`
  ADD CONSTRAINT `FK_Medicament_ID_TauxRemboursement` FOREIGN KEY (`ID_TauxRemboursement`) REFERENCES `TauxRemboursement` (`ID_TauxRemboursement`),
  ADD CONSTRAINT `FK_Medicament_Nom_Administration` FOREIGN KEY (`Nom_Administration`) REFERENCES `Administration` (`Nom_Administration`),
  ADD CONSTRAINT `FK_Medicament_Nom_Classe` FOREIGN KEY (`Nom_Classe`) REFERENCES `Classe` (`Nom_Classe`),
  ADD CONSTRAINT `FK_Medicament_Nom_Forme` FOREIGN KEY (`Nom_Forme`) REFERENCES `Forme` (`Nom_Forme`),
  ADD CONSTRAINT `FK_Medicament_Nom_Laboratoire` FOREIGN KEY (`Nom_Laboratoire`) REFERENCES `Laboratoire` (`Nom_Laboratoire`),
  ADD CONSTRAINT `FK_Medicament_Nom_Substance` FOREIGN KEY (`Nom_Substance`) REFERENCES `Substance` (`Nom_Substance`);

--
-- Contraintes pour la table `Soigner`
--
ALTER TABLE `Soigner`
  ADD CONSTRAINT `FK_Soigner_Nom_Maladie` FOREIGN KEY (`Nom_Maladie`) REFERENCES `Maladie` (`Nom_Maladie`),
  ADD CONSTRAINT `FK_Soigner_Nom_Medicament` FOREIGN KEY (`Nom_Medicament`) REFERENCES `Medicament` (`Nom_Medicament`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
