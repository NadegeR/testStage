-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 13 mai 2022 à 06:00
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `teststage`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `cover`, `date_created`) VALUES
(1, 'Le rover Curiosity célèbre une autre année sur Mars', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac libero luctus, pellentesque erat vehicula, egestas metus. Suspendisse potenti. Praesent id tincidunt neque,\r\nvitae egestas nisl. Maecenas erat elit, gravida et pellentesque id, condimentum vel libero. Morbi ac placerat lorem. Mauris sit amet sapien eu ante imperdiet bibendum a ut\r\nest. Curabitur tempus gravida nisi, nec auctor tortor suscipit id. Ut et est nulla. Cras in ex enim. Fusce pulvinar, dolor quis porta sodales, nisi lectus fermentum ante, vel\r\ngravida ex sem eget ipsum. Nulla rutrum ligula eget lectus maximus viverra. Donec ut interdum libero, sed condimentum sapien. Donec ultricies vel arcu a viverra. Aliquam\r\nquis nunc mattis, molestie tellus quis, tincidunt orci.\r\n\r\nDuis et sapien porttitor, interdum lorem vitae, tincidunt lectus. Praesent a mi et tortor rhoncus ullamcorper. In ut eros fermentum, pretium metus eget, egestas mauris.\r\nQuisque massa dui, tempor eu mollis et, vestibulum a metus. Curabitur ac leo enim. Vivamus odio ex, lobortis eget ante eu, fermentum lobortis nibh. Curabitur eros neque,\r\nmaximus quis dictum eu, dictum sed arcu. Pellentesque tristique ex eget lacus pulvinar, id consectetur libero ultrices. Interdum et malesuada fames ac ante ipsum primis in\r\nfaucibus. Donec id lectus a ex varius venenatis vitae sed eros. Nullam id tellus sed mi tempor commodo at id sapien. Vivamus in bibendum leo. Nam lacinia viverra nunc,\r\negestas cursus est rhoncus vitae. Nulla ut felis mollis, mattis mauris eu, lobortis velit.\r\n\r\nUt eget interdum metus, non luctus tortor. Integer consequat in ante eget auctor. Morbi pellentesque lacus lectus, ac venenatis tellus ultricies nec. Etiam vehicula posuere\r\norci, at rhoncus felis congue at. Praesent et odio ac leo suscipit tincidunt. Morbi iaculis efficitur purus id aliquam. Praesent vitae leo lorem. Nam risus eros, malesuada vel\r\nblandit at, convallis et augue. Quisque sollicitudin mi eu mi dictum, eget lobortis tellus porta. In hac habitasse platea dictumst. Aenean in orci quis tortor dictum posuere.\r\n\r\nCurabitur elementum tempor scelerisque. Cras at sagittis urna. Nulla viverra rutrum leo in malesuada. Suspendisse fringilla nunc vitae elit vulputate hendrerit. Suspendisse\r\nat nisl euismod magna interdum vulputate. Fusce aliquet a felis ut venenatis. Donec rutrum mi mi, sit amet elementum diam sagittis at. Donec condimentum tincidunt elit.\r\nSed libero ex, posuere eu massa ac, aliquam varius sem.\r\n\r\nPellentesque lobortis elit quis malesuada aliquam. Phasellus ante augue, vulputate ac massa quis, molestie venenatis ipsum. Nam pharetra vel ligula at pulvinar. Curabitur\r\nnulla nunc, tempus consequat congue vitae, sollicitudin ut risus. Maecenas eget augue nisi. Morbi quis venenatis eros, ac facilisis mi. Vivamus eu pulvinar nisl, eget feugiat\r\narcu. Proin lacus sapien, euismod ut lacinia non, feugiat sit amet urna. Vestibulum maximus quam non nibh posuere blandit. Proin mattis dignissim lobortis. Aenean\r\naliquam lobortis ante in consequat', 'fusee-627cafdec9f08.jpg', '2022-02-02 18:33:19'),
(2, 'Bébés étoiles dans la constellation d\'Orion', 'ddddd', 'image1-627cb0b66935c.jpg', '2022-02-10 17:10:14'),
(3, 'Le télescope James Webb à bord d\'une fusée Ariane 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac libero luctus, pellentesque erat vehicula, egestas metus. Suspendisse potenti. Praesent id tincidunt neque, vitae egestas nisl. Maecenas erat elit, gravida et pellentesque id, condimentum vel libero. Morbi ac placerat lorem. Mauris sit amet sapien eu ante imperdiet bibendum a ut est. Curabitur tempus gravida nisi, nec auctor tortor suscipit id. Ut et est nulla. Cras in ex enim. Fusce pulvinar, dolor quis porta sodales, nisi lectus fermentum ante, vel gravida ex sem eget ipsum. Nulla rutrum ligula eget lectus maximus viverra. Donec ut interdum libero, sed condimentum sapien. Donec ultricies vel arcu a viverra. Aliquam quis nunc mattis, molestie tellus quis, tincidunt orci. Duis et sapien porttitor, interdum lorem vitae, tincidunt lectus. Praesent a mi et tortor rhoncus ullamcorper. In ut eros fermentum, pretium metus eget, egestas mauris. Quisque massa dui, tempor eu mollis et, vestibulum a metus. Curabitur ac leo enim. Vivamus odio ex, lobortis eget ante eu, fermentum lobortis nibh. Curabitur eros neque, maximus quis dictum eu, dictum sed arcu. Pellentesque tristique ex eget lacus pulvinar, id consectetur libero ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec id lectus a ex varius venenatis vitae sed eros. Nullam id tellus sed mi tempor commodo at id sapien. Vivamus in bibendum leo. Nam lacinia viverra nunc, egestas cursus est rhoncus vitae. Nulla ut felis mollis, mattis mauris eu, lobortis velit. Ut eget interdum metus, non luctus tortor. Integer consequat in ante eget auctor. Morbi pellentesque lacus lectus, ac venenatis tellus ultricies nec. Etiam vehicula posuere orci, at rhoncus felis congue at. Praesent et odio ac leo suscipit tincidunt. Morbi iaculis efficitur purus id aliquam. Praesent vitae leo lorem. Nam risus eros, malesuada vel blandit at, convallis et augue. Quisque sollicitudin mi eu mi dictum, eget lobortis tellus porta. In hac habitasse platea dictumst. Aenean in orci quis tortor dictum posuere.', 'fusee.png', '2022-04-01 09:29:19'),
(4, 'Restez à l\'écoute pour DART !\r\n', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac libero luctus, pellentesque erat vehicula, egestas metus. Suspendisse potenti. Praesent id tincidunt neque, vitae egestas nisl. Maecenas erat elit, gravida et pellentesque id, condimentum vel libero. Morbi ac placerat lorem. Mauris sit amet sapien eu ante imperdiet bibendum a ut est. Curabitur tempus gravida nisi, nec auctor tortor suscipit id. Ut et est nulla. Cras in ex enim. Fusce pulvinar, dolor quis porta sodales, nisi lectus fermentum ante, vel gravida ex sem eget ipsum. Nulla rutrum ligula eget lectus maximus viverra. Donec ut interdum libero, sed condimentum sapien. Donec ultricies vel arcu a viverra. Aliquam quis nunc mattis, molestie tellus quis, tincidunt orci. Duis et sapien porttitor, interdum lorem vitae, tincidunt lectus. Praesent a mi et tortor rhoncus ullamcorper. In ut eros fermentum, pretium metus eget, egestas mauris. Quisque massa dui, tempor eu mollis et, vestibulum a metus. Curabitur ac leo enim. Vivamus odio ex, lobortis eget ante eu, fermentum lobortis nibh. Curabitur eros neque, maximus quis dictum eu, dictum sed arcu. Pellentesque tristique ex eget lacus pulvinar, id consectetur libero ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec id lectus a ex varius venenatis vitae sed eros. Nullam id tellus sed mi tempor commodo at id sapien. Vivamus in bibendum leo. Nam lacinia viverra nunc, egestas cursus est rhoncus vitae. Nulla ut felis mollis, mattis mauris eu, lobortis velit. Ut eget interdum metus, non luctus tortor. Integer consequat in ante eget auctor. Morbi pellentesque lacus lectus, ac venenatis tellus ultricies nec. Etiam vehicula posuere orci, at rhoncus felis congue at. Praesent et odio ac leo suscipit tincidunt. Morbi iaculis efficitur purus id aliquam. Praesent vitae leo lorem. Nam risus eros, malesuada vel blandit at, convallis et augue. Quisque sollicitudin mi eu mi dictum, eget lobortis tellus porta. In hac habitasse platea dictumst. Aenean in orci quis tortor dictum posuere.', 'dart_header_2.png', '2022-04-03 09:30:36'),
(8, 'Le rover Curiosity célèbre une autre année sur Mars', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac libero luctus, pellentesque erat vehicula, egestas metus. Suspendisse potenti. Praesent id tincidunt neque, vitae egestas nisl. Maecenas erat elit, gravida et pellentesque id, condimentum vel libero. Morbi ac placerat lorem. Mauris sit amet sapien eu ante imperdiet bibendum a ut est. Curabitur tempus gravida nisi, nec auctor tortor suscipit id. Ut et est nulla. Cras in ex enim. Fusce pulvinar, dolor quis porta sodales, nisi lectus fermentum ante, vel gravida ex sem eget ipsum. Nulla rutrum ligula eget lectus maximus viverra. Donec ut interdum libero, sed condimentum sapien. Donec ultricies vel arcu a viverra. Aliquam quis nunc mattis, molestie tellus quis, tincidunt orci.  Duis et sapien porttitor, interdum lorem vitae, tincidunt lectus. Praesent a mi et tortor rhoncus ullamcorper. In ut eros fermentum, pretium metus eget, egestas mauris. Quisque massa dui, tempor eu mollis et, vestibulum a metus. Curabitur ac leo enim. Vivamus odio ex, lobortis', 'robot-627ccba73cded.jpg', '2022-01-01 12:27:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
