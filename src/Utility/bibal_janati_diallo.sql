-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 14 avr. 2023 à 22:53
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibal_janati_diallo`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentification`
--

CREATE TABLE `authentification` (
  `nom` varchar(50) NOT NULL,
  `pwd` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authentification`
--

INSERT INTO `authentification` (`nom`, `pwd`) VALUES
('ibtissamnaini', 'etudiante'),
('zahra mrghad', 'maman');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `ID` int(11) NOT NULL,
  `ExemplaireId` int(11) NOT NULL,
  `UsagerID` int(11) NOT NULL,
  `DateEmprunt` date NOT NULL,
  `DateRetourPrevu` date NOT NULL,
  `DateRetourEffective` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`ID`, `ExemplaireId`, `UsagerID`, `DateEmprunt`, `DateRetourPrevu`, `DateRetourEffective`) VALUES
(1, 47, 2, '2023-04-01', '2023-05-01', '2023-05-10'),
(2, 48, 1, '2023-07-12', '2023-07-29', '2023-08-10'),
(4, 56, 2, '2023-04-14', '2023-04-24', NULL),
(5, 47, 1, '2023-04-01', '2023-04-30', '2023-05-14'),
(6, 48, 2, '2023-07-12', '2023-07-29', '2023-08-10'),
(7, 51, 3, '2023-04-01', '2023-04-30', '2023-05-14');

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `ID` int(11) NOT NULL,
  `OeuvreID` int(11) NOT NULL,
  `etat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`ID`, `OeuvreID`, `etat`) VALUES
(47, 32, 'bon'),
(48, 34, 'bon'),
(49, 36, 'neuf'),
(51, 36, 'Vieux'),
(52, 33, 'vieux'),
(53, 34, 'bon'),
(54, 35, 'bon'),
(55, 36, 'neuf'),
(56, 37, 'bon');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

CREATE TABLE `oeuvre` (
  `ID` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Auteur` varchar(255) NOT NULL,
  `Categorie` varchar(255) NOT NULL,
  `NbResa` int(11) NOT NULL DEFAULT 0,
  `Lending` int(11) NOT NULL,
  `TypeOeuvre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`ID`, `Titre`, `Auteur`, `Categorie`, `NbResa`, `Lending`, `TypeOeuvre`) VALUES
(32, 'after we fell', 'zahra  marghad', 'policier', 0, 30, 'Magazine'),
(33, 'un koala dans la tete', 'lilia fernandez', 'documantaire', 0, 10, 'Livre'),
(34, 'nouvelle gen', 'houda ketabi', 'doc', 0, 30, 'Magazine'),
(35, 'Les Misérables', 'Victor Hugo', 'Roman', 0, 0, 'livre'),
(36, 'Madame Bovary', ' Gustave Flaubert', 'roman', 0, 1857, 'realiste'),
(37, 'Guerre et Paix', ' Léon Tolstoï', 'roman', 0, 1863, 'Livre');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `ID` int(11) NOT NULL,
  `OeuvreID` int(11) NOT NULL,
  `UsagerID` int(11) NOT NULL,
  `dateReservation` date NOT NULL,
  `DateAnnulation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`ID`, `OeuvreID`, `UsagerID`, `dateReservation`, `DateAnnulation`) VALUES
(1, 33, 3, '2023-03-14', NULL),
(2, 32, 2, '2023-04-26', NULL),
(3, 35, 113, '2023-03-14', NULL),
(4, 35, 1, '2023-04-26', NULL),
(5, 37, 3, '2023-04-14', NULL),
(6, 37, 2, '2023-04-14', '2023-04-14'),
(7, 32, 1, '2023-03-14', NULL),
(8, 33, 2, '2023-04-26', NULL),
(9, 34, 3, '2023-03-14', NULL),
(10, 35, 113, '2023-04-26', NULL),
(11, 37, 114, '2023-03-14', NULL),
(12, 37, 1, '2023-04-26', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `usager`
--

CREATE TABLE `usager` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `DateNais` date NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usager`
--

INSERT INTO `usager` (`ID`, `Nom`, `Prenom`, `DateNais`, `Sexe`, `Adresse`, `Tel`) VALUES
(1, 'marghad', 'said', '1996-09-12', 'male', 'nakhil', '0625025487'),
(2, 'youssef', 'marghad', '1996-02-16', '', 'haouzia', '0625154898'),
(3, 'dawd', 'khira', '1996-08-01', 'female', 'andalous', '0625154869'),
(113, 'naini', 'adam', '2008-04-20', 'male', 'targa', '0625214585'),
(114, 'IBTISSAM', 'naini', '2003-09-14', 'Masculin', 'hawzia', '0625458745');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKEmprunt521388` (`UsagerID`),
  ADD KEY `FKEmprunt665940` (`ExemplaireId`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKExamplaire350739` (`OeuvreID`);

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FKReservatio502961` (`UsagerID`),
  ADD KEY `FKReservatio107611` (`OeuvreID`);

--
-- Index pour la table `usager`
--
ALTER TABLE `usager`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `usager`
--
ALTER TABLE `usager`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `FK_Emprunt_Examplaire` FOREIGN KEY (`ExemplaireId`) REFERENCES `exemplaire` (`ID`),
  ADD CONSTRAINT `FK_Emprunt_Usager` FOREIGN KEY (`UsagerID`) REFERENCES `usager` (`ID`);

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `FK_Examplaire_Oeuvre` FOREIGN KEY (`OeuvreID`) REFERENCES `oeuvre` (`ID`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_Reservatio_Oeuvre` FOREIGN KEY (`OeuvreID`) REFERENCES `oeuvre` (`ID`),
  ADD CONSTRAINT `FK_Reservatio_Usager` FOREIGN KEY (`UsagerID`) REFERENCES `usager` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
