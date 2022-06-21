-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 juin 2022 à 15:12
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
-- Base de données : `rentalalt`
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
(11, 'BARI ZAKARIA', '0694167883', 'TANGER', 'zakariabari213@gmail.com', 'bbbb2345'),
(12, 'Makhado Mouhamed', '0623145789', 'Tanger', 'MOHAMED55@gmail.com', 'ssd555'),
(13, 'Ahmed BARI', '0699336600', 'Sidi slimane', 'zakariabari213@gmail.com', 'vvv000'),
(14, 'AHMED', '0655132456', 'Tanger', 'AOULADAHMARAHMED100@gmail.com', 'haha100'),
(15, 'Reda hammada', '0601729302', 'Tanger', 'redahammada1@gmail.com', '123456'),
(16, 'Khalid Boughaba', '0688459377', 'Tanger', 'boughaba.khalid.dev@gmail.com', '12345678'),
(17, 'mohamed', '0694167883', 'Tanger', 'mohabl@gmail.com', 'mh0702');

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

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`ideMedia`, `idProduit`, `urlMedia`, `typeMedia`) VALUES
(3, 8, 'boiteOutils.png', 'proPics'),
(4, 12, 'Echelle.png', 'proPics'),
(5, 13, 'CoupeCarreaux.png', 'proPics'),
(6, 14, 'CompresseurAir.png', 'proPics'),
(7, 15, 'Hilti.png', 'proPics'),
(8, 16, 'Perceuse.png', 'proPics'),
(9, 17, 'Brouette.png', 'proPics'),
(10, 18, 'Débroussailleuse.png', 'proPics'),
(11, 19, 'Gazon.png', 'proPics'),
(12, 20, 'SERFOUETTE.png', 'proPics'),
(13, 21, 'TRONÇONNEUSE.png', 'proPics'),
(14, 22, 'TarièreThermique.png', 'proPics'),
(15, 23, 'Aspirateur.png', 'proPics'),
(16, 24, 'TermoBouée.png', 'proPics'),
(17, 25, 'TuyauxPiscine.png', 'proPics'),
(18, 26, 'Epuissette.png', 'proPics'),
(19, 27, 'MancheTéléscopique.png', 'proPics'),
(20, 28, 'PompeFiltration.png', 'proPics'),
(21, 8, 'boiteOutilsFlip.png', 'flipImages'),
(22, 12, 'EchelleFlip.png', 'flipImages'),
(23, 13, 'CoupCarreauxFlip.png', 'flipImages'),
(24, 14, 'CompresseurAirFlip.png', 'flipImages'),
(25, 15, 'HiltiFlip.png', 'flipImages'),
(26, 16, 'PerceuseFlip.png', 'flipImages'),
(27, 17, 'BrouetteFlip.png', 'flipImages'),
(28, 18, 'DébroussailleuseFlip.png', 'flipImages'),
(31, 19, 'GazonFlip.png', 'flipImages'),
(32, 20, 'SERFOUETTEFlip.png', 'flipImages'),
(33, 21, 'TRONÇONNEUSEFlip.png', 'flipImages'),
(34, 22, 'TrièreFlip.png', 'flipImages'),
(35, 23, 'AspirateurFlip.png', 'flipImages'),
(36, 24, 'termoBouéeFlip.png', 'flipImages'),
(37, 25, 'TuyauxPiscineFlip.png', 'flipImages'),
(38, 26, 'EpuissetteFlip.png', 'flipImages'),
(39, 27, 'MancheTéléscopiqueFlip.png', 'flipImages'),
(40, 28, 'pompeFiltrationFlip.png', 'flipImages');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `nomProduit` varchar(254) DEFAULT NULL,
  `prixProduit` decimal(8,0) DEFAULT NULL,
  `descProduit` varchar(254) NOT NULL,
  `typeProduit` varchar(254) DEFAULT NULL,
  `garantieProduit` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `idCategorie`, `nomProduit`, `prixProduit`, `descProduit`, `typeProduit`, `garantieProduit`) VALUES
(8, 1, 'Boite à outils', '70', '', 'Par jour', 'CNI'),
(12, 1, 'Echelle', '60', '', 'Par jour', 'CNI'),
(13, 1, 'Coupe Carreaux', '80', '', 'Par jour', '70% du prix d\'origine du produit'),
(14, 1, 'Compresseur d\'air', '220', '', 'Par jour', 'Chèque'),
(15, 1, 'Hilti', '50', '', 'Par heure', 'CNI'),
(16, 1, 'Perceuse', '20', '', 'par heure', 'CNI'),
(17, 2, 'Brouette', '75', '', 'Par jour', 'CNI'),
(18, 2, 'Débroussailleuse', '100', '', 'Par heure', '70% du prix d\'origine du produit'),
(19, 2, 'Tondeuse à gazon', '180', '', 'Par heure', 'Chéque'),
(20, 2, 'Serfouette', '40', '', 'Par jour', 'CNI'),
(21, 2, 'Tronçonneuse', '150', '', 'Par heure', 'Chéque'),
(22, 2, 'Tarière thérmique', '130', '', 'Par heure', 'Chéque'),
(23, 3, 'Aspirteur rectangulaire', '40', '', 'par heure', 'CNI'),
(24, 3, 'Termométre flottant bouée', '90', '', 'par jour', '70% du prix d\'origine du produit'),
(25, 3, 'Tuyau flottant', '30', '', 'par heure', 'CNI'),
(26, 3, 'Epuisette de fond', '50', '', 'Par heure', 'CNI'),
(27, 3, 'Manche téléscopique', '50', '', 'Par heure', 'CNI'),
(28, 3, 'Pompe filtration', '320', '', 'Par jour', 'Chéque');

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
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `ideMedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
