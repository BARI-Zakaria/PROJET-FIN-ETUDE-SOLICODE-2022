-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 10 juin 2022 à 17:55
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
-- Base de données : `rental`
--

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

CREATE TABLE `association` (
  `codeReserv` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int(11) NOT NULL,
  `nomCategorie` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `nomCategorie`) VALUES
(1, 'Bricolage'),
(2, 'Jardinage'),
(3, 'Piscine');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nomClient` varchar(254) DEFAULT NULL,
  `telephoneClient` varchar(254) DEFAULT NULL,
  `villeClient` varchar(254) DEFAULT NULL,
  `emailClient` varchar(254) DEFAULT NULL,
  `passwordClient` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nomClient`, `telephoneClient`, `villeClient`, `emailClient`, `passwordClient`) VALUES
(9, 'BARI ZAKARIA', '0694167883', 'TANGER', 'zakariabari213@gmail.com', 'azerty222'),
(10, 'BARI ZAKARIA', '0694167883', 'Tanger', 'zakariabari213@gmail.com', 'zakaria222'),
(11, 'BARI ZAKARIA', '0694167883', 'TANGER', 'zakariabari213@gmail.com', 'bbbb2345');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `ideMedia` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `urlMedia` char(200) DEFAULT NULL,
  `typeMedia` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `nomProduit` varchar(254) DEFAULT NULL,
  `prixProduit` decimal(8,0) DEFAULT NULL,
  `typeProduit` varchar(254) DEFAULT NULL,
  `garantieProduit` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `idCategorie`, `nomProduit`, `prixProduit`, `typeProduit`, `garantieProduit`) VALUES
(8, 1, 'Boite outils', '70', 'Par jour', 'CNI'),
(12, 1, 'Echelle', '60', 'Par jour', 'CNI'),
(13, 1, 'Coupe Carreaux', '80', 'Par jour', '70% du prix d\'origine du produit'),
(14, 1, 'Compresseur d\'air', '220', 'Par jour', 'Chèque'),
(15, 1, 'Hilti', '50', 'Par heure', 'CNI'),
(16, 1, 'Perceuse', '20', 'par haure', 'CNI'),
(17, 2, 'Brouette', '75', 'Par jour', 'CNI'),
(18, 2, 'Débroussailleuse', '100', 'Par heure', '70% du prix d\'origine du produit'),
(19, 2, 'Tondeuse à gazon', '180', 'Par heure', 'Chéque'),
(20, 2, 'Serfouette', '40', 'Par jour', 'CNI'),
(21, 2, 'Tronçonneuse', '150', 'Par heure', 'Chéque'),
(22, 2, 'Tarière thérmique', '130', 'Par heure', 'Chéque'),
(23, 3, 'Aspirteur rectangulaire', '40', 'par heure', 'CNI'),
(24, 3, 'Termométre flottant bouée', '90', 'par jour', '70% du prix d\'origine du produit'),
(25, 3, 'Tuyau flottant', '30', 'par heure', 'CNI'),
(26, 3, 'Epuisette de fond', '50', 'Par heure', 'CNI'),
(27, 3, 'Manche téléscopique', '50', 'Par heure', 'CNI'),
(28, 3, 'Pompe filtration', '320', 'Par jour', 'Chéque');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `codeReserv` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `adresseLiv` varchar(254) DEFAULT NULL,
  `dateCommande` datetime DEFAULT NULL,
  `modeReserv` varchar(254) DEFAULT NULL,
  `teleReserv` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`codeReserv`,`idProduit`),
  ADD KEY `FK_association` (`idProduit`,`codeReserv`) USING BTREE;

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`ideMedia`),
  ADD KEY `idProduit` (`idProduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`),
  ADD KEY `FK_association3` (`idCategorie`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`codeReserv`),
  ADD KEY `FK_association1` (`idClient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `ideMedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `codeReserv` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `association`
--
ALTER TABLE `association`
  ADD CONSTRAINT `FK_association` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`),
  ADD CONSTRAINT `FK_association2` FOREIGN KEY (`codeReserv`) REFERENCES `reservation` (`codeReserv`);

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_association3` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_association1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
