-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 20 mars 2018 à 11:51
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `LOGIN` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `NUM_COM` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_COM` date DEFAULT NULL,
  `PRIX_COM` float DEFAULT NULL,
  PRIMARY KEY (`NUM_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `consomation`
--

DROP TABLE IF EXISTS `consomation`;
CREATE TABLE IF NOT EXISTS `consomation` (
  `ID_CONSOM` int(11) NOT NULL,
  `JOUR_CONSOM` date DEFAULT NULL,
  `NBR_REC` int(11) DEFAULT NULL,
  `depense_TOTAL` float DEFAULT NULL,
  `prix_vente` double NOT NULL,
  PRIMARY KEY (`ID_CONSOM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient_dynamique`
--

DROP TABLE IF EXISTS `ingredient_dynamique`;
CREATE TABLE IF NOT EXISTS `ingredient_dynamique` (
  `ID_TABLE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_INGRED` int(11) NOT NULL,
  `PRIX_UNIT` float NOT NULL,
  `QUANTITE` float NOT NULL,
  `JOUR` date NOT NULL,
  PRIMARY KEY (`ID_TABLE`),
  KEY `ID_INGRED` (`ID_INGRED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient_statique`
--

DROP TABLE IF EXISTS `ingredient_statique`;
CREATE TABLE IF NOT EXISTS `ingredient_statique` (
  `ID_INGRED` int(6) NOT NULL,
  `NOM_INGRED` varchar(30) DEFAULT NULL,
  `STOCK_MIN` float DEFAULT NULL,
  PRIMARY KEY (`ID_INGRED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `NOM_REC` varchar(100) NOT NULL,
  `PRIX_REC` float DEFAULT NULL,
  `PRIX_VENTE` float DEFAULT NULL,
  PRIMARY KEY (`NOM_REC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rec_com`
--

DROP TABLE IF EXISTS `rec_com`;
CREATE TABLE IF NOT EXISTS `rec_com` (
  `NUM_COM` int(11) NOT NULL,
  `NOM_REC` varchar(100) NOT NULL,
  KEY `FK_REC_COM_REC_COM_RECETTE` (`NOM_REC`),
  KEY `NUM_COM` (`NUM_COM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rec_consom`
--

DROP TABLE IF EXISTS `rec_consom`;
CREATE TABLE IF NOT EXISTS `rec_consom` (
  `NOM_REC` varchar(100) NOT NULL,
  `ID_CONSOM` int(11) NOT NULL,
  PRIMARY KEY (`NOM_REC`,`ID_CONSOM`),
  KEY `FK_REC_CONS_REC_CONSO_CONSOMAT` (`ID_CONSOM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rec_ingred`
--

DROP TABLE IF EXISTS `rec_ingred`;
CREATE TABLE IF NOT EXISTS `rec_ingred` (
  `NOM_REC` varchar(100) NOT NULL,
  `ID_INGRED` smallint(6) NOT NULL,
  `QUANTITE_CONSOM` float DEFAULT NULL,
  PRIMARY KEY (`NOM_REC`,`ID_INGRED`),
  KEY `FK_REC_INGR_REC_INGRE_INGREDIE` (`ID_INGRED`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ingredient_dynamique`
--
ALTER TABLE `ingredient_dynamique`
  ADD CONSTRAINT `ingredient_dynamique_ibfk_1` FOREIGN KEY (`ID_INGRED`) REFERENCES `ingredient_statique` (`ID_INGRED`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rec_com`
--
ALTER TABLE `rec_com`
  ADD CONSTRAINT `rec_com_ibfk_1` FOREIGN KEY (`NUM_COM`) REFERENCES `commande` (`NUM_COM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rec_ingred`
--
ALTER TABLE `rec_ingred`
  ADD CONSTRAINT `rec_ingred_ibfk_1` FOREIGN KEY (`NOM_REC`) REFERENCES `rec_consom` (`NOM_REC`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
