-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 juin 2022 à 17:33
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
(18, 'BARI ZAKARIA', '0694167883', 'Tanger', 'zakariabari213@gmail.com', 'zakaria23'),
(19, 'Zakaria', '0694167883', 'Tanger', 'zakariabari234@gmail.com', 'zakaria04'),
(20, 'Yasser BOURADA', '0638716798', 'Casablanca', 'yasser.bourada.solicode@gmail.com', 'yasser45');

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
(20, 28, 'PompeFiltration.png', 'proPics');

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
  `garantieProduit` varchar(254) DEFAULT NULL,
  `locProduit` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `idCategorie`, `nomProduit`, `prixProduit`, `descProduit`, `typeProduit`, `garantieProduit`, `locProduit`) VALUES
(8, 1, 'Boite à outils', '70', 'Cette boîte à outils de qualité de Tayg a des dimensions de 600 x 305 x 295 mm, elle est équipée d\'un bac porte-outils amovible. Cette boîte à outils comporte une poignée en aluminium et deux fermetures solides métalique.', 'Par jour', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(12, 1, 'Echelle', '60', 'Échelle tronsformable professionnel en alliage d\'aluminium. Durable, antirouille, résistance maximale.', 'Par jour', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(13, 1, 'Coupe Carreaux', '80', 'Dimensions de la base:815x195cm épaisseur de la base: 2mm Dimensions de la lame:16x6x3mm', 'Par jour', '70% du prix d\'origine du produit', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(14, 1, 'Compresseur d\'air', '220', 'Compresseur à air comprimé de qualité supérieure avec taille VERTICAL de 70 L, arrêt automatique à 8 bars, silencieux, 69 dB.', 'Par jour', 'Chèque', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(15, 1, 'Hilti', '50', 'Couple élevé de 85 Nm en vissage dur et moteur sans charbon pour une progression de travail rapide. Mandrin entièrement métallique pour les applications les plus exigeantes sur les chantiers.', 'Par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(16, 1, 'Perceuse', '20', 'Perceuse-visseuse 18V GSR 180-LI Bosch a la fonction de perçage sans percussion et la fonction de vissage', 'par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(17, 2, 'Brouette', '75', 'Aucune déscription  pour ce produit', 'Par jour', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(18, 2, 'Débroussailleuse', '100', ' Tension : 20 V Vitesse à vide : 8200/min Diamètre de coupe : 300 mm Diamètre de la ligne : 1,6 mm torsadé longueur de ligne : 5 m Batterie et chargeur non inclus', 'Par heure', '70% du prix d\'origine du produit', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(19, 2, 'Tondeuse à gazon', '180', 'La tondeuse à gazon Rotak 32 : idéale pour les jardins de petite et moyenne superficie', 'Par heure', 'Chéque', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(20, 2, 'Serfouette', '40', 'Côté panne : travailler la terre en surface, désherber et butter les plantations / côté fourche pour arracher ou casser la croûte du sol.', 'Par jour', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(21, 2, 'Tronçonneuse', '150', 'Tronçonneuse polyvalente, facile à utiliser pour les propriétaires de terrains. Grâce à ses très bonnes performances de coupe, cette tronçonneuse facilite la coupe du bois de chauffage, l\'abattage ou l\'ébranchage', 'Par heure', 'Chéque', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(22, 2, 'Tarière thérmique', '130', 'La tarière est idéale pour forer rapidement dans la terre afin de la fixer au sol: poteaux de clôture, poteaux, arbres, arbustes, etc.', 'Par heure', 'Chéque', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(23, 3, 'Aspirteur rectangulaire', '40', 'Aucune déscription pour ce produit', 'par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(24, 3, 'Termométre flottant bouée', '90', 'Thermomètre piscine bouée - Thermomètre flottant bouée. Diamètre 18cm longueur de sonde 27cm', 'par jour', '70% du prix d\'origine du produit', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(25, 3, 'Tuyau flottant', '30', 'Aucune déscription pour ce produit', 'par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(26, 3, 'Epuisette de fond', '50', 'Aucune déscription pour ce produit', 'Par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(27, 3, 'Manche téléscopique', '50', 'Aucune déscription pour ce produit', 'Par heure', 'CNI', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.'),
(28, 3, 'Pompe filtration', '320', 'La Pompe Filtration Astral VICTORIA Plus 0,50 cv Mono 10 m3/h est une pompe auto-amorçante équipée des nouveaux moteurs Eurotension supportants des variations de tension de ±10% .', 'Par jour', 'Chéque', 'HAY Zemmouri, Avnenue Nigéria, 90000 Tanger.');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `codeReserv` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `adresseLiv` varchar(254) DEFAULT NULL,
  `dateCommandeD` date NOT NULL,
  `dateCommandeF` date NOT NULL,
  `teleReserv` varchar(254) DEFAULT NULL,
  `emailReserv` varchar(254) NOT NULL,
  `prixTotal` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`codeReserv`, `idClient`, `adresseLiv`, `dateCommandeD`, `dateCommandeF`, `teleReserv`, `emailReserv`, `prixTotal`) VALUES
(16, 19, 'HAY Zemmouri 1 Bloc A4 n13', '2022-06-16', '2022-06-18', '0688465015', 'zakariabari234@gmail.com', '200'),
(17, 19, 'HAY Zemmouri 1 Bloc A4 n13', '2022-06-11', '2022-06-26', '0694167883', 'amine22@gmail.com', '1500'),
(18, 19, 'HAY Zemmouri 1 Bloc A4 n13', '2022-06-11', '2022-06-26', '0694167883', 'amine22@gmail.com', '1500');

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
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `ideMedia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `codeReserv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
