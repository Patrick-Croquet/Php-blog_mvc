-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 26 juin 2020 à 09:42
-- Version du serveur :  10.1.39-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog-ecrivain`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(97, 8, 'À l’image de sa réalisatrice, le film fait preuve à la fois d’une lucidité impitoyable et d’une sensibilité à fleur de peau. La puissance de sa mise en scène et de son écriture, c’est cette impression troublante de pénétrer dans l’intimité des personnages pour assister à des moments de vérité. Le Journal Du Dimanche.', 46, '2020-06-23 16:36:16', 0, 0),
(102, 8, 'Dès la première minute le spectateur est ferré. Martin Scorsese le tient, ne lâchera plus tout au long des 145 minutes des Affranchis.\r\nLe Monde, 12/09/1990', 11, '2020-06-24 10:52:20', 0, 0),
(103, 14, 'Jamais peut-être la mise en scène de Scorsese n\'aura été aussi éblouissante de bout en bout.\r\nPositif, N°356, octobre 1990', 11, '2020-06-24 10:56:25', 0, 0),
(104, 14, 'Voilà un film à contre-courant de tout ce qui se fait, envoûtant et nostalgique. Un émerveillement.\r\nLe Figaroscope', 40, '2020-06-24 11:00:26', 0, 0),
(105, 8, 'Si faire du cinéma c\'est avoir un regard unique sur le monde qui nous entoure alors La double vie de Véronique s\'impose comme une des plus éclatantes réussites du 7e art.\r\naVoir-aLire.com', 24, '2020-06-25 17:43:54', 0, 0),
(106, 8, 'Pour son premier long métrage, Neill Blomkamp réussit le tour de force d\'ancrer un scénario rocambolesque dans un décor et une atmosphère troublants de réalisme grâce à un style documentaire bien employé et des effets spéciaux bluffants.\r\nFilmsactu', 45, '2020-06-25 17:45:44', 0, 0),
(107, 8, 'Originalité du scénario et virtuosité de la mise en scène. Un détonnant mélange des genres nourri d\'humour et de consistances.\r\nOuest France', 45, '2020-06-25 17:46:08', 0, 0),
(108, 8, 'Il est certain qu\'un virtuose est aux manettes et c\'est déjà un grand réconfort s\'agissant de SF, l\'un des genres les plus maltraités par l\'histoire du cinéma, du point de vue du style comme des neurones. Le style de Bloomkamp est vif et tranché.\r\nLibération', 45, '2020-06-25 17:46:43', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'Les Affranchis', '<p>Depuis sa plus tendre enfance, Henry Hill, né d\'un père irlandais et d\'une mère sicilienne, veut devenir gangster et appartenir à la Mafia. Adolescent dans les années cinquante, il commence par travailler pour le compte de Paul Cicero et voue une grande admiration pour Jimmy Conway, qui a fait du détournement de camions sa grande spécialité. Lucide et ambitieux, il contribue au casse des entrepôts de l\'aéroport d\'Idlewild et épouse Karen, une jeune Juive qu\'il trompe régulièrement. Mais son implication dans le trafic de drogue le fera plonger...</p>', 'les-affranchis.jpg', '2020-06-23 10:18:00'),
(24, 'La double vie de Véronique', '<p>Il y a 20 ans dans deux villes différentes (en France et en Pologne) naquirent deux petites filles pareilles. Elles n\'ont rien en commun, ni père, ni mère, ni grands parents, et leurs familles ne se sont jamais connues.\r\nPourtant elles sont identiques : toutes deux gauchères, aiment marcher les pieds nus, et le contact d\'un anneau d\'or sur leurs paupières. Et surtout, toutes deux ont une voix magnifique, sublime, un sens musical absolu, et la même malformation cardiaque difficilement détectable. L\'une profitera des expériences et de la sagesse de l\'autre sans le savoir. Comme si chaque fois que la première se blessait avec un objet la seconde évitait le contact de ce même objet.\r\nC\'est une histoire d\'amour, simple et émouvante. L\'histoire d\'une vie qui continue, quittant un être pour se perpétuer dans le corps et l\'âme d\'un autre être.</p>', 'la\r\n-double-vie-de-veronique.jpg', '2019-06-23 14:38:05'),
(40, 'In The Mood For Love', '<p>Hong Kong, 1962. M. et Mme Chow emmenagent dans leur nouvel appartement le meme jour que leurs voisins, M. et Mme Chan. Sans comprendre comment cela a commence, Chow Mo-wan et Chan Li-zhen apprennent que leurs epoux respectifs ont une liaison. Cette decouverte les choque mais les rapproche. Ils se voient de plus en plus souvent mais le voisinage commence a s\'en apercevoir. Il semble n\'y avoir aucune possibilite pour eux de vivre une relation amoureuse. Mais la retenue, les reserves emotionnelles de Mme Chan hantent M. Chow, qui sent ses sentiments changer.</p>', 'in-the-mood-for-love.jpg', '2019-06-23 16:10:04'),
(45, 'District 9', '<p>Il y a vingt-huit ans, des extraterrestres entr&egrave;rent en contact avec la Terre...Ces visiteurs d\'au-del&agrave; des &eacute;toiles &eacute;taient des r&eacute;fugi&eacute;s et furent install&eacute;s dans le District 9, en Afrique du Sud, pendant que les nations du monde se querellaient pour savoir quoi en faire...Depuis, la gestion de la situation a &eacute;t&eacute; transf&eacute;r&eacute;e au MNU (Multi-National United), une soci&eacute;t&eacute; priv&eacute;e qui n\'a pas grand-chose &agrave; faire du sort de ces cr&eacute;atures, mais qui fera d\'&eacute;normes b&eacute;n&eacute;fices si elle arrive &agrave; faire fonctionner leur extraordinaire armement. Jusqu\'&agrave; pr&eacute;sent, toutes les tentatives ont &eacute;chou&eacute; : pour que les armes marchent, il faut de l\'ADN extraterrestre. La tension entre extraterrestres et humains atteint son maximum lorsque le MNU commence &agrave; &eacute;vacuer les non-humains du District 9 vers un nouveau camp, en envoyant des agents de terrain s\'occuper de leur transfert. L\'un de ces agents, Wikus van der Merwe, contracte un virus extraterrestre qui se met &agrave; modifier son ADN. Wikus est &agrave; pr&eacute;sent l\'homme le plus recherch&eacute; de la plan&egrave;te, celui qui vaut plus qu\'une fortune : il est la cl&eacute; qui permettra de percer le secret de la technologie alien.Repouss&eacute;, isol&eacute;, sans aide ni amis, il ne lui reste qu\'un seul endroit o&ugrave; se cacher : le District 9...</p>', 'district-9.jpg', '0000-00-00 00:00:00'),
(46, 'Mon Roi', '<p>Tony est admise dans un centre de r&eacute;&eacute;ducation apr&egrave;s une grave chute de ski. D&eacute;pendante du personnel m&eacute;dical et des antidouleurs, elle prend le temps de se rem&eacute;morer l&rsquo;histoire tumultueuse qu&rsquo;elle a v&eacute;cue avec Georgio. Pourquoi se sont-ils aim&eacute;s ? Qui est r&eacute;ellement l&rsquo;homme qu&rsquo;elle a ador&eacute;? Comment a-t-elle pu se soumettre &agrave; cette passion &eacute;touffante et destructrice ? Pour Tony c&rsquo;est une difficile reconstruction qui commence d&eacute;sormais, un travail corporel qui lui permettra peut-&ecirc;tre de d&eacute;finitivement se lib&eacute;rer &hellip;</p>', 'mon-roi.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'test@test.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'Anne'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(21, 'test2@test.com', 'Afpa@94010', NULL, 'Tina'),
(19, 'test3@test.com', 'Afpa@94010', NULL, 'Joan'),
(20, 'test4@test.com', 'Afpa@94010', NULL, 'Paul'),
(22, 'test5@test.com', 'Afpa@94010', NULL, 'Jack'),
(23, 'test6@test.com', 'Afpa@94010', NULL, 'Jane');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
