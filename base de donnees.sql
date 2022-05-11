-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 11 mai 2022 à 14:21
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
-- Base de données : `laravelproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `capteur`
--

CREATE TABLE `capteur` (
  `id` int(11) NOT NULL,
  `intensite` int(11) DEFAULT NULL,
  `sensibilite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `chambre froide`
--

CREATE TABLE `chambre froide` (
  `id` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `etat moteur` int(11) NOT NULL,
  `etat porte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `four`
--

CREATE TABLE `four` (
  `id` int(11) NOT NULL,
  `temperature` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id_module` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `cle` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id_module`, `titre`, `cle`) VALUES
(1, 'Gestion des utilisateurs', 'user'),
(2, 'Gestion des evenements', 'evn'),
(3, 'Gestion des associations', 'ass'),
(4, 'Gestion des publications', 'pub'),
(5, 'all', 'all');

-- --------------------------------------------------------

--
-- Structure de la table `relais`
--

CREATE TABLE `relais` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `module` varchar(255) NOT NULL,
  `role` enum('1','2','3') DEFAULT NULL,
  `etat` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `password`, `image`, `age`, `module`, `role`, `etat`, `created_at`, `update_at`) VALUES
(1, 'Dylan', 'KAMENI', 'admin@admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'dylan.jpg', 26, 'all', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'KAMENI', ' Dylan', 'super@super', '8451ba8a14d79753d34cb33b51ba46b4b025eb81', 'ui-sam.jpg', 32, 'all', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'cezf', 'ROMEO', 'tok@tok.com', 'adadd3931b7c11870918a62467fce7489a25257d', NULL, 23, 'ass', '2', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'KENGNE', 'ROMEO', 'sa@sa.app', 'd7bbf8f7d1a94727d501b20bb12f33fafcd2f276', NULL, 20, 'evn', '3', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'NGAH', 'Julie', 'ss@ss.app', '6fc659bf395b507591640acb557d2e412e6e6e09', NULL, 26, 'ass', '3', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'TOK', 'Julie', 'jeanettetouko@gmail.com', '7581f9f7cb4e2c129cf3994be96f620fca5eb4c0', '47c3d3b7b5dec4016808fefcb3888bda359d3bc0.jpg', 26, 'user', '2', 1, '2020-08-03 15:13:28', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `capteur`
--
ALTER TABLE `capteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chambre froide`
--
ALTER TABLE `chambre froide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `four`
--
ALTER TABLE `four`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`);

--
-- Index pour la table `relais`
--
ALTER TABLE `relais`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre froide`
--
ALTER TABLE `chambre froide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `four`
--
ALTER TABLE `four`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
