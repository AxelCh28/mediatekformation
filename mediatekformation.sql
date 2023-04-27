-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 27 avr. 2023 à 17:11
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
-- Base de données : `mediatekformation`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'Java'),
(2, 'UML'),
(3, 'C#'),
(4, 'Python'),
(5, 'MCD'),
(6, 'Android'),
(7, 'POO'),
(8, 'SQL'),
(9, 'Cours');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220831122705', '2022-08-31 12:29:46', 298),
('DoctrineMigrations\\Version20220901133418', '2022-09-01 13:35:11', 75),
('DoctrineMigrations\\Version20220901142041', '2022-09-01 14:23:58', 447),
('DoctrineMigrations\\Version20220902060409', '2022-09-02 06:04:28', 72),
('DoctrineMigrations\\Version20220902061351', '2022-09-02 06:14:16', 303),
('DoctrineMigrations\\Version20220904053453', '2022-09-04 05:36:24', 237);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published_at` datetime DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `video_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `playlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_404021BF6BBD148` (`playlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `published_at`, `title`, `description`, `video_id`, `playlist_id`) VALUES
(1, '2021-01-04 17:00:12', 'Eclipse nÂ°8 : DÃ©ploiement', 'ExÃ©cution de l\'application en dehors de l\'IDE, en invite de commande.\nCrÃ©ation d\'un ficher jar pour le dÃ©ploiement de l\'application.\n00:20 : exÃ©cuter l\'application Ã  partir d\'un invite de commandes\n04:41 : crÃ©er un fichier jar auto exÃ©cutable\n06:42 : exÃ©cuter un fichier jar directement\n07:09 : exÃ©cuter un fichier jar dans l\'invite de commande pour avoir les retours console', 'Z4yTTXka958', 1),
(2, '2021-01-02 17:00:01', 'Eclipse nÂ°7 : Tests unitaires', 'IntÃ©gration de JUnit dans l\'application et crÃ©ation de tests unitaires.\n00:07 : rappel sur le principe du test unitaire\n01:01 : intÃ©grer JUnit au projet (une seule fois)\n01:52 : crÃ©er une classe de test\n03:49 : crÃ©er une mÃ©thode de test\n08:35 : lancer le test\n09:11 : crÃ©er une autre mÃ©thode de test pour tester la mÃªme mÃ©thode\n11:02 : relancer le test', '-nw42Xq6cYE', 1),
(3, '2020-12-30 17:00:07', 'Eclipse nÂ°6 : Documentation technique', 'IntÃ©gration des commentaires normalisÃ©s et gÃ©nÃ©ration automatique de la documentation technique\n00:08 : insÃ©rer des commentaires normalisÃ©s\n02:14 : gÃ©nÃ©rer documentation technique\n04:35 : repÃ©rer et corriger les erreurs et warnings\n06:58 : afficher la documentation technique', 'PrK_P3TKc00', 1),
(4, '2020-12-29 17:00:00', 'Eclipse nÂ°5 : Refactoring', 'Utilisation des outils de refactoring et de gÃ©nÃ©ration automatique de code.\n01:00 : refaire automatiquement les indentations\n01:25 : changer un nom (classe, mÃ©hode, propriÃ©tÃ©)\n04:04 : extraire une mÃ©thode\n06:19 : modifier la signature d\'une mÃ©thode\n09:23 : gÃ©nÃ©rer du code (constructeur, getter/setter)\n12:34 : encapsuler une propriÃ©tÃ©\n15:30 : extraire une interface', '1p_mKDDSMnQ', 1),
(5, '2020-11-09 17:00:25', 'Eclipse nÂ°4 : WindowBuilder', 'IntÃ©gration de l\'outil WindowBuilder dans Eclipse pour pouvoir construire de faÃ§on visuelle, une interface graphique.\n00:00 : tÃ©lÃ©chargement et configuration de WindowBuilder\n03:00 : crÃ©ation d\'une JFrame avec WindowBuilder\n05:56 : construction de l\'interface graphique\n\n10:43 : gestion des Ã©vÃ©nements\n16:15 : gestion des ressources graphiques (images...)', 'pQfbr3hpw04', 1),
(6, '2020-11-07 17:00:09', 'Eclipse nÂ°3 : GitHub et Eclipse', 'CrÃ©er un compte sur le site GitHub (site offrant un serveur de gestion de versions pour mÃ©moriser les diffÃ©rentes Ã©tapes d\'un projet et pour le travail collaboratif).\nLier ce compte Ã  un projet sous Eclipse.\nUtiliser ce lien pour enregistrer Ã  distance (commit and push), annuler un commit (revert commit) ou rÃ©cupÃ©rer un projet distant (clone).\n\n\nSommaire :\n\n00:00 : crÃ©ation d\'un compte GitHub\n01:17 : crÃ©ation d\'un repository sur GitHub\n\n02:35 : crÃ©ation d\'un projet sous Eclipse\n\n05:07 : crÃ©ation d\"un dÃ©pÃ´t local dans Eclipse\n07:17 : lien avec le dÃ©pÃ´t distant (premier enregistrement : commit and push)\n13:00 : annulation d\'un commit (revert commit)\n15:28 : rÃ©cupÃ©ration d\'un projet distant (clone)\n\n\nERRATUM :\n1:48 : je dis que qu\'un repository privÃ© est payant. En fait, il semblerait que depuis janvier 2019, il soit gratuit avec une limite de 3 collaborateurs par repository (merci Ã  Kassim Acacia pour le signalement)', 'mlN7VvZkXtM', 1),
(7, '2020-11-05 17:00:02', 'Eclipse nÂ°2 : rÃ©troconception avec ObjectAid', 'Utilisation de l\'outil ObjectAid sous Eclipse pour faire de la rÃ©troconception sur les classes, c\'est-Ã -dire obtenir le diagramme de classes Ã  partir de classes existantes.\n\nATTENTION, contrairement Ã  ce qui est prÃ©sentÃ© dans la vidÃ©o, ObjectAid n\'est plus accessible via le site. Il faut aller ici :\nhttps://github.com/AbbaouiAmine/objectAidArchive/blob/main/objectaid-1.2.4.zip\nTÃ©lÃ©charger le zip. Dans la vidÃ©o, Ã  0:48, quand je dis de donner l\'adresse Internet, Ã  la place, il faut cliquer sur \"archive\", aller sÃ©lectionner le fichier zip tÃ©lÃ©chargÃ© puis continuer les autres Ã©tapes de la vidÃ©o.', '9UBtVxHsnNk', 1),
(8, '2020-11-03 17:08:22', 'Eclipse nÂ°1 : installation de l\'IDE', 'PremiÃ¨re vidÃ©o d\'une sÃ©rie sur Eclipse et le dÃ©veloppement Java.\nInstallation du JDK et d\'Eclipse 2020-09.', 'EBzTRPgbqdc', 1),
(9, '2020-11-01 17:00:13', 'UML : Diagramme de paquetages', 'PrÃ©sentation des Ã©lÃ©ments qui constituent un diagramme de paquetages.', 'Wkbwzfybk1E', 24),
(10, '2020-10-30 17:00:09', 'UML : Diagramme de classes', 'PrÃ©sentation des Ã©lÃ©ments qui constituent un diagramme de classes', 'odKgwPftibM', 24),
(12, '2020-09-26 16:30:01', 'UML : Diagramme d\'activitÃ©', 'PrÃ©sentation du tableau descriptif d\'un cas d\'utilisation et la reprÃ©sentation graphique de son scÃ©nario avec un diagramme d\'activitÃ©.', 'D4tnhIpYYSM', 24),
(13, '2020-09-24 16:30:01', 'UML : Diagramme de cas d\'utilisation', 'PrÃ©sentation du diagramme de cas d\'utilisation Ã  travers la construction d\'un exemple.', 'LDTDlXMV1xY', 24),
(14, '2020-08-07 16:15:01', 'C# : ListBox en couleur', 'Comment mettre les lignes d\'une ListBox en couleur, en fonction de certains critÃ¨res.\n\n00:00 : affichage simple\n00:39 : couleurs sur les boutons radios\n01:12 : DrawMode et DrawItem sur ListBox\n02:20 : documentation officielle sur Internet\n06:00 : code de DrawItem\n10:22 : tests', 'Ce3nT4g5SKk', 2),
(15, '2020-08-04 16:15:01', 'C# : Documentation technique', 'Comment gÃ©nÃ©rer automatiquement une documentation technique sous Visual Studio.\nLe fichier gÃ©nÃ©rÃ© Ã©tant au format XML, il est plus pratique d\'utiliser un outil pour obtenir un autre format plus lisible, comme un site HTML.\nL\'outil utilisÃ© dans cette vidÃ©o est Sandcastle, tÃ©lÃ©chargeable ici :\nhttps://github.com/EWSoftware/SHFB/releases\n\n00:00 : configuration du projet pour crÃ©er la doc technique\n00:48 : ajout des commentaires normalisÃ©s\n03:53 : gÃ©nÃ©ration de la doc au format xml\n04:45 : tÃ©lÃ©chargement et installation de SandCastle\n09:37 : crÃ©ation du projet sous SandCastle\n11:58 : obtention du site de la doc technique', 'GH5FgAUanhw', 2),
(16, '2020-08-02 16:26:13', 'C# : Lier List et ListBox', 'Comment lier une List Ã  une ListBox, afin de pouvoir rÃ©cupÃ©rer le bon objet dans la List, lors d\'une sÃ©lection d\'une ligne dans la ListBox.\n\nNotions abordÃ©es : \nRÃ©cupÃ©ration de l\'indice de ligne de la ListBox, qui est aussi l\'indice de l\'objet dans la List.\n\nPossibilitÃ© de lier les 2 avec DataSource. \n\nUtilisation de BindingList pour le lien.\n\n\n00:00 : rappel sur le remplissage du ListBox\n00:58 : gÃ©rer la suppression\n06:03 : lien avec DataSource\n08:39 : BindingList', '-Zt1vbdUdnQ', 2),
(17, '2020-07-31 15:55:54', 'C# : Tri avec ToString et CompareTo', 'Comment gÃ©rer le tri sur le titre, dans la liste, alors que la premiÃ¨re information affichÃ©e est l\'annÃ©e de sortie.\n\nNotions abordÃ©es : \nToString : mÃ©thode existante dans la classe Object (mÃ¨re de toutes les classes) qui permet de transformer une variable (quel que soit son type) en chaÃ®ne. Cette mÃ©thode peut Ãªtre redÃ©finie  (override) dans n\'importe quelle classe, afin de dÃ©finir notre propre formatage de la transformation en chaÃ®ne.\nCompareTo : mÃ©thode prÃ©sente dans l\'interface IComparable (il faut donc que la classe implÃ©mente IComparable) et qui permet de comparer 2 informations. Cette mÃ©thode sert Ã  la gestion de tris (en gÃ©rant une comparaison personnalisÃ©e).\n\n00:49 : mÃ©thode ToString\n03:32 : mÃ©thode CompareTo\n06:19 : mÃ©thode Sort qui utilise CompareTo\n07:45 : tests', 'LwkGsXCUdeg', 2),
(18, '2020-07-29 16:00:07', 'C# : SÃ©rialisation d\'objets', 'Enregistrement de la liste d\'objets dans un fichier binaire, pour pouvoir rÃ©cupÃ©rer les informations aprÃ¨s avoir fermÃ© et rÃ©ouvert l\'application. C\'est une mÃ©thode simple et lÃ©gÃ¨re pour sauvegarder des donnÃ©es provenant d\'objets mÃ©tiers. Cette mÃ©thode de sauvegarde, intÃ©ressante dans certains cas, reste limitÃ©e.\nNotions abordÃ©es : sÃ©rialisation, classe sÃ©rialisable.\n\nClasse Serialise Ã  rÃ©cupÃ©rer :\nhttps://bit.ly/EmdsClasseSerialise\n(j\'ai mis comme namespace TestHeritage, comme celui de l\'application)\n\n00:00 : prÃ©sentation de la classe Serialise\n02:25 : besoin d\'un nom de fichier\n02:59 : sauvegarde de l\'objet\n03:43 : rÃ©cupÃ©ration de l\'objet\n05:27 : classes sÃ©rialisables\n06:00 : test (les informations sont rÃ©cupÃ©rÃ©es aprÃ¨s fermeture)\n07:00 : intÃ©rÃªt et limite de la sÃ©rialisation \n\nErreur : 1min36 je dis que \"les mÃ©thodes sont accessibles directement par le nom de la classe car la classe est abstraite\". J\'ai oubliÃ© de complÃ©ter par le fait que ses mÃ©thodes sont statiques car le but de cette classe n\'est pas d\'Ãªtre mÃ¨re d\'autres classes mais juste de proposer des mÃ©thodes. Du coup, sachant qu\'elle est abstraite, donc qu\'il ne sera pas possible de crÃ©er des objets du type de cette classe et que ses mÃ©thodes ne seront pas accessibles Ã  partir de classes filles, alors ses mÃ©thodes doivent Ãªtre statiques. Et c\'est justement parce qu\'elles sont statiques qu\'elles sont accessibles directement par le nom de la classe, et pas par un objet.\n\nRemarque : Vous remarquerez que j\'insiste dans mon erreur scandaleuse de date pour la sortie de Star Wars 4...', 'OL_qY2ennMo', 2),
(19, '2020-07-27 16:00:01', 'C# : Classes et hÃ©ritage', 'Utilisation de classes mÃ©tiers pour mÃ©moriser des informations et les utiliser pour remplir une ListBox.\nNotions abordÃ©es : classe, constructeur, getter, hÃ©ritage, this, classes abstraite, mÃ©thode abstraite redÃ©finie dans les classes filles (override), polymorphisme, transtypage.\n\n00:00 : prÃ©sentation de l\'interface\n01:34 : notion de classe au niveau des objets graphiques\n02:20 : crÃ©ation d\'une classe mÃ©tier\n03:35 : constructeur\n05:25 : getters\n07:17 : hÃ©ritage\n11:32 : notion de this\n13:10 : rendre un objet graphique visible ou non\n18:02 : utilisation de la classe List\n20:19 : dÃ©claration d\'un objet mÃ©tier\n21:20 : classe abstraite\n22:08 : crÃ©ation d\'objets de classes hÃ©ritÃ©es\n25:58 : remplir la listBox Ã  partir de l\'objet List\n33:00 : test du type de l\'objet \n33:50 : remplir la ListBox Ã  partir d\'une seule mÃ©thode override\n39:44 : test\n\nRemarque nÂ°1 : dÃ©solÃ©e pour l\'Ã©norme erreur sur la date de sortie de Star Wars 4. Ce n\'est bien sÃ»r pas en 87 mais en 78. Honte Ã  moi qui en plus ai eu la chance de le voir au cinÃ©ma Ã  sa sortie.\n\nRemarque nÂ°2 : DÃ©solÃ©e de l\'absence de commentaires. J\'ai dit que c\'Ã©tait pour rÃ©duire la durÃ©e de la vidÃ©o, dÃ©jÃ  bien longue. Mais j\'aurais pu le faire en off (en faisant une pause sur la vidÃ©o).', '0VDbDYREVcU', 2),
(20, '2020-07-25 16:00:17', 'C# : lier Github Ã  Visual Studio', 'Pour un travail professionnel sur des projets en commun, il est possible de configurer Visual Studio pour qu\'il communique avec GitHub. \nCette vidÃ©o montre comment rÃ©aliser cette configuration mais aussi comment publier un projet, rÃ©cupÃ©rer le clone pour travailler sur une branche indÃ©pendante puis envoyer des propositions de modifications de code au dÃ©veloppeur principal qui peut valider ou refuser les modifications.\nNotions abordÃ©es : commit, push, pull request, merge.\n\n00:00 : tÃ©lÃ©chargement et installation Github\n01:32 : configuration de Github dans Visual Studio\n02:47 : publication sur GitHub\n03:30 : crÃ©ation compte sous Github\n04:51 : connexion au compte Github Ã  partir de Visual Studio\n05:11 : publication du projet sur Github\n07:02 : crÃ©ation d\'un nouveau projet Ã  partir du clÃ´ne\n09:12 : crÃ©ation d\'une branche\n10:18 : modifications sur le code\n11:25 : enregistrement des modifications sur Github (commit and push)\n12:53 : envoi d\'une requÃªte de tirage (pull request)\n14:30 : possibilitÃ©s du dÃ©veloppeur sous GitHub\n15:00 : gestion des messages entre Github et Visual Studio\n16:20 : affichage des modifications proposÃ©es\n17:12 : validation des modifications (merge pull request)\n18:29 : autre modification sur le code avec toute la dÃ©marche\n20:06 : refus de la demande (close pull request)\n\n\nIMPORTANT :\nA 02:47 \"publication sur GitHub, si le bouton \"prise en main\" n\'a aucune action, voici le mode opÃ©ratoire Ã  suivre :\n1. Allez vous mÃªme dans la fenÃªtre \"Team Explorer\" et sÃ©lectionnez \"Synchroniser\" : vous pourrez alors continuer le guide.\n2. Si Ã  5:45, au niveau de GitHub, vous n\'avez qu\'un commit au lieu de 2 et, dans la liste des fichiers, vous ne voyez pas le fichier \"Calculs.sln\", alors vous devez gÃ©rer vous-mÃªme le commit. Pour cela, allez dans \"Team Explorer\" puis \"Accueil\" (la maison) et sÃ©lectionnez \"Modifications\". Mettez un commentaire puis sÃ©lectionnez \"Valider tout et pousser\" (surtout, prenez bien \"et pousser\" et non pas juste \"valider tout\"). VÃ©rifiez sur GitHub que le commit a bien Ã©tÃ© enregistrÃ©.\n\n\n\nERREUR : \nA 08:00, je dis qu\'il faut donner un nom de dossier qui correspond au nom du projet, ce qui est faux car le dossier va se crÃ©er automatiquement.', 'p4Y0WvpEGgU', 2),
(21, '2020-07-23 16:00:01', 'C# : crÃ©ation d\'objets graphiques dans le code', 'Allons plus loin dans le code des applications de bureau en C# (sous Visual Studio 2019) :\nApprendre Ã  crÃ©er des objets graphiques directement dans le code (objets simples et aussi groupes d\'objets).\n00:00 : intÃ©rÃªt\n00:46 : prÃ©sentation de l\'interface\n01:06 : crÃ©ation d\'un objet simple dans le code (bouton)\n02:59 : affectation de l\'objet Ã  un conteneur d\'affichage\n06:15 : taille et position\n08:37 : TabIndex\n09:10 : Text\n09:43 : crÃ©ation de la capture de l\'Ã©vÃ©nement liÃ©e Ã  l\'objet\n11:08 : crÃ©ation de la procÃ©dure Ã©vÃ©nementielle correspondante\n13:07 : crÃ©ation d\'un conteneur pour insÃ©rer plusieurs objets graphiques\n15:04 : crÃ©ation d\'une boucle pour gÃ©nÃ©rer plusieurs objets\n15:30 : dÃ©claration et crÃ©ation de l\'objet\n16:34 : ajout dans le groupe \n17:06 : calcul de la position\n18:26 : construction du texte par calcul (lettre de l\'alphabet)\n21:14 : crÃ©ation de la capture de l\'Ã©vÃ©nement liÃ©e Ã  tous les objets\n22:20 : crÃ©ation de la procÃ©dure Ã©vÃ©nementielle unique pour tous les objets\n23:01 : utilisation du paramÃ¨tre sender\n25:29 : exÃ©cution pour tester', '3RayCDFo_pI', 2),
(22, '2020-07-21 16:00:25', 'C# : utilisation des objets graphiques', 'Pour les dÃ©butants en application de bureau sous C# (sous Visual Studio 2019) :\nComprendre les Ã©vÃ©nements, gÃ©rer les objets graphiques dans le code, sÃ©curiser l\'interface.\n00:00 : crÃ©ation de l\'application de bureau\n00:34 : crÃ©ation de l\'interface\n05:25 : 1e mÃ©thode de crÃ©ation d\'une procÃ©dure Ã©vÃ©nementielle\n05:43 : 2e mÃ©thode de crÃ©ation d\'une procÃ©dure Ã©vÃ©nementielle\n06:46 : 3e mÃ©thode de crÃ©ation d\'une procÃ©dure Ã©vÃ©nementielle\n08:01 : prÃ©sentation du code gÃ©nÃ©rÃ© automatiquement dans Designer\n12:05 : lien entre capture d\'Ã©vÃ©nement et procÃ©dure Ã©vÃ©nementielle\n13:26 : supprimer proprement une procÃ©dure Ã©vÃ©nementielle\n17:22 : erreur lors d\'une mauvaise suppression d\'une procÃ©dure Ã©vÃ©nementielle\n19:14 : gestion du focus\n20:58 : ajout dans une liste, passage en majuscule, utilisation de variables locales\n24:14 : Ã©vÃ©nement KeyPress et utilisation du paramÃ¨tre de type KeyPressEventArgs\n27:08 : appel volontaire d\'une procÃ©dure Ã©vÃ©nementielle\n27:40 : suppression d\'une ligne d\'une liste si une ligne est sÃ©lectionnÃ©e\n29:57 : MessageBox (boite de dialogue) simple\n31:16 : MessageBox pour une demande de confirmation\n33:57 : Ã©vÃ©nement SelectedIndexChanged sur une liste\n35:52 : exÃ©cution pour tester\n38:29 : crÃ©ation d\'un module non Ã©vÃ©nementiel avec la refactorisation\n41:42 : optimisation d\'un module non Ã©vÃ©nementiel\n42:24 : exÃ©cution pour tester\n43:18 : propriÃ©tÃ© Enabled\n45:27 : exÃ©cution pour tester\n\nAutres remarques :\nVous avez dÃ» remarquer un flottement Ã  40mn25s : Visual Studio avait plantÃ©...\nJ\'ai aussi fait une bÃªtise Ã  42mn13s en supprimant une ligne oÃ¹ le label Ã©tait remis Ã  vide alors que je devais supprimÃ© le texte remis Ã  vide.', 'wkzXQGQiZHA', 2),
(23, '2020-07-19 16:04:14', 'C# : Ã©vÃ©nementiel contre sÃ©quentiel', 'Pour les dÃ©butants en application de bureau sous C# (sous Visual Studio 2019) :\nDiffÃ©rence d\'approche entre une application sÃ©quentielle en mode console et une application Ã©vÃ©nementielle en mode graphique.\nUne mÃªme application est prÃ©sentÃ©e sous les deux modes de programmation.\n00:00 : prÃ©sentation de la version sÃ©quentielle en mode console\n01:56 : prÃ©sentation de la version Ã©vÃ©nementielle en mode graphique\n03:55 : crÃ©ation d\'une procÃ©dure Ã©vÃ©nementielle sur le clic\n11:00 : appel volontaire d\'une procÃ©dure Ã©vÃ©nementielle\n12:07 : crÃ©ation d\'une procÃ©dure Ã©vÃ©nementielle sur le changement d\'un texte\n13:24 : crÃ©ation d\'un module non Ã©vÃ©nementiel', 'euZqLEU2F_E', 2),
(24, '2020-07-13 17:48:29', 'C# : prÃ©sentation des objets graphiques', 'Pour les dÃ©butants en application de bureau sous C# (sous Visual Studio 2019) :\nPrÃ©sentation des objets graphiques les plus courants.\n00:00 CrÃ©ation d\'un projet de type \"application de bureau\"\n00:40 PrÃ©sentation de l\'interface graphique\n01:29 CatÃ©gories d\'objets graphiques\n03:01 Placer un objet, gÃ©rer les alignements et modifier ses propriÃ©tÃ©s (exemple avec un bouton)\n05:51 Nommer un objet\n07:02 Sauvegarder\n07:13 Supprimer des objets\n07:25 ChexBox (case Ã  cocher)\n08:38 CheckedListBox (liste de cases Ã  cocher)\n10:10 ComboBox (liste dÃ©roulante)\n10:43 DateTimePicker (sÃ©lectionneur de date)\n11:17 Label (Ã©tiquette informative)\n12:27 LinkLabel (lien hyptertexte)\n12:39 ListBox (Liste d\'informations)\n13:23 NumericUpDown (sÃ©lectionneur numÃ©rique)\n14:00 PictureBox (image)\n15:50 RadioButton (bouton radio)\n17:19 TextBox (zone de saisie de texte)\n18:12 ExÃ©cution\n19:38 ListBox sÃ©lection multiple\n20:00 GroupBox (Boite de regroupement) par exemple pour regrouper les boutons radios\n21:22 ExÃ©cution\n21:48 MenuTrip (menu)', 'xBmwCrtqazU', 2),
(25, '2019-12-10 17:00:04', 'Python nÂ°18 : DÃ©corateur singleton', 'Nouvel exemple de dÃ©corateur qui cette fois, dÃ©core une classe et non une fonction. Ce dÃ©corateur permet de faire en sorte qu\'une classe soit un singleton.\nUne classe singleton est une classe qui ne peut Ãªtre instanciÃ©e qu\'une seule fois.', 'BLPIdhAHQmQ', 3),
(26, '2019-12-02 10:46:38', 'Python nÂ°17 : DÃ©corateur exemple simple', 'DÃ©corateur pour calculer le temps d\'exÃ©cution de fonctions. Exemple montrant la diffÃ©rence de performance entre 2 types de boucles.', '24_M88Ebyp0', 3),
(27, '2019-11-22 11:03:07', 'Python nÂ°16 : DÃ©corateurs', 'PrÃ©sentation thÃ©orique de la notion de dÃ©corateurs.', '0bMI9Z1XgIE', 3),
(28, '2019-11-20 15:18:21', 'Python nÂ°15 : ParamÃ¨tres des fonctions', 'PrÃ©sentation des diffÃ©rentes possibilitÃ©s de paramÃ¨tres d\'une fonction : \n- paramÃ¨tres simples\n- paramÃ¨tres initialisÃ©s\n- paramÃ¨tres non nommÃ©s de nombre variable (liste)\n- paramÃ¨tres nommÃ©s de nombre variable (dictionnaire)', 'EsXg1o3u-g4', 3),
(29, '2019-10-28 13:21:15', 'Python nÂ°14 : HÃ©ritage', 'Notion d\'hÃ©ritage, appel du constructeur de la classe mÃ¨re pour valoriser les propriÃ©tÃ©s de la classe mÃ¨re, test du type d\'un objet.\nPour voir ces notions, reprise de l\'exercice de la vidÃ©o 12 sur la crÃ©ation de la classe Personnage :\nhttps://youtu.be/KHsEAuZdS5w\navec ajout des classes filles Mortel et Immortel.', 'hWtHkP9uwR8', 3),
(30, '2019-10-25 13:56:29', 'Python nÂ°13 : Encapsulation', 'Technique pour gÃ©rer les getter et setter sous Python pour Ã©viter l\'accÃ¨s direct aux propriÃ©tÃ©s.\nLa vidÃ©o repart de l\'exercice prÃ©cÃ©dent (12) :\nhttps://youtu.be/KHsEAuZdS5w', 'pLnMkC79i4U', 3),
(31, '2019-10-24 10:13:43', 'Python nÂ°12 : Classe et liste d\'objets', 'Initiation Ã  la programmation objet sous Python.\nDÃ©couverte de la crÃ©ation d\'une classe et de la gestion d\'une liste d\'objets de cette classe. Le programme permet de saisir des noms de personnages puis de gÃ©rer des attaques entre les personnages, avec la gestion de la vie de chaque personnage.', 'KHsEAuZdS5w', 3),
(32, '2019-10-22 11:10:36', 'Python nÂ°11 : dictionnaire et IDE PyCharm', 'DÃ©couverte du dictionnaire avec un exercice qui mÃ©morise des villes et la population pour chaque ville.\nUtilisation d\'un nouvel Ã©diteur, un IDE professionnel adaptÃ© Ã  Python, PyCharm, rÃ©cupÃ©rable ici :\nhttps://www.jetbrains.com/pycharm/', 'P1iFvYY82i0', 3),
(33, '2019-10-18 09:38:34', 'Python nÂ°10 : gestion des exceptions et utilisation de l\'aide', 'Le programme permet de calculer l\'annÃ©e de naissance par rapport Ã  un Ã¢ge en Ã©vitant les erreurs de saisie. \nC\'est l\'occasion de voir comment accÃ©der Ã  l\'aide des imports et aussi Ã  gÃ©rer les exceptions (avec try).', 'hYyFDoFHRWY', 3),
(34, '2019-10-16 09:47:45', 'Python nÂ°9 : Listes', 'Recherche des 50 premiers nombres premiers avec optimisation de la recherche en mÃ©morisant les nombres premiers dans une liste afin de n\'utiliser que les nombres premiers comme diviseurs.', '1WtVyo6av7s', 3),
(35, '2019-10-15 12:14:22', 'Python nÂ°8 : Fonctions et bibliothÃ¨ques', 'A travers un exercice d\'opÃ©ration binaire, dÃ©couverte de la crÃ©ation des fonctions et des bibliothÃ¨ques.\n\nERRATUM : 7:57 de dit qu\'on doit convertir le rÃ©sultat en base 10, alors qu\'en rÃ©alitÃ©, on doit convertir en binaire (ce que je fais juste aprÃ¨s).', 'Hnz3d313f7M', 3),
(36, '2019-10-14 10:09:06', 'Python nÂ°7 : Conversion binaire et menu', 'Le programme permet de convertir un nombre binaire en entier et vice versa. Affichage d\'un menu pour permettre plusieurs conversions.\nCet exemple est aussi l\'occasion de dÃ©couvrir rapidement un nouvel Ã©diteur plus adaptÃ© pour Python et installÃ© par dÃ©faut : IDLE.', '_OdRF06GuwU', 3),
(37, '2019-10-08 10:09:41', 'Python nÂ°6 : Nombre premier, test et boolÃ©en', 'Ecrire un programme qui permet de vÃ©rifier si un nombre est premier ou non. RÃ©utilisation des notions dÃ©jÃ  abordÃ©es (choix des boucles, math), et de nouvelles notions (test, boolÃ©en).', 'NiFBLZqy8PU', 3),
(38, '2019-10-07 08:42:19', 'Python nÂ°5 : Produit de valeurs', 'Reprise de l\'exercice prÃ©cÃ©dent (somme des puissances de 2) mais cette fois, en le transformant en produit. Le but est juste de montrer l\'erreur classique d\'initialisation d\'une variable pour rÃ©aliser un produit.', 'qytbwk4zAtk', 3),
(39, '2019-10-06 10:01:30', 'Python nÂ°4 : bibliothÃ¨que math', 'Calcul de la somme des n premiÃ¨res puissances de 2. Utilisation de la bibliothÃ¨que math pour obtenir la puissance d\'une valeur.', '2U63_NtOP-M', 3),
(40, '2019-10-04 08:47:29', 'Python nÂ°3 : Somme entre 2 bornes', 'Calculer la somme entre 2 bornes. L\'exercice permet de reprendre les notions prÃ©cÃ©dentes en rÃ©flÃ©chissant sur la boucle la plus adaptÃ©e.', 'GsCWIUFE8CE', 3),
(41, '2019-10-03 08:35:56', 'Python nÂ°2 : boucle for', 'Reprise de l\'exercice 1 en ajoutant le test de saisie et en utilisant la boucle \"for\" pour l\'affichage. Cela permet de voir la diffÃ©rence entre la boucle dÃ©terministe (for) et la boucle indÃ©terministe (while).', 'elrR4GUpKEo', 3),
(42, '2019-10-02 09:19:32', 'Python nÂ°1 : boucle simple, saisie, affichage', 'DÃ©couverte des commentaires, de la saisie, de l\'affichage et de la boucle universelle (while) Ã  travers un exemple qui permet d\'afficher une table de multiplication.', '4BFWagDB5aE', 3),
(43, '2019-09-30 14:55:31', 'Python nÂ°0 : installation de Python', 'Cette vidÃ©o permet juste de montrer comment installer Python et faire un premier test de programme.\nLes vidÃ©os qui vont suivre porteront sur la dÃ©couverte de Python Ã  travers des exercices progressifs.', 'ilx0fJ72Re4', 3),
(44, '2019-09-29 13:06:14', 'Android Studio (complÃ©ment nÂ°13) : Permissions', 'Permettre de gÃ©rer les permissions directement dans l\'application. \nOn repart ici de l\'application de l\'envoi de sms (complÃ©ment 4) pour ajouter la permission.\n\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (https://youtu.be/M6pi6jXpRrs).\n\nLien vers la vidÃ©o \"Android complÃ©ment 4 : envoi sms\" :\nhttps://youtu.be/UNBTFdbKymU\n\nRemarque :\n11:22 mon explication n\'est pas du tout claire. Ce numÃ©ro peut ensuite Ãªtre utilisÃ© pour distinguer les diffÃ©rentes permissions dans le cas oÃ¹ il y en a plusieurs. Ici ce n\'est pas utile, mais Ã§a peut l\'Ãªtre si on voulait gÃ©rer les informations retournÃ©es par la gestion de la permission (pour savoir quelle permission retourne une information).', 'mkI2yKiTS-4', 8),
(45, '2019-09-17 13:49:02', 'Android Studio (complÃ©ment nÂ°12) : Positionner texte sur photo', 'A partir d\'une application Android, positionner un texte sur une image et l\'enregistrer dans l\'image.\nMÃªme si cette vidÃ©o est indÃ©pendante, elle suit la logique de la vidÃ©o \"Android Studio (complÃ©ment nÂ°9) : Ajout texte sur photo\". Dans cette vidÃ©o prÃ©cÃ©dente, l\'ajout se faisait avec une position fixe : https://youtu.be/kanbIK-Jf3A\n\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (https://youtu.be/M6pi6jXpRrs).\n\nLien vers les vidÃ©os qui permettent de gÃ©rer les photos :\n\"Android Studio (complÃ©ment nÂ°5) : RÃ©cupÃ©rer les photos du mobile\" : https://youtu.be/M9JUdmx5OW4\n\"Android Studio (complÃ©ment nÂ°6) : Redimensionner des photos\" : https://youtu.be/ChqpJJKcaZU\n\"Android Studio (complÃ©ment nÂ°7) : Prendre une photo\" : https://youtu.be/8890GpBwn9w\n\"Android Studio (complÃ©ment nÂ°8) : Enregistrer une photo\" : https://youtu.be/YCnHHrR1luA\n\"Android Studio (complÃ©ment nÂ°9) : Ajout texte sur photo\" : https://youtu.be/kanbIK-Jf3A\n\"Android Studio (complÃ©ment nÂ°11) : Transformer une image en texte\" : https://youtu.be/7Xm8GROWpX0', '3IyrvQJCxVo', 8),
(46, '2019-05-22 15:41:47', 'Sujet E5 SLAM 2019 : cas RESTILOC mission4 (calcul et comparatif)', 'Correction commentÃ©e de la mission 4 du sujet SLAM RESTILOC tombÃ© en mÃ©tropole en mai 2019 (partie SI7 : calcul et comparatif).\r\nERRATUM :\r\nAu temps 19:22, j\'ai Ã©crit un trÃ¨s moche \"majorativement \" ua lieu de \"majoritairement\". DÃ©solÃ©e !', 'mBeZLsIwzkQ', 4),
(47, '2019-05-22 11:00:36', 'Sujet E5 SLAM 2019 : cas RESTILOC mission3 (SQL et Android)', 'Correction commentÃ©e de la mission 3 du sujet SLAM RESTILOC tombÃ© en mÃ©tropole en mai 2019 (partie SQL et programmation mobile).', 'VCFkJRfVyYo', 4),
(48, '2019-05-21 10:31:56', 'Sujet E5 SLAM 2019 : cas RESTILOC mission2 (programmation objet)', 'Correction commentÃ©e de la mission 2 du sujet SLAM RESTILOC tombÃ© en mÃ©tropole en mai 2019 (partie SLAM2 : programmation objet).', 'pc6A6E7Lm0I', 4),
(49, '2019-05-21 08:57:28', 'Sujet E5 SLAM 2019 : cas RESTILOC mission1 (conception de donnÃ©es)', 'Correction commentÃ©e de la mission 1 du sujet SLAM RESTILOC tombÃ© en mÃ©tropole en mai 2019 (partie SLAM3 : conception de donnÃ©es).', 'sDXBL5Ohdok', 4),
(50, '2019-05-07 11:18:22', 'Sujet E5 SLAM 2018 : cas LOCALUX mission3 (SI7)', 'Correction commentÃ©e de la mission 3 du sujet SLAM LOCALUX tombÃ© Ã  Noumea en novembre 2018 (partie SI7 : comparatifs et calculs).', 'X9_fMYdzDog', 5),
(51, '2019-05-06 11:56:38', 'Sujet E5 SLAM 2018 : cas LOCALUX mission2 (objet)', 'Correction commentÃ©e de la mission 2 du sujet SLAM LOCALUX tombÃ© Ã  Noumea en novembre 2018 (partie SLAM2 : objet et diagramme de classes).\r\nERRATUM : Ã  13:03 et 15:40, je parle de soustraction et j\'ai par erreur Ã©crit le signe \"=\" au lieu du signe \"-\".', 'ihegtV45yTg', 5),
(52, '2019-05-05 15:40:23', 'Sujet E5 SLAM 2018 : cas LOCALUX mission1 (SQL et conception)', 'Correction commentÃ©e de la mission 1 du sujet SLAM LOCALUX tombÃ© Ã  Noumea en novembre 2018 (partie SLAM3 : SQL et conception).', 'gRxIv2O3xVQ', 5),
(53, '2019-05-03 11:00:53', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission4 (SI7)', 'Correction commentÃ©e de la mission 4 du sujet SLAM 2018 WEBCAISSE tombÃ© en mÃ©tropole en juin 2018 (partie SI7 : seuil de rentabilitÃ©, point mort, comparatif).\r\nOUBLI: \r\nÃ  11:40, j\'ai oubliÃ© de rÃ©pondre Ã  la 2e partie de la question 4.2 qui demande de commenter le rÃ©sultat obtenu. Je l\'ai rapidement fait Ã  l\'oral quelques instants plus tÃ´t, mais il fallait rÃ©pondre :\r\n\"Le seuil de rentabilitÃ© est atteint le 336e jour de l\'annÃ©e sur 360 ce qui est tard, le projet est donc peu rentable\".', 'UdW4xP0aHsI', 6),
(54, '2019-05-02 10:54:44', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission3 (objet)', 'Correction commentÃ©e de la mission 3 du sujet SLAM 2018 WEBCAISSE tombÃ© en mÃ©tropole en juin 2018 (partie objet)', 'NtkfDd8OdZs', 6),
(55, '2019-05-01 14:35:40', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission2 (sql et tests unitaires)', 'Correction commentÃ©e de la mission 2 du sujet SLAM 2018 WEBCAISSE tombÃ© en mÃ©tropole en juin 2018 (partie SQL et tests unitaires)', 'Mgmim27uOHA', 6),
(56, '2019-04-30 15:32:23', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission1 (conception)', 'Correction commentÃ©e de la mission 1 du sujet SLAM 2018 WEBCAISSE tombÃ© en mÃ©tropole en juin 2018 (partie conception)', '4WnrIKhVYig', 6),
(57, '2019-03-14 11:56:43', 'MCD exercice 18 : sujet 2006 (cas Credauto)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'EH2vqOPQTkI', 7),
(58, '2019-03-08 12:33:37', 'MCD exercice 17 : sujet 2007 (cas Synapsinfo)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'TWryppItdCo', 7),
(59, '2019-02-28 11:02:21', 'MCD exercice 16 : sujet 2008 (cas CAPDC)', 'Remarque : j\'ai oubliÃ© d\'enlever la contrainte XT sur l\'un des hÃ©ritages. Il n\'y a pas de contrainte Ã  mettre puisqu\'il n\'y a qu\'une entitÃ© fille.\r\n\r\nSujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '9wws2L6bx4E', 7),
(60, '2019-02-24 18:02:05', 'MCD exercice 15 : sujet 2009 (cas Ergosum)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'a8s6Mrm6qls', 7),
(61, '2019-02-21 10:10:35', 'MCD exercice 14 : sujet 2009 (cas SEG)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'ZDCDeLRh6N8', 7),
(62, '2019-02-17 13:49:32', 'MCD exercice 13 : sujet 2010 (cas Noixcoop)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'IFo3phNo9ak', 7),
(63, '2019-02-14 10:14:59', 'MCD exercice 12 : sujet 2008 (cas Thali)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'nLEJY37gAw0', 7),
(64, '2019-02-07 10:44:44', 'MCD exercice 11 : sujet 2000 (cas TriathlÃ¨te)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '62UfQRSUMpk', 7),
(65, '2019-01-31 11:26:40', 'MCD exercice 10 : sujet 2005 (cas Ment)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la mÃªme et reprÃ©sente un bon entrainement pour l\'examen).\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'Bzml58Oe8PQ', 7),
(66, '2019-01-25 15:45:21', 'MCD exercice 9 : Double DF, lien relatif, association porteuse', 'Exercice plus long, avec annexes et prÃ©sentant plusieurs difficultÃ©s : savoir repÃ©rer ce qu\'il faut modÃ©liser (beaucoup d\'informations inutiles) et savoir traiter les informations dans le bon ordre.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '7iw08ykcOzw', 7),
(67, '2019-01-23 15:22:40', 'MCD exercice 8 : association ternaire', 'Exercice prÃ©sentant 2 difficultÃ©s : repÃ©rage des informations Ã  modÃ©liser et association ternaire.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'Y0Sp50n9OIg', 7),
(68, '2019-01-21 09:06:41', 'MCD exercice 7 : associations porteuses', 'Exercice un peu plus long, reprenant la notion de lien relatif, et prÃ©sentant des associations porteuses.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '-vjZQpG16EY', 7),
(69, '2019-01-17 09:37:33', 'MCD exercice 6 : hÃ©ritage', 'Comprendre l\'hÃ©ritage.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'dnZGdW4SBxw', 7),
(70, '2019-01-15 10:02:13', 'MCD exercice 5 : double DF entre entitÃ©s et association rÃ©flexive', 'Comprendre la double DF entre entitÃ©s et l\'association rÃ©flexive.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '_Bs93E0hhJc', 7),
(71, '2019-01-13 14:11:31', 'MCD exercice 4 : lien relatif', 'Comprendre la notion de lien relatif.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'a0ReDXuQNLs', 7),
(72, '2019-01-11 16:02:32', 'MCD exercice 3 : MCD simple entitÃ©s/DF/Association', 'Construire un MCD simple Ã  partir d\'un sujet. Le MCD ne contient que des entitÃ©s, DF entre entitÃ©s et association binaire simple.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'QjUI5bc_DgI', 7),
(73, '2019-01-09 10:19:07', 'MCD exercice 2 : MCD Ã  partir de relations avec hÃ©ritage', 'Construire un MCD Ã  partir de relations avec hÃ©ritage.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'P5c3GOiFsr8', 7),
(74, '2019-01-07 15:48:07', 'MCD exercice 1 : MCD Ã  partir de relations', 'Construire un MCD Ã  partir de relations.\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'zhNNkDf9SrE', 7),
(75, '2018-12-18 15:47:11', 'Android Studio (complÃ©ment nÂ°11) : Transformer une image en texte', 'Cette vidÃ©o montre comment transformer une image en texte et vice-versa. Ceci est utile si vous voulez envoyer une image, via le rÃ©seau, sur un serveur distant (par exemple pour l\'enregistrer sur un serveur et l\'indicer dans une BDD). De mÃªme, vous pouvez rÃ©cupÃ©rer une image du serveur (aprÃ¨s transformation sous forme de texte) et la retransformer en image pour l\'afficher sur le mobile.\r\n\r\nCode de l\'application :\r\nhttp://bit.ly/EmdsAndroidComplement11', '7Xm8GROWpX0', 8),
(76, '2018-11-18 18:29:53', 'Cours Merise/2 extensions', 'Liens rapides plus bas, pour accÃ©der aux diffÃ©rentes parties du cours.\r\n\r\n(Cette vidÃ©o vient en remplacement des anciennes vidÃ©os crÃ©Ã©es au dÃ©but de la vie de la chaÃ®ne et dont le son Ã©tait de trÃ¨s mauvaise qualitÃ©)\r\n\r\nPrÃ©sentation des extensions de Merise au niveau du MCD.\r\n\r\nPrÃ©requis : avoir suivi le cours \"ModÃ¨le relationnel et MCD\" :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nDÃ©tail du cours et liens : \r\nExtensions : 0:39\r\nSous-type : 3:00\r\nLien relatif : 5:02\r\nAgrÃ©gation : 7:25\r\nContraintes : 10:42\r\nContrainte d\'exclusion : 18:21\r\nContrainte sur association et pivot : 20:23\r\nContrainte de partition : 26:55\r\nContrainte de totalitÃ© : 30:53\r\nContrainte de simultanÃ©itÃ© : 33:27\r\nContrainte d\'inclusion : 34:46\r\nInclusion Ã  portÃ©e multiples : 36:30\r\nContrainte d\'unicitÃ© : 39:49\r\nExercices : 42:03\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMerise2\r\n\r\nExercices de mise en pratique (modÃ©lisations dans les sujets d\'EDC) :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAivDuEUEw24iuwTTVXfN7j\r\n\r\nCours triggers (pour programmer les contraintes dans la base de donnÃ©es) :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAwWrZwg04QsTVY_PRERfgu', 'smTFM4GCEgc', 25),
(77, '2018-11-13 16:36:52', 'Cours Programmation Objet', 'Liens rapides plus bas, pour accÃ©der aux diffÃ©rentes parties du cours.\r\n\r\n(Cette vidÃ©o vient en remplacement des anciennes vidÃ©os crÃ©Ã©es au dÃ©but de la vie de la chaÃ®ne et dont le son Ã©tait de mauvaise qualitÃ©)\r\n\r\nPrÃ©sentation des notions fondamentales de la programmation objet (correspond au cours SLAM2 du BTS SIO).\r\n\r\nDÃ©tail du cours et liens :\r\nintroduction, classe / objet : 0:42 \r\nencapsulation : 17:23\r\nsetter / getter : 23:09\r\nconstructeur / destructeur : 31:35\r\nstatique : 43:31\r\npropriÃ©tÃ© objet : 46:00\r\nrÃ©fÃ©rence d\'un objet: 50:18\r\nhÃ©ritage : 54:37\r\nsurcharge : 1:09:46\r\npolymorphisme : 1:11:28\r\nthis / super : 1:17:25\r\ncatÃ©gories de classes et classes particuliÃ¨res (mÃ©tiers, techniques, gÃ©nÃ©riques, collections)  : 1:21:08\r\nabstraite (classe, mÃ©thode) : 1:29:03\r\nfinale (classe, mÃ©thode, propriÃ©tÃ©) : 1:34:06\r\ninterface (classe) : 1:35:18\r\norigine d\'un objet : 1:43:05\r\ntranstypage / casting : 1:45:05\r\npackage / MVC : 1:48:34\r\npersistance : 1:52:44\r\nquoi d\'autre ? conclusion et liens vers les mises en pratique : 1:55:55\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsObjet\r\n\r\nERRATUM :\r\n39:04 mÃ©thode getPseudo, il y a marquÃ© 2 fois String au lieu de public String.\r\n\r\nPensez aussi Ã  mettre en pratique :\r\nPOO TP Java (tp d\'application directe du cours) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cC-4OLKMYJcnaRDhzM6GxcX\r\nExercices objet (issus des sujets EDC du BTS SIO) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cB3PAYJZqQKDJICsSRmSdr8\r\nTP Android (programmation mobile en java) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cB-jibndUw-qv79O2KQkG6U', 'fKPK2VhsA4o', 27),
(78, '2018-11-02 18:21:55', 'Cours ModÃ¨le Relationnel et MCD', 'Liens rapides plus bas, pour accÃ©der aux diffÃ©rentes parties du cours.\r\n\r\n(Cette vidÃ©o vient en remplacement des anciennes vidÃ©os crÃ©Ã©es au dÃ©but de la vie de la chaÃ®ne et dont le son Ã©tait de trÃ¨s mauvaise qualitÃ©)\r\n\r\nPrÃ©sentation des rÃ¨gles du ModÃ¨le Relationnel pour crÃ©er une base de donnÃ©es optimisÃ©e. PrÃ©sentation du MCD de la mÃ©thode Merise pour faciliter la crÃ©ation de la base de donnÃ©es en respectant les rÃ¨gles du ModÃ¨le Relationnel.\r\n\r\nDÃ©tail du cours et liens :\r\nintroduction : 0:38\r\nbase de donnÃ©es relationnelle : 2:13\r\nexemple de MCD : 4:47\r\nModÃ¨le Relationnel (MLD) : \r\n- dÃ©pendance fonctionnelle (DF) : 13:10\r\n- relation, clÃ©s et formes normales : 23:19\r\nModÃ¨le Conceptuel de DonnÃ©es (MCD) :\r\n- introduction, entitÃ©, association : 32:05\r\n- DF entre entitÃ©s (CIF) : 35:17\r\n- cardinalitÃ©s : 36:58\r\n- associations vides : 38:23\r\n- CIF sur association : 39:23\r\n- intÃ©gritÃ© fonctionnelle : 41:16\r\n- exercice : 42:49\r\n- historiques et numÃ©rotations ancienne version : 44:44\r\n- liens identifiants (liens relatifs) : 47:44\r\n- exercice : 51:39\r\n- double CIF : 55:17\r\n- CIF + association : 56:56\r\n- association rÃ©flexive : 58:25\r\n- exercice : 59:50\r\n- hÃ©ritage : 1:02:15\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD\r\n\r\n\r\nExercices de mise en pratique :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAivDuEUEw24iuwTTVXfN7j\r\n\r\nCours Merise/2 extensions :\r\nhttps://youtu.be/smTFM4GCEgc', 'VFHVNA8xgK0', 26),
(79, '2018-10-18 09:50:41', 'Android Studio (complÃ©ment nÂ°10) : Ajout icone dans menu', 'A partir d\'une application Android, ajouter des icÃ´nes utilisables par exemple dans les menus drawer.', 'VDGScSfKP_4', 8),
(80, '2018-10-10 19:33:05', 'Android Studio (complÃ©ment nÂ°9) : Ajout texte sur photo', 'A partir d\'une application Android, ajouter du texte sur une photo (en choisissant la taille, la couleur, la position). Une nouvelle image est crÃ©Ã©e.\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (https://youtu.be/M6pi6jXpRrs).', 'kanbIK-Jf3A', 8),
(81, '2018-10-04 10:35:09', 'Android Studio (complÃ©ment nÂ°8) : Enregistrer une photo', 'A partir d\'une application Android, enregistrer une photo dans la galerie..\r\nPrÃ©requis : avoir fait l\'application \"Android Studio (complÃ©ment nÂ°7) : Prendre une photo\" car l\'application actuelle part de cette application :\r\nhttps://youtu.be/8890GpBwn9w', 'YCnHHrR1luA', 8),
(82, '2018-09-16 09:48:25', 'Android Studio (complÃ©ment nÂ°7) : Prendre une photo', 'A partir d\'une application Android, accÃ©der Ã  l\'appareil photo pour prendre une photo, et l\'enregistrer dans un fichier temporaire pour l\'afficher dans l\'application.\r\nPrÃ©requis : avoir installÃ©  et configurÃ© Android Studio (https://youtu.be/M6pi6jXpRrs).', '8890GpBwn9w', 8),
(83, '2018-09-12 20:00:08', 'Android Studio (complÃ©ment nÂ°6) : Redimensionner des photos', 'A partir d\'une application Android, redimensionner une photo proportionnellement Ã  la taille de la zone d\'affichage, dÃ©couper une photo (par exemple pour qu\'elle soit carrÃ©e).\r\nPrÃ©requis : avoir une application qui manipule des photos ou avoir suivi la vidÃ©o \"Android Studio complÃ©ment nÂ°5\" : \r\nhttps://youtu.be/M9JUdmx5OW4', 'ChqpJJKcaZU', 8),
(84, '2018-09-10 19:48:15', 'Android Studio (complÃ©ment nÂ°5) : RÃ©cupÃ©rer les photos du mobile', 'A partir d\'une application Android, accÃ©der aux photos enregistrÃ©es dans le mobile et les afficher.\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (sinon, visionner la vidÃ©o du TP1 Android : https://youtu.be/M6pi6jXpRrs).', 'M9JUdmx5OW4', 8),
(85, '2018-08-17 07:19:08', 'Android Studio (complÃ©ment nÂ°4) : Envoyer un SMS', 'Coder l\'envoi d\'un SMS vers n\'importe quel smartphone, Ã  partir d\'une application Android.\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (sinon, visionner la vidÃ©o du TP1 Android : https://youtu.be/M6pi6jXpRrs).\r\n(petite erreur : le numÃ©ro de mobile fictif saisi Ã  la fin est un peu trop long... ceci dit, Ã§a ne change rien aux explications)', 'UNBTFdbKymU', 8),
(86, '2018-08-06 21:43:36', 'Android Studio (complÃ©ment nÂ°3) : Activity dÃ©pendante', 'Apprendre Ã  crÃ©er des activity dÃ©pendantes (revenir Ã  l\'activity parent par la flÃ¨che du haut).\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio.', '2n3bGqiaWMs', 8),
(88, '2018-07-26 19:10:11', 'Android Studio (complÃ©ment nÂ°2) : RÃ©cupÃ©rer les contacts du mobile', 'Apprendre Ã  rÃ©cupÃ©rer les contacts prÃ©sents dans le mobile.\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (voir 1e vidÃ©o du TP Android : https://youtu.be/M6pi6jXpRrs)', '4lT0pnyzkSA', 8),
(89, '2018-07-09 19:56:31', 'Android Studio (complÃ©ment nÂ°1) : Navigation Drawer et Fragment', 'Apprendre Ã  crÃ©er une navigation type drawer (menu qui apparaÃ®t Ã  gauche) et y intÃ©grer des fragments (pour l\'affichage des diffÃ©rentes pages). Apprendre Ã  insÃ©rer une Activity existante dans un fragment.\r\nPrÃ©requis : avoir installÃ© et configurÃ© Android Studio (voir 1e vidÃ©o du TP Android : https://youtu.be/M6pi6jXpRrs)', 'rUnuYTjaBoU', 8),
(90, '2018-05-13 20:52:36', 'Sujet E5 SLAM 2017 : cas DANE mission4 (et quelques annonces)', 'Correction commentÃ©e de la mission 4 du sujet SLAM 2017 DANE tombÃ© Ã  NoumÃ©a en novembre 2017 (partie analyse).\r\nPlusieurs questions de \"bon sens\" puis un schÃ©ma assez classique.', 'gmZYXP3hPts', 9),
(91, '2018-05-11 16:58:14', 'Sujet E5 SLAM 2017 : cas DANE mission3', 'Correction commentÃ©e de la mission 3 du sujet SLAM 2017 DANE tombÃ© Ã  NoumÃ©a en novembre 2017 (partie objet).\r\n1e question trÃ¨s simple.\r\n2e question nettement plus complexe car il fallait bien comprendre le fonctionnement des classes et l\'utilisation des dictionnaires.\r\n3e question (une erreur Ã  trouver), dont le rÃ©sultat est trÃ¨s simple mais pas forcÃ©ment Ã©vident Ã  trouver.', 'cZ1WR3f39xY', 9),
(92, '2018-05-11 09:20:20', 'Sujet E5 SLAM 2017 : cas DANE mission2', 'Correction commentÃ©e de la mission 2 du sujet SLAM 2017 DANE tombÃ© Ã  NoumÃ©a en novembre 2017 (partie web : PHP, Javascript, MySQL...).\r\nUn dossier dÃ©stabilisant car donnant l\'impression qu\'il faut certaines connaissances techniques (jquery, json...) alors que ce n\'est pas du tout le cas. Les rÃ©ponses au final sont trÃ¨s simples. Vous allez voir comment aborder ce genre de mission.', 'OOaMlhFca6o', 9),
(93, '2018-05-10 10:09:43', 'Sujet E5 SLAM 2017 : cas DANE mission1', 'Correction commentÃ©e de la mission 1 du sujet SLAM 2017 DANE tombÃ© Ã  NoumÃ©a en novembre 2017 (partie SQL)', '4mRyckm5kyI', 9),
(94, '2018-05-06 16:14:46', 'Sujet E5 SLAM 2017 : cas AHM-23 mission4', 'Correction commentÃ©e de la mission 4 du sujet SLAM 2017 AHM-23 tombÃ© en mÃ©tropole en juin 2017 (programmation objet)', 'GfmxfueZcAI', 10),
(95, '2018-05-04 10:21:43', 'Sujet E5 SLAM 2017 : cas AHM-23 mission3', 'Correction commentÃ©e de la mission 3 du sujet SLAM 2017 AHM-23 tombÃ© en mÃ©tropole en juin 2017 (programmation mobile)', 'mZ1lNDBCiWw', 10),
(96, '2018-05-03 09:27:14', 'Sujet E5 SLAM 2017 : cas AHM-23 mission2', 'Correction commentÃ©e de la mission 2 du sujet SLAM 2017 AHM-23 tombÃ© en mÃ©tropole en juin 2017 (partie SQL et conception de donnÃ©es)', 'vkRTECTijZo', 10),
(97, '2018-05-02 15:37:16', 'Sujet E5 SLAM 2017 : cas AHM-23 mission1', 'Correction commentÃ©e de la mission 1 du sujet SLAM 2017 AHM-23 tombÃ© en mÃ©tropole en juin 2017.', '5cGFejz7gYQ', 10),
(98, '2018-02-14 14:33:08', 'TP Android nÂ°18 : liste adapter interactive (4)', 'PrÃ©requis : avoir des connaissance en programmation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : QuatriÃ¨me Ã©tape : Ã©vÃ©nement sur le reste de la ligne dans la liste, pour ouvrir une autre Activity pour afficher le profil.', 'HWL3yy3ZtNE', 11),
(99, '2018-02-13 16:47:33', 'TP Android nÂ°17 : liste adapter interactive (3)', 'PrÃ©requis : avoir des connaissance en programmation objet, PHP et MySQL (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : TroisiÃ¨me Ã©tape : tri d\'une liste, chargement Ã  temps des profils du serveur et gestion de l\'Ã©vÃ©nement sur la croix de la liste (pour supprimer un profil en local et dans la base distante)\r\n\r\nERRATUM : pour une raison obscure, je dis \"parser\" au lieu de \"caster\" ou \"transtyper\"... (Ã©videmment, c\'est faux)', 'oojJR_x04vI', 11),
(100, '2018-02-12 16:57:08', 'TP Android nÂ°16 : liste adapter interactive (2)', 'PrÃ©requis : avoir des connaissance en programmation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : DeuxiÃ¨me Ã©tape, CrÃ©ation et affichage de la liste adapter.', 'rpaZQhxbbKE', 11),
(101, '2018-02-11 14:19:58', 'TP Android nÂ°15 : liste adapter interactive (1)', 'PrÃ©requis : avoir des connaissance en programmation objet, php et MySQL (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : PremiÃ¨re Ã©tape, rÃ©cupÃ©ration de tous les profils de la base MySQL dans l\'application Android.', 'QOmfFuAgnFY', 11),
(102, '2018-02-07 17:39:21', 'TP Android nÂ°14 : plusieurs interfaces', 'PrÃ©requis : avoir des connaissance en programmation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : montrer comment crÃ©er plusieurs interfaces et comment passer d\'une interface Ã  une autre.', '0LedL1ufiAs', 11),
(103, '2018-02-06 10:30:31', 'TP Android nÂ°13 : formatage de la date', 'PrÃ©requis : avoir des connaissance en programmation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : montrer comment transformer une chaÃ®ne en date et vice versa.', 'NwvHF4BcMck', 11),
(104, '2018-02-04 18:03:43', 'TP Android nÂ°12 : base de donnÃ©es distante MySQL (4)', 'PrÃ©requis : avoir des connaissance en programmation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : sous Android Studio, rÃ©cupÃ©ration du dernier profil distant dans le thread et affichage des informations dans l\'interface.', 'uNP706aKIRs', 11),
(105, '2018-02-02 13:30:29', 'TP Android nÂ°11 : base de donnÃ©es distante MySQL (3)', 'PrÃ©requis : avoir des connaissance en programmation objet, en PHP et MySQL (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : sous Android Studio, crÃ©ation la classe AccesDistant qui est en lien avec AccesHTTP pour communiquer avec le serveur distant. ContrÃ´le, dans la console, que la communication marche. ContrÃ´le, dans MySQL, que le profil s\'enregistre.\r\n\r\nERRATUM : 30:10 je dis qu\'il envoie vers le serveur la requÃªte. Ce n\'est pas la requÃªte qui est envoyÃ©e mais juste les valeurs du profil. La requÃªte est construite dans la page PHP.', '8Kyq69u9iqU', 11);
INSERT INTO `formation` (`id`, `published_at`, `title`, `description`, `video_id`, `playlist_id`) VALUES
(106, '2018-02-01 12:18:38', 'TP Android nÂ°10 : base de donnÃ©es distante MySQL (2)', 'IMPORTANT nÂ°1 : nouvelle classe AccesHTTP Ã  tÃ©lÃ©charger (voir plus bas) \r\n\r\nIMPORTANT nÂ°2 : si vous n\'arrivez pas Ã  accÃ©der Ã  la base de donnÃ©es :\r\nIl existe maintenant 2 formats de BDD : MySQL et MariaDB, tous les 2 accessibles au mÃªme endroit et fonctionnant de faÃ§on similaire, mais sur des ports diffÃ©rents.\r\nDans le fichier fonctions.php que vous avez crÃ©Ã©, je vous conseille de modifier la variable de connexion par :\r\n$conn = new PDO(\"mysql:host=$serveur;dbname=$bd;port=3308\", $login, $mdp);\r\nEn fait, si vous avez crÃ©er la base sous MariaDB (actuellement par dÃ©faut) le port est celui par dÃ©faut : 3306. Si vous avez sÃ©lectionnÃ© MySQL, normalement le nouveau port est 3308. Ca vaut d\'ailleurs le coup aussi de tester les 2...\r\n\r\n\r\n\r\nÂ PrÃ©requis : avoir des connaissance en programation objet (et avoir vu les vidÃ©os prÃ©cÃ©dentes de la construction de l\'application Android)\r\nBut : sous Android Studio, faire les bons paramÃ©trages et crÃ©er les classes outils nÃ©cessaires pour l\'accÃ¨s au serveur distant via Internet et le protocole HTTP.*\r\nERRATUM : Ã  22:09 je dis par erreur que onPostExecute est appelÃ© par le execute de la classe mÃ¨re. C\'est doInBackground qui est appelÃ© par execute de la classe mÃ¨re. onPostExecute est une mÃ©thode Ã©vÃ©nementielle appelÃ©e lorsque le serveur renvoie une rÃ©ponse.\r\n\r\nIMPORTANT :\r\nDans la classe AccesHTTP, j\'utilise des classes qui sont obsolÃ¨tes et qui peuvent maintenant poser problÃ¨me. Je ferai une vidÃ©o pour montrer le principe d\'une nouvelle classe AccesHTTP, mais en attendant, je vous donne son code que vous pouvez rÃ©cupÃ©rer ici : \r\nhttp://bit.ly/EmdsNewAccesHTTP\r\nPensez Ã  changer le nom du package (1e ligne).\r\nLa logique est proche de la classe montrÃ©e dans la vidÃ©o et normalement vous n\'avez rien Ã  changer dans le reste du programme exceptÃ© que vous n\'avez plus besoin de mettre la ligne \'useLibrary \"org.apache.http.legacy\" \' dans build.gradle, comme montrÃ© en tout dÃ©but de vidÃ©o.', 'n5AeP-fqT30', 11),
(107, '2018-01-31 14:20:06', 'TP Android nÂ°9 : base de donnÃ©es distante MySQL (1)', 'PrÃ©requis : de prÃ©fÃ©rence des connaissances de base en PHP et MySQL\r\n\r\nBut : installer WAMP (ou LAMP ou MAMP suivant votre systÃ¨me) pour tester en local, crÃ©er une base de donnÃ©es MySQL (en utilisant phpMyAdmin), crÃ©er 2 pages php (une pour se connecter Ã  la base de donnÃ©es, une autre pour gÃ©rer les demandes de l\'application Android qui voudra enregistrer un profil et rÃ©cupÃ©rer le dernier profil enregistrÃ©).\r\nERRATUM : tout Ã  la fin, je parle de \"vidÃ©o prÃ©cÃ©dente\", il est bien sÃ»r question de \"vidÃ©o suivante\".', 'PKd8CEXXyLk', 11),
(108, '2018-01-28 14:39:00', 'TP Android nÂ°8 : base de  donnÃ©es locale SQLite', 'PrÃ©requis : connaissances en Java, en programmation objet, en SQL et avoir vu les vidÃ©os prÃ©cÃ©dentes de cette sÃ©rie\r\nBut : DÃ©couvrir le fonctionnement d\'une base de donnÃ©es au format SQLite. CrÃ©er les classes d\'accÃ¨s. Manipuler un curseur. Enregistrer les profils et les rÃ©cupÃ©rer. Utiiser un browser externe pour consulter la base de donnÃ©es.', 'vRaR3yLnHig', 11),
(109, '2018-01-25 17:47:06', 'TP Android nÂ°7 : persistance par sÃ©rialisation', 'PrÃ©requis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidÃ©os prÃ©cÃ©dentes de cette sÃ©rie\r\nBut : enregistrer le profil par sÃ©rialisation dans un fichier binaire afin de le rÃ©cupÃ©rer lors de l\'exÃ©cution suivante de l\'application. La classe de sÃ©rialisation vous est donnÃ©e et peut Ãªtre rÃ©utilisÃ©e dans n\'importe quelle application Java.', 'pLGSguzM9jU', 11),
(110, '2018-01-23 14:54:24', 'TP Android nÂ°6 : code de la vue', 'PrÃ©requis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidÃ©os prÃ©cÃ©dentes de cette sÃ©rie\r\nBut : coder la classe de la partie Vue du MVC (fin de la premiÃ¨re Ã©tape : l\'application fonctionne)', '8lO4wYm6Jos', 11),
(111, '2018-01-21 12:54:18', 'TP Android nÂ°5 : code du controleur et JavaDoc', 'Remarque : pour Ã©viter les problÃ¨mes d\'encodage (d\'accents) au niveau de la gÃ©nÃ©ration de la documentation technique en HTML, dans la fenÃªtre de la crÃ©ation de la doc, ligne \"Other command line arguments\", ajoutez le code suivant :\r\n-encoding utf8 -docencoding utf8 -charset utf8\r\n(au moment 16:25 de la vidÃ©o)\r\n\r\nPrÃ©requis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidÃ©os prÃ©cÃ©dentes de cette sÃ©rie\r\nBut : coder la classe de la partie Controleur du MVC et crÃ©ation de la documentation technique (la JavaDoc)', '32Ljj4epj8k', 11),
(112, '2018-01-18 14:12:32', 'TP Android nÂ°4 : code du modele et tests unitaires', 'PrÃ©requis : connaissances en Java et programmation objet (sinon voir le cours objet et le TP POO Java)\r\nBut : coder la classe de la partie Modele du MVC et crÃ©ation de tests unitaires', '-3PEXYo7gKM', 11),
(113, '2018-01-16 19:51:19', 'TP Android nÂ°3 : construction de l\'interface', 'Remarque : vous verrez quelques diffÃ©rences dans l\'IDE, au niveau de la construction de l\'interface, mais cela reste minime (dessins de boutons un peu diffÃ©rents...).\r\n\r\nPrÃ©requis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : montrer le but de l\'application et construire la 1e interface (notions de Layout, de widgets et de positionnement relatif)', 'nd0hZafw1sM', 11),
(114, '2018-01-14 15:17:56', 'TP Android nÂ°2 : crÃ©ation d\'une application', 'IMPORTANT : surtout choisissez bien le langage Java pour l\'application (et non Kotlin, proposÃ© maintenant par dÃ©faut).\r\nLes Ã©tapes de crÃ©ation ont Ã©voluÃ©s mais la logique globale reste la mÃªme.\r\nVoici tout de mÃªme des indications (donnÃ©es dÃ©but 2022 donc susceptibles d\'Ã©volution) :\r\nL\'ordre de crÃ©ation d\'un projet a changÃ©.\r\nMaintenant, vous tombez directement sur l\'Ã©cran prÃ©sentÃ© en 2:35 oÃ¹ vous choisissez \"Empty Activity\".\r\n3:00 : Maintenant on vous demande le nom (Coach), le \"package name\" est dÃ©jÃ  rempli, il y a aussi le dossier de sauvegarde (que vous pouvez changer mais pensez Ã  mettre \"\\Coach\" Ã  la fin). ATTENTION, au niveau langage, choisissez \"Java\" (et surtout pas Kotlin, le TP a Ã©tÃ© fait en Java). Le minimum SDK est normalement \"API 16\".\r\n3:42 : la partie basse, une erreur et une invitation Ã  faire une installation complÃ©mentaire en cliquant sur un lien. Dans ce cas, suivez les indications et cliquez sur le lien. Si, aprÃ¨s cette installation, une nouvelle erreur apparait et une nouvelle installation est proposÃ©e, suivez encore les indications. Faites-le tant que des propositions sont faites. Au final, vous devriez obtenir la fenÃªtre prÃ©cÃ©dente.\r\nIl est possible que dans la partie droite, il y ait une partie \"Whatâ€™s New\". Fermez cette partie en cliquant sur le \"-\" en haut Ã  droite de cette zone (hide) ou sur \"Assistant\" qui est marquÃ© verticalement tout Ã  droite.\r\nSi vous avez une partie basse ouverte (partie qui affiche entre autres, les erreurs), fermez-lÃ  en cliquant sur le \"-\" Ã  droite. Pour le moment, on n\'en a pas besoin.\r\n14:33 : Restez sur l\'onglet \"Recommended\" et choisissez Lollilop API 22.\r\n\r\nPrÃ©requis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : crÃ©er une nouvelle application, comprendre la structure d\'une application Android, configurer l\'AVD Manager pour tester l\'application', 'xzLxUu2xO7s', 11),
(115, '2018-01-12 11:17:51', 'TP Android nÂ°1 : installation et configuration d\'Android Studio', 'IMPORTANT : Android Studio Ã©volue trÃ¨s vite. Il est possible qu\'au cours du TP, vous rencontriez des diffÃ©rences avec ce que je montre. N\'hÃ©sitez pas Ã  poser des questions dans les commentaires, en cas de blocage. \r\n\r\nRemarques suite Ã  l\'Ã©volution de l\'IDE :\r\n7:36 : prenez plutÃ´t l\'API 16 donc cochez \"Android 4.1 Jelly Bean\". Ne cochez pas plus d\'options (contrairement Ã  ce qui est montrÃ© dans la vidÃ©o)\r\n8:52 : vous devriez plutÃ´t voir l\'option \"Start New Project\"\r\n\r\nPrÃ©requis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : installer et configurer l\'IDE Android Studio qui va permettre de dÃ©velopper sous Android\r\nLangage : Java pour Android\r\nTemps complet du TP : 8h12mn\r\n\r\nSommaire de cette vidÃ©o :\r\nIntroduction\r\nInstallation de JDK : 2:52\r\nTÃ©lÃ©chargement et installation Android Studio : 3:24\r\nPremier dÃ©marrage : 5:17\r\nConfiguration SDK : 5:55', 'M6pi6jXpRrs', 11),
(116, '2017-11-30 11:19:25', 'POO TP Java nÂ°6 : polymorphisme', 'PrÃ©requis : avoir vu les 5 vidÃ©os prÃ©cÃ©dentes (et avoir des connaissances en programmation objet)\r\nBut : gÃ©rer la liste (ajout, suppression) et utiliser le polymorphisme\r\nLangage : Java sous Eclipse Neon', 'tnp0dEUYORA', 12),
(117, '2017-11-29 10:42:25', 'POO TP Java nÂ°5 : Ã©vÃ©nements et contrÃ´leur', 'PrÃ©requis : avoir vu les 4 vidÃ©os prÃ©cÃ©dentes (et avoir des connaissances en programmation objet)\r\nBut : ajouter les Ã©vÃ©nements et complÃ©ter le contrÃ´leur qui gÃ¨re tout\r\nLangage : Java sous Eclipse Neon', '8at4NpebW6c', 12),
(118, '2017-11-27 10:25:27', 'POO TP Java nÂ°4 : dÃ©marrage sur le contrÃ´leur, contruction du modÃ¨le', 'Remarque : A la fin de la vidÃ©o, la classe Rond n\'a pas de constructeur alors qu\'il y en a bien un dans la classe Carre. C\'est un oubli qui est rÃ©parÃ© dans la vidÃ©o suivante, Ã  la minute 13.\r\n\r\nPrÃ©requis : avoir vu les 3 vidÃ©os prÃ©cÃ©dentes (et avoir des connaissances en programmation objet)\r\nBut : montrer comment faire dÃ©marrer l\'application sur le contrÃ´leur, et construction du modÃ¨le avec une classe interface pour le polymorphisme\r\nLangage : Java sous Eclipse Neon', 'Ul4INk7LWS4', 12),
(119, '2017-11-26 14:46:32', 'POO TP Java nÂ°3 : interface graphique', 'PrÃ©requis : avoir vu les 2 vidÃ©os prÃ©cÃ©dentes\r\nBut : montrer comment crÃ©er une interface graphique avec WindowBuilder\r\nLangage : Java sous Eclipse Neon', 'MN7hxuCLrW0', 12),
(120, '2017-11-24 13:11:40', 'POO TP Java nÂ°2 : MVC', 'POO TP Java nÂ°2 : MVC\r\nPrÃ©requis : de prÃ©fÃ©rence avoir vu la vidÃ©o prÃ©cÃ©dente TP Java nÂ°1\r\nBut : prÃ©senter le but de l\'application et la structure MVC\r\nLangage : Java sous Eclipse Neon', 'hblV686hGV0', 12),
(121, '2017-11-23 13:18:07', 'POO TP Java nÂ°1 : configuration d\'Eclipse', 'PrÃ©requis : aucune connaissance pour l\'installation et la configuration d\'Eclipse, mais ensuite il faudra avoir des connaissances en programmation objet car le tp est la mise en pratique des connaissances abordÃ©es dans la playlist du cours de programmation objet\r\nBut : tÃ©lÃ©charger, installer et configurer l\'IDE Eclipse Neon (avec le module WindowBuilder)\r\nLangage : Java sous Eclipse Neon\r\nlien de rÃ©cupÃ©ration de WindowBuilder (Ã  insÃ©rer dans la configuration, comme expliquÃ© dans la vidÃ©o) :\r\nhttp://download.eclipse.org/windowbuilder/WB/integration/4.6/', 'mwTvM_hKlDI', 12),
(122, '2017-11-19 13:43:18', 'Bases de la programmation nÂ°74 - POO : collections', 'PrÃ©requis : avoir vu la vidÃ©o nÂ°73 (le programme de cette vidÃ©o est repris et modifiÃ©)\r\nBut : comprendre le fonctionnement des collections, en remplacement des tableaux classiques\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JuVShBG2bf0', 13),
(123, '2017-11-16 16:23:18', 'Bases de la programmation nÂ°73 - POO : polymorphisme et abstraction', 'PrÃ©requis : connaÃ®tre les notions de classe/objet, de constructeur, d\'encapsulation et d\'hÃ©ritage (vidÃ©os nÂ°68 Ã  72)\r\nBut : comprendre le polymorphisme (statique et dynamique) et la notion d\'abstraction (classe abstraite, mÃ©thode abstraite)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'oCGvk4DUM8I', 13),
(124, '2017-11-15 10:26:39', 'Bases de la programmation nÂ°72 - POO : hÃ©ritage', 'PrÃ©requis : connaÃ®tre les notions de classe/objet, de constructeur et d\'encapsulation (vidÃ©os nÂ°68 Ã  70)\r\nBut : prÃ©sentation de la notion d\'hÃ©ritage\r\nLangage : C# sous Visual Studio version entreprise 2017', 'FgqWq8lrfBI', 13),
(125, '2017-11-14 09:19:20', 'Bases de la programmation nÂ°71 - POO : petit qcm', 'PrÃ©requis : connaÃ®tre les notions de classe/objet, de constructeur et d\'encapsulation (vidÃ©os nÂ°68 Ã  70)\r\nBut : petit QCM de contrÃ´le de connaissances sur les premiÃ¨res notions de POO vues dans les 3 vidÃ©os prÃ©cÃ©dentes (sans mise en pratique)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'dnw6_GOe7us', 13),
(126, '2017-11-13 10:48:45', 'Bases de la programmation nÂ°70 - POO : encapsulation', 'PrÃ©requis : connaÃ®tre les notions de classe/objet et de constructeur (vidÃ©os nÂ°68 et 69)\r\nBut : comprendre l\'encapsulation (privÃ©/public, getter/setter)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM :\r\n6:35 : je dis par erreur que vous n\'avez pas besoin de connaÃ®tre le contenu des mÃ©thodes. C\'est vrai si la classe Ã©tait en include et pas directement dans le code. Donc pour crÃ©er l\'application, vous avez besoin du contenu des mÃ©thodes qui sont prÃ©sentÃ©es de 7:09 Ã  10:15.\r\n7:01 : je prÃ©sente le contenu de la classe Personnage avec, dans le constructeur, l\'initialisation de la vie, en disant qu\'elle doit Ãªtre initialisÃ©e avec une valeur entiÃ¨re entre 0 et 5, sauf que j\'Ã©cris :\r\nthis.vie = nbAlea.Next(0, 5) ;\r\nalors que le second paramÃ¨tre reprÃ©sente la borne supÃ©rieure non incluse, donc il faut Ã©crire :\r\nthis.vie = nbAlea.Next(0, 6) ;\r\n(merci Ã  kamo Yeah pour ce signalement)', 'Pcipxfq3IVw', 13),
(127, '2017-11-10 14:38:42', 'Bases de la programmation nÂ°69 - POO : vie d\'un objet (constructeur)', 'PrÃ©requis : avoir les bases de programmation procÃ©durale et Ã©vÃ©nementielle et savoir ce qu\'es un objet et une classe (vu dans la vidÃ©o prÃ©cÃ©dente \"Bases de la programmation nÂ°68\")\r\nBut : comprendre la vie d\'un objet (dÃ©claration, crÃ©ation (instanciation), utilisation\r\nLangage : C# sous Visual Studio version entreprise 2017', 'rTbctFr3zc8', 13),
(128, '2017-11-09 16:45:47', 'Bases de la programmation nÂ°68 - POO : classe/objet', 'PrÃ©requis : avoir les bases de programmation procÃ©durale et Ã©vÃ©nementielle\r\nBut : initiation Ã  la notion de classe et d\'objet\r\nLangage : C# sous Visual Studio version entreprise 2017', '3_1TJBsJm-k', 13),
(129, '2017-11-08 10:30:05', 'Bases de la programmation nÂ°67 - Ã©vÃ©nementiel : tables de multiplications', 'PrÃ©requis : savoir crÃ©er un projet Ã©vÃ©nementiel (\"Bases de la programmation nÂ°60\")\r\nBut : crÃ©er une application graphique qui permet de proposer une sÃ©rie de tests pour contrÃ´ler les connaissances en tables de multiplications (crÃ©ation de nombres alÃ©atoires, gestion des couleurs, optimisation du code)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nREMARQUE : ce serait bien d\'apporter une petite optimisation en crÃ©ant une procÃ©dure non Ã©vÃ©nementielle pour remplir la zone de note, vu qu\'on le fait Ã  2 endroits du programme.', 'X-BX2TX1YC8', 13),
(130, '2017-11-07 09:22:50', 'Bases de la programmation nÂ°66 - Ã©vÃ©nementiel : conversion de monnaies', 'PrÃ©requis : savoir crÃ©er un projet Ã©vÃ©nementiel (\"Bases de la programmation nÂ°60\") et connaÃ®tre les tableaux de structures\r\nBut : crÃ©er une application graphique qui permet de rÃ©aliser des conversions de monnaies (Ã  partir de monnaies stockÃ©es dans un tableau de structure)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ogqgPiBJ_a4', 13),
(131, '2017-11-05 13:44:15', 'Bases de la programmation nÂ°65 - Ã©vÃ©nementiel : manipulation de listes', 'PrÃ©requis : avoir vu au moins les vidÃ©os \"Bases de la programmation nÂ°60 et 63\"  ou savoir crÃ©er un projet Ã©vÃ©nementiel\r\nBut : crÃ©er une application graphique qui permet de gÃ©rer des listes (copie des items d\'une liste Ã  l\'autre)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : \r\n1:46 je dis par erreur que les listbox n\'ont pas encore Ã©tÃ© vues (elles ont Ã©tÃ© vue dans \"Base de la programmation nÂ°63\")\r\n10:05 dans choix ce n\'est pas la sÃ©lection du dossier qu\'on rÃ©cupÃ¨re mais la sÃ©lection du choix (ok ou annuler)', 'jtIFePeDFmc', 13),
(132, '2017-11-03 12:36:42', 'Bases de la programmation nÂ°64 - Ã©vÃ©nementiel : poids idÃ©al', 'PrÃ©requis : avoir vu la vidÃ©os \"Bases de la programmation nÂ°60\" ou savoir crÃ©er un petit projet Ã©vÃ©nementiel\r\nBut : crÃ©er une application graphique qui permet de calculer le poids idÃ©al suivant la formule de CREFF (utilisaton de nouveaux objets graphiques : DateTimePicker et RadioButton)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'tAUkirXVbk4', 13),
(133, '2017-11-02 12:00:37', 'Bases de la programmation nÂ°63 - Ã©vÃ©nementiel : galerie de photos', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation nÂ°60 et 61\" ou savoir crÃ©er un petit projet Ã©vÃ©nementiel (avec modules non Ã©vÃ©nementiels)\r\nBut : crÃ©er une application graphique qui permet de sÃ©lectionner un dossier sur le disque et d\'afficher les images qu\'il contient (avec possibilitÃ© de faire pivoter une photo)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ZZOcCU-Q6V8', 13),
(134, '2017-11-01 15:54:34', 'Bases de la programmation nÂ°62 - Ã©vÃ©nementiel : conversions', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation nÂ°60 et 61\" ou savoir crÃ©er un petit projet Ã©vÃ©nementiel (avec modules non Ã©vÃ©nementiels)\r\nBut : crÃ©er une application graphique qui permet de convertir en base 2 (avec conversion Ã  la volÃ©e, sans valider ni cliquer sur un bouton)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'SUDWQ9z0GAc', 13),
(135, '2017-10-31 16:11:14', 'Bases de la programmation nÂ°61 - Ã©vÃ©nementiel : nombre cachÃ©', 'PrÃ©requis : avoir vu la vidÃ©o \"Bases de la programmation nÂ°60\" ou savoir crÃ©er un petit projet Ã©vÃ©nementiel\r\nBut : crÃ©er une application graphique avec des propriÃ©tÃ©s (variables globales Ã  la classe) et des modules non Ã©vÃ©nementiels\r\nLangage : C# sous Visual Studio version entreprise 2017', 'MCNNpJWPTGk', 13),
(136, '2017-10-30 16:44:06', 'Bases de la programmation nÂ°60 - Ã©vÃ©nementiel : premier exemple graphique', 'PrÃ©requis : connaÃ®tre les bases de la programmation procÃ©durale (variables simples, tableaux, conditions, itÃ©rations, modules paramÃ©trÃ©s)\r\nBut : dÃ©couverte de la programmation dans un environnement graphique\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : Ã  7:31 je parle par erreur de la propriÃ©tÃ© Pow de la classe Math alors que c\'est une mÃ©thode et non une propriÃ©tÃ©. On pourrait prendre comme exemple PI de la classe Math.', 'R71Vj5PSOK8', 13),
(137, '2017-10-28 13:02:08', 'Bases de la programmation nÂ°59 - modules : exercice 55 (notation polonaise)', 'PrÃ©requis : savoir manipuler les modules paramÃ©trÃ©s\r\nBut : exercice de rÃ©flexion sur le calcul en notation polonaise\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : dans le sujet, je parle de conversion en int, et dans la vidÃ©o, je convertis en float. Le principe est similaire mais effectivement le rÃ©sultat d\'une opÃ©ration peut donner un float.', 'htV8q12Hn58', 13),
(138, '2017-10-27 10:01:31', 'Bases de la programmation nÂ°58 - modules : exercice 54 (signes du zodiaque)', 'PrÃ©requis : savoir manipuler les modules paramÃ©trÃ©s et les tableaux de structures\r\nBut : crÃ©ation d\'un module qui retourne le signe du zodiaque en fonction du jour et du mois\r\nLangage : C# sous Visual Studio version entreprise 2017', 'vQJeeD-M5xE', 13),
(139, '2017-10-26 09:10:11', 'Bases de la programmation nÂ°57 - modules : exercice 53 (paramÃ¨tre vecteur)', 'PrÃ©requis : savoir manipuler les modules et les vecteurs\r\nBut : crÃ©ation d\'un module ayant un vecteur en paramÃ¨tre et modification du vecteur (les paramÃ¨tres de types complexes sont toujours transfÃ©rÃ©s par rÃ©fÃ©rence)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : \r\nÃ  5:15, je parle de \"passage par paramÃ¨tre\", en rÃ©alitÃ© c\'est un \"passage par rÃ©fÃ©rence\"\r\nÃ  18:16, je dis \"il sort de la procÃ©dure\" au lieu de \"il sort de la fonction\"', '6WArwj8toQ0', 13),
(140, '2017-10-25 08:44:07', 'Bases de la programmation nÂ°56 - modules : exercice 52 (paramÃ¨tre vecteur)', 'PrÃ©requis : savoir manipuler les modules et les vecteurs\r\nBut : crÃ©ation d\'un module ayant un vecteur en paramÃ¨tre\r\nLangage : C# sous Visual Studio version entreprise 2017', 'Z_2KgfgHsow', 13),
(141, '2017-10-25 08:36:13', 'Bases de la programmation nÂ°55 - modules : QCM', 'PrÃ©requis : savoir ce qu\'est un module (procÃ©dure ou fonction) et un paramÃ¨tre\r\nBut : petit QCM pour contrÃ´ler les connaissances\r\nLangage : C# sous Visual Studio version entreprise 2017', 'pgSobCGHtPw', 13),
(142, '2017-10-24 09:31:22', 'Bases de la programmation nÂ°54 - modules : procÃ©dure ou fonction ?', 'PrÃ©requis : avoir vu la vidÃ©o \"Bases de la programmation nÂ°53\"\r\nBut : savoir choisir entre crÃ©er une procÃ©dure ou une fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'C13X9KenLmY', 13),
(143, '2017-10-24 09:26:35', 'Bases de la programmation nÂ°53 - modules : procÃ©dure ou fonction ?', 'PrÃ©requis : connaÃ®tre la diffÃ©rence entre une procÃ©dure et une fonction\r\nBut : savoir choisir entre crÃ©er une procÃ©dure ou une fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'lr4jrRzjrQA', 13),
(144, '2017-10-23 10:33:31', 'Bases de la programmation nÂ°52 - modules : trace avec paramÃ¨tres par rÃ©fÃ©rence', 'PrÃ©requis : avoir vu la vidÃ©o prÃ©cÃ©dente (Bases de la programmation nÂ°51)\r\nBut : trace complexe avec paramÃ¨tres en rÃ©fÃ©rence\r\nLangage : C# sous Visual Studio version entreprise 2017', 'bGet3MFefL4', 13),
(145, '2017-10-23 10:29:31', 'Bases de la programmation nÂ°51 - modules : trace avec paramÃ¨tres par rÃ©fÃ©rence', 'PrÃ©requis : savoir ce qu\'est une fonction paramÃ©trÃ©e (\"bases de la programmation nÂ°43 Ã  49\")\r\nBut : dÃ©couverte des diffÃ©rents passages de paramÃ¨tres (par valeur ou par rÃ©fÃ©rence/adresse)\r\nLangage : C# sous Visual Studio version entreprise 2017', '4FYzigwAF3M', 13),
(146, '2017-10-23 10:23:40', 'Bases de la programmation nÂ°50 - modules : exercice 46 (fonctions paramÃ©trÃ©es)', 'PrÃ©requis : savoir ce qu\'est une fonction paramÃ©trÃ©e (\"bases de la programmation nÂ°43 Ã  49\")\r\nBut : contrÃ´le si 2 nombre sont amis (optimisation avec plusieurs fonctions paramÃ©trÃ©es)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JtRZP_-wYEI', 13),
(147, '2017-10-21 15:22:17', 'Bases de la programmation nÂ°49 - modules : exercice 45', 'PrÃ©requis : avoir vu la vidÃ©o \"bases de la programmation nÂ°48\" car la fonction paramÃ©trÃ©e va Ãªtre reprise et \"bases de la programmation nÂ°11\" car il faut reprendre l\'exercice de cette vidÃ©o pour utiliser la nouvelle fonction\r\nBut : rÃ©utiliser une fonction paramÃ©trÃ©e\r\nLangage : C# sous Visual Studio version entreprise 2017', 'DQkIdlu5bFw', 13),
(148, '2017-10-21 15:18:52', 'Bases de la programmation nÂ°48 - modules : exercice 44', 'PrÃ©requis : avoir vu la vidÃ©o \"bases de la programmation nÂ°47\" qui prÃ©sente une fonction paramÃ©trÃ©e et la vidÃ©o \"bases de la programmation nÂ°46\" car c\'est cet exercice qui est repris et amÃ©liorÃ©\r\nBut : transformer une fonction non paramÃ©trÃ©e en fonction paramÃ©trÃ©e\r\nLangage : C# sous Visual Studio version entreprise 2017', 'FdLkvKiglk4', 13),
(149, '2017-10-20 09:13:37', 'Bases de la programmation nÂ°47 - modules : exemple avec paramÃ¨tres', 'PrÃ©requis : avoir vu la vidÃ©o \"bases de la programmation nÂ°45\" qui prÃ©sente une fonction simple\r\nBut : ajouter des paramÃ¨tres Ã  un module\r\nLangage : C# sous Visual Studio version entreprise 2017', 'zs4aVyJKDbk', 13),
(150, '2017-10-20 08:38:03', 'Bases de la programmation nÂ°46 - modules : exercice 43 (fonction)', 'PrÃ©requis : avoir vu les vidÃ©os \"bases de la programmation nÂ°44 et n45\"\r\nBut : transformer une procÃ©dure en fonction\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM :\r\nDans le Main, en allant un peu vite, j\'ai dÃ©clarÃ© par erreur la variable reponse avec les autres variables de type float, alors qu\'elle devrait Ãªtre dÃ©clarÃ©e en type char.\r\nLe programme fonctionne tout de mÃªme car un type char reÃ§oit en rÃ©alitÃ© le code ascii du caractÃ¨re, donc un nombre. Cependant Ã©videmment, c\'est trÃ¨s moche de faire ainsi.\r\nMerci Ã  KÃ©vin Rizzo pour avoir signalÃ© l\'erreur.', 'oIYr7zFbeg0', 13),
(151, '2017-10-19 14:53:29', 'Bases de la programmation nÂ°45 - modules : exemple fonction', 'PrÃ©requis : avoir vu la vidÃ©o \"bases de la programmation nÂ°43\" sur les modules\r\nBut : dÃ©couvrir le principe d\'une fonction (module qui retourne une information)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'fEuWc3vSFBc', 13),
(152, '2017-10-19 14:02:25', 'Bases de la programmation nÂ°44 - modules : exercice 42', 'PrÃ©requis : avoir vu la vidÃ©o prÃ©cÃ©dente (bases de la programmation nÂ°43) sur les modules\r\nBut : application directe de la notion vue dans la vidÃ©o prÃ©cÃ©dente (coder un module simple de type procÃ©dure sans paramÃ¨tre)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'da2zwV1-eLk', 13),
(153, '2017-10-18 12:59:54', 'Bases de la programmation nÂ°43 - modules : premier exemple', 'PrÃ©requis : avoir vu et compris la vidÃ©o du premier exemple de programmation procÃ©durale (Bases de la programmation nÂ°1)\r\nBut : montrer l\'intÃ©rÃªt d\'un module\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xPXok2jW0Xw', 13),
(154, '2017-10-16 13:58:46', 'Bases de la programmation nÂ°42 - tableaux : exercice41 (exercice avancÃ©)', 'PrÃ©requis : savoir manipuler un tableau de structure\r\nBut : trouver la solution la plus optimisÃ©e d\'un problÃ¨me sur les tableaux\r\nLangage : C# sous Visual Studio version entreprise 2017', 'x8rD8tC5aoQ', 13),
(155, '2017-10-16 09:11:04', 'Bases de la programmation nÂ°41 - tableaux : exercice40 (exercice avancÃ©)', 'PrÃ©requis : savoir manipuler un vecteur (tableau Ã  1 dimension)\r\nBut : trouver la solution la plus optimisÃ©e d\'un problÃ¨me sur les tableaux, en jouant sur les indices\r\nLangage : C# sous Visual Studio version entreprise 2017', '6Ev3SC4nUzU', 13),
(156, '2017-10-15 16:12:22', 'Bases de la programmation nÂ°40 - tableaux : exercice39 (inversion d\'un tableau)', 'PrÃ©requis : savoir manipuler un vecteur (tableau Ã  1 dimension)\r\nBut : Inversion des cases d\'un tableau sans utiliser un autre tableau (petit exercice de rÃ©flexion et piÃ¨ge Ã  Ã©viter...)\r\nLangage : C# sous Visual Studio version entreprise 2017', '9132Kbg99AU', 13),
(157, '2017-10-15 14:11:07', 'Bases de la programmation nÂ°39 - tableaux : exercice38 (trace d\'un tableau)', 'PrÃ©requis : savoir manipuler un vecteur (tableau Ã  1 dimension)\r\nBut : bien comprendre le fonctionnement d\'un tableau (au nivea udes indices et contenus de cases)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xmiMaEqkoMg', 13),
(158, '2017-10-14 09:53:19', 'Bases de la programmation nÂ°38 - tableaux : exercice37 (recherche dichotomique)', 'PrÃ©requis : avoir vu la vidÃ©o prÃ©cÃ©dente sur la recherche sÃ©quentielle\r\nBut : recherche dichotomique dans un vecteur triÃ©\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ob6bo7BI_Uw', 13),
(159, '2017-10-14 09:33:13', 'Bases de la programmation nÂ°37 - tableaux : exercice36 (recherche sÃ©quentielle)', 'PrÃ©requis : savoir manipuler un vecteur (tableau Ã  1 dimension)\r\nBut : recherche sÃ©quentielle dans un vecteur (triÃ© ou non)\r\nLangage : C# sous Visual Studio version entreprise 2017', '4gxhfP4I5pM', 13),
(160, '2017-10-13 13:08:55', 'Bases de la programmation nÂ°36 - tableaux : exercice35 (tri par bulle)', 'PrÃ©requis : avoir vu les 2 exercices prÃ©cÃ©dents (tri par sÃ©lection et insertion)\r\nBut : tri d\'un vecteur (tableau Ã  1 dimension) avec la mÃ©thode de tri par bulle\r\nLangage : C# sous Visual Studio version entreprise 2017', 'kUP8kb9t50Q', 13),
(161, '2017-10-12 17:04:43', 'Bases de la programmation nÂ°35 - tableaux : exercice34 (tri par insertion)', 'PrÃ©requis : avoir vu l\'exercice prÃ©cÃ©dent (tri par sÃ©lection)\r\nBut : tri d\'un vecteur (tableau Ã  1 dimension) avec la mÃ©thode de tri par insertion\r\nLangage : C# sous Visual Studio version entreprise 2017', 'dSN7mtGOeZc', 13),
(162, '2017-10-12 11:05:11', 'Bases de la programmation nÂ°34 - tableaux : exercice33 (tri par sÃ©lection)', 'PrÃ©requis : savoir manipuler un vecteur (base de la programmation nÂ°31)\r\nBut : tri d\'un vecteur (tableau Ã  1 dimension) avec la mÃ©thode de tri par sÃ©lection\r\nLangage : C# sous Visual Studio version entreprise 2017', '0Z8rYUjFrG4', 13),
(163, '2017-10-11 09:59:01', 'Bases de la programmation nÂ°33 - tableaux : exercice32 (tableau de structure)', 'PrÃ©requis : savoir manipuler un vecteur (base de la programmation nÂ°31)\r\nBut : manipulation d\'un tableau de structure\r\nLangage : C# sous Visual Studio version entreprise 2017', 'H9oJxdw8SN4', 13),
(164, '2017-10-10 09:49:19', 'Bases de la programmation nÂ°32 - tableaux : exercice31 (matrice)', 'PrÃ©requis : avoir suivi l\'exercice prÃ©cÃ©dent (ou avoir compris comment fonctionne un tableau Ã  1 dimension)\r\nBut : manipulation d\'un tableau Ã  2 dimensions (calcul d\'un dÃ©terminant)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'n6mbI-4Vbvg', 13),
(165, '2017-10-10 09:10:26', 'Bases de la programmation nÂ°31 - tableaux : exercice29 (manipulation d\'un vecteur)', 'PrÃ©requis : connaÃ®tre les variables simples et les notions de base de la programmation procÃ©durale (saisie/affichage, affectation/calcul, tests, boucles)\r\nBut : manipulation d\'un tableau Ã  1 dimension (calcul d\'une moyenne et des tempÃ©ratures au dessus de la moyenne)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'fgSYas-xIiI', 13),
(166, '2017-10-09 10:09:35', 'Bases de la programmation nÂ°30 - procÃ©dural : debugage', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utilisation du debugage pour voir l\'Ã©volution des variables\r\nLangage : C# sous Visual Studio version entreprise 2017', 'q0vQd-icoCA', 13),
(167, '2017-10-09 09:46:58', 'Bases de la programmation nÂ°29 - procÃ©dural : exercice28 (conversion binaire)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (conversion d\'un nombre entier en binaire par divisions successives)\r\nLangage : C# sous Visual Studio version entreprise 2017', '6D2tOQwj0vI', 13),
(168, '2017-10-08 16:07:15', 'Bases de la programmation nÂ°28 - procÃ©dural : exercice27 (nombre premier)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (contrÃ´le si un nombre est premier)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\n\r\nRemarque importante :\r\nLe programme ne fonctionne pas si 2 est saisi (2 Ã©tant le premier nombre premier). Il manque donc un test pour traiter ce cas particulier.', 'kAKLBGNPbKE', 13),
(169, '2017-10-08 16:01:18', 'Bases de la programmation nÂ°27 - procÃ©dural : exercice26 (conversion secondes)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (conversion de secondes en HH:MM:SS)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'WCWnS78WRTE', 13),
(170, '2017-10-07 16:15:58', 'Bases de la programmation nÂ°26 - procÃ©dural : exercice25 (suite croisante)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (nÃ©cessitÃ© de comparer 2 valeurs successives, par exemple pour dÃ©montrer qu\'une suite est croissante)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'qhCM3u080ek', 13),
(171, '2017-10-07 15:22:10', 'Bases de la programmation nÂ°25 - procÃ©dural : exercice24 (recherche de min et max)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (recherche de minimum et maximum dans une liste non bornÃ©e)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JfDD5bi3mjk', 13),
(172, '2017-10-06 10:01:11', 'Bases de la programmation nÂ°24 - procÃ©dural : exercice23 (recherche de min et max)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (recherche de minimum et maximum dans une liste bornÃ©e)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'F6u-yv4WIYc', 13),
(173, '2017-10-06 09:36:47', 'Bases de la programmation nÂ°23 - procÃ©dural : exercice22 (for et petite astuce)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (boucle for et optimisation de traitement)\r\nLangage : C# sous Visual Studio version entreprise 2017', '16ObvAcBAJg', 13),
(174, '2017-10-05 13:37:31', 'Bases de la programmation nÂ°22 - procÃ©dural : exercice21 (if,switch et test de saisie)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (alternative et test de saisie)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'vrrMgyPRAWU', 13),
(175, '2017-10-05 08:52:01', 'Bases de la programmation nÂ°21 - procÃ©dural : exercice20 (saisie affichage)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : exercice de rÃ©vision (saisie et affichage)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'spqHCVdSTtQ', 13),
(176, '2017-10-04 08:42:42', 'Bases de la programmation nÂ°20 - procÃ©dural : exercice19 (optimisation)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : apprendre Ã  optimiser un code\r\nLangage : C# sous Visual Studio version entreprise 2017', 'h_95SLUnV6o', 13),
(177, '2017-10-03 08:45:01', 'Bases de la programmation nÂ°19 - procÃ©dural : exercice18 (fonction dans une fonction)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : appel d\'une fonction comme argument d\'une autre fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'kwYLJGVKGNA', 13),
(178, '2017-10-03 08:38:25', 'Bases de la programmation nÂ°18 - procÃ©dural : exercice17 (fonction mathÃ©matique)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : dÃ©couvrir des fonctions mathÃ©matiques directement sur la classe Math\r\nLangage : C# sous Visual Studio version entreprise 2017', 'OhSdUl7C5eU', 13),
(179, '2017-10-02 08:06:55', 'Bases de la programmation nÂ°17 - procÃ©dural : exercice16 (maniplations de chaines)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : dÃ©couvrir des fonctions de manipulations de chaines (IndexOf, Substring)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'iuh-7-qxFHw', 13),
(180, '2017-10-02 08:02:00', 'Bases de la programmation nÂ°16 - procÃ©dural : exercice15 (maniplations de chaines)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : dÃ©couvrir des fonctions de manipulations de chaines (Replace)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xPto2Junk1o', 13),
(181, '2017-09-30 15:48:53', 'Bases de la programmation nÂ°15 - procÃ©dural : exercice14 (boucles imbriquÃ©es)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : boucles imbriquÃ©es\r\nLangage : C# sous Visual Studio version entreprise 2017', 'mrwTtcVtR90', 13),
(182, '2017-09-30 15:35:36', 'Bases de la programmation nÂ°14 - procÃ©dural : exercice13 (boucles successives)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : plusieurs boucles successives\r\nLangage : C# sous Visual Studio version entreprise 2017', 'VYC6mG6ILB0', 13),
(183, '2017-09-29 09:22:00', 'Bases de la programmation nÂ°13 - procÃ©dural : exercice12 (boucle for)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle for (nombre d\'itÃ©ration connu)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'AxLkmF0aPwM', 13),
(184, '2017-09-29 09:18:33', 'Bases de la programmation nÂ°12 - procÃ©dural : exercice11 (boucle for)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle for (nombre d\'itÃ©ration connu)\r\nLangage : C# sous Visual Studio version entreprise 2017', '7tss6XwFO8I', 13),
(185, '2017-09-28 09:00:30', 'Bases de la programmation nÂ°11 - procÃ©dural : exercice10 (boucle do/while)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle do/while pour les test de saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'INE6HvHBRG0', 13),
(186, '2017-09-28 08:37:47', 'Bases de la programmation nÂ°10 - procÃ©dural : exercice9 (boucle do/while)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle do/while pour les test de saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'QDo1e7-OxWU', 13),
(187, '2017-09-27 07:50:29', 'Bases de la programmation nÂ°9 - procÃ©dural : exercice8 (boucle while)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle universelle while avec question pour arrÃªter\r\nLangage : C# sous Visual Studio version entreprise 2017', 'Pb1esUzrkIA', 13),
(188, '2017-09-27 07:44:20', 'Bases de la programmation nÂ°8 - procÃ©dural : exercice7 (boucle while)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : utiliser la boucle universelle while\r\nLangage : C# sous Visual Studio version entreprise 2017', 'XkLPXXSNTqM', 13),
(189, '2017-09-26 09:30:45', 'Bases de la programmation nÂ°7 - procÃ©dural : exercice6 (conditions imbriquÃ©es)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : conditions imbriquÃ©es\r\nLangage : C# sous Visual Studio version entreprise 2017', 'km6yGYNE7U4', 13),
(190, '2017-09-26 09:19:10', 'Bases de la programmation nÂ°6 - procÃ©dural : exercice5 (condition)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : condition (alternative avec if)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'L9ePj3vr8YM', 13),
(191, '2017-09-25 15:48:28', 'Bases de la programmation nÂ°5 - procÃ©dural : exercice4 (calcul dans affichage)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : calcul dans un affichage\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ZE0W7HZpStA', 13),
(192, '2017-09-25 15:30:46', 'Bases de la programmation nÂ°4 - procÃ©dural : exercice3 (calculs)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\"\r\n prÃ©cÃ©dentes\r\nBut : dÃ©couverte du type float et des calculs\r\nLangage : C# sous Visual Studio version entreprise 2017', 'wWI4Y8RzJXA', 13),
(193, '2017-09-21 16:03:30', 'Bases de la programmation nÂ°3 - procÃ©dural : exercice2 (saisie)', 'PrÃ©requis : avoir vu les vidÃ©os \"Bases de la programmation\" prÃ©cÃ©dentes\r\nBut : saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'URwYM1jToig', 13),
(194, '2017-09-21 14:41:21', 'Bases de la programmation nÂ°2 - procÃ©dural : exercice1 (affichage)', 'PrÃ©requis : aucun\r\nBut : initialisation et affichage avec concatÃ©nation\r\nLangage : C# sous Visual Studio version entreprise 2017', 'w9Vc63-bWhY', 13),
(196, '2017-09-20 17:35:03', 'Bases de la programmation nÂ°1 - procÃ©dural : premier exemple', 'REMARQUE IMPORTANTE : dÃ©solÃ©e pour les Ã©critures trop petites. C\'est plus lisible Ã  partir de la prochaine vidÃ©o.\r\n\r\nPrÃ©requis : aucun\r\nBut : dÃ©couvrir un tout premier exemple de programme en procÃ©dural (jeu du nombre cachÃ©) en C# sous Visual Studio (version entreprise 2017)', 'iXkPQpzTWO4', 13),
(197, '2017-05-02 10:17:11', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas aeroplan 2014 BTS SIO)', 'PrÃ©requis : avoir vu le cours triggers (et mcd)\r\nBut : PrÃ©senter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', 'MY3iht6rexA', 14),
(198, '2017-05-01 15:53:25', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas supmaster 2014 BTS SIO)', 'PrÃ©requis : avoir vu le cours triggers (et mcd)\r\nBut : PrÃ©senter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', '6H4Df5w39OM', 14),
(199, '2017-05-01 15:16:00', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas music 2015 BTS SIO)', 'PrÃ©requis : avoir vu le cours triggers (et mcd)\r\nBut : PrÃ©senter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', '8Zso-kf0iFM', 14),
(200, '2017-05-01 09:54:44', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas demguiv 2016 BTS SIO)', 'PrÃ©requis : avoir vu le cours triggers (et mcd)\r\nBut : PrÃ©senter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', 'fyHIL-Vxgjo', 14),
(201, '2017-04-29 17:28:57', 'Exercice Objet (correction objet sujet EDC cas gest-pc 2013 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'JauXs6Noh4s', 15),
(202, '2017-04-29 16:54:57', 'Exercice Objet (correction objet sujet EDC cas equida 2013 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'Pz5-IAoSRRU', 15),
(203, '2017-04-28 15:35:46', 'Exercice Objet (correction objet sujet EDC cas aeroplan 2014 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'Rv61mr0_Wx4', 15),
(204, '2017-04-28 13:38:46', 'Exercice Objet (correction objet sujet EDC cas supmaster 2014 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'Z4aXK-g_bA8', 15),
(205, '2017-04-28 10:20:56', 'Exercice Objet (correction objet sujet EDC cas music 2015 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'NCwfDrWLpSM', 15),
(206, '2017-04-27 15:18:59', 'Exercice Objet (correction objet sujet EDC cas trisel 2015 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', '8g2ih2jtYVQ', 15),
(207, '2017-04-27 11:43:53', 'Exercice Objet (correction objet sujet EDC cas ffbsq 2016 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'uMrdWszfBLE', 15),
(208, '2017-04-27 09:20:47', 'Exercice Objet (correction objet sujet EDC cas demguiv 2016 BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO', 'jgVEK4mu4DA', 15),
(209, '2017-04-26 12:50:53', 'Exercice MCD (correction MCD sujet EDC cas aeroplan 2014 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'RbqgBP1g6Qc', 16),
(210, '2017-04-26 11:45:11', 'Exercice MCD (correction MCD sujet EDC cas trisel 2015 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'QUL-nsgSiDg', 16),
(211, '2017-04-26 09:04:39', 'Exercice MCD (correction MCD sujet EDC cas demguiv 2016 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'boS-Tr_SyTQ', 16),
(212, '2017-04-25 16:13:37', 'Exercice MCD (correction MCD sujet EDC cas Gest-pc2013 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'P2kngg6zRZo', 16),
(213, '2017-04-25 13:44:42', 'Exercice MCD (correction MCD sujet EDC cas Equida 2013 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'Uzk3M7OLs5s', 16),
(214, '2017-04-25 09:52:03', 'Exercice MCD (correction MCD sujet EDC cas Submaster 2014 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'v1dKMDAH2r4', 16),
(215, '2017-04-25 07:45:42', 'Exercice MCD (correction MCD sujet EDC cas FFBSQ 2016 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'dUAw4XztT6w', 16),
(216, '2017-04-25 07:32:53', 'Exercice MCD (correction MCD sujet EDC cas Music 2015 BTS SIO)', 'PrÃ©requis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es d\'un sujet de BTS SIO', 'nNkZU9DuhJI', 16),
(217, '2017-03-01 21:12:06', 'Cours Composant logiciel (11 Ã  14 / 14) : web service', 'PrÃ©requis : aucun\r\nBut : prÃ©senter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constituÃ© de 14 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels', 'fNG2htDCjkM', 17),
(218, '2017-03-01 21:07:16', 'Cours Composant logiciel (1 Ã  10 / 14) : notion de composant logiciel', 'PrÃ©requis : aucun\r\nBut : prÃ©senter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constituÃ© de 14 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels', 'qpQ1tVIQSck', 17),
(219, '2016-11-29 13:37:01', 'Cours MCD MLD MPD (10 Ã  19 / 19) : exercices', 'REMARQUE IMPORTANTE : si vous Ãªtes Ã  la recherche d\'un cours sur les MCD, c\'est plutÃ´t ici :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nPrÃ©requis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour crÃ©er la base de donnÃ©es\r\nLe cours est constituÃ© de 19 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 28mn) :\r\n1-9 : introduction, entitÃ©s, associations, hÃ©ritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD', 'lDowNcaRJ9I', 18),
(220, '2016-11-29 13:29:22', 'Cours MCD MLD MPD (1 Ã  9 / 19) : introduction, entitÃ©s, associations, hÃ©ritage, contraintes', 'REMARQUE IMPORTANTE : si vous Ãªtes Ã  la recherche d\'un cours sur les MCD, c\'est plutÃ´t ici :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nPrÃ©requis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour crÃ©er la base de donnÃ©es\r\nLe cours est constituÃ© de 19 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 28mn) :\r\n1-9 : introduction, entitÃ©s, associations, hÃ©ritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD', 'NZIi6b72NBk', 18),
(221, '2016-11-29 13:18:46', 'Cours MCD vs Diagramme de classes (12 Ã  20 / 20) : hÃ©ritage, contraintes, exercices', 'PrÃ©requis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constituÃ© de 20 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-11 : introduction, entitÃ©s, associations\r\n12-20 : hÃ©ritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML', '3fZo3FYVGA4', 19),
(222, '2016-11-29 13:11:53', 'Cours MCD vs Diagramme de classes (1 Ã  11 / 20) : introduction, entitÃ©s, associations', 'PrÃ©requis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constituÃ© de 20 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-11 : introduction, entitÃ©s, associations\r\n12-20 : hÃ©ritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML', 'LxpWExZwKQs', 19),
(223, '2016-11-02 15:46:24', 'Cours Transactions et verrous (14 Ã  17 / 17) : risques sur les verrous et cas d\'utilisation', 'PrÃ©requis : connaissances basiques en SQL\r\nBut : prÃ©sentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 17 diapos, dÃ©coupÃ©es en 3 vidÃ©os (durÃ©e totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problÃ¨mes d\'accÃ¨s\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', '4yW0fTIQW6k', 20);
INSERT INTO `formation` (`id`, `published_at`, `title`, `description`, `video_id`, `playlist_id`) VALUES
(224, '2016-11-02 15:42:03', 'Cours Transactions et verrous (7 Ã  13 / 17) : verrous et problÃ¨mes d\'accÃ¨s', 'PrÃ©requis : connaissances basiques en SQL\r\nBut : prÃ©sentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 17 diapos, dÃ©coupÃ©es en 3 vidÃ©os (durÃ©e totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problÃ¨mes d\'accÃ¨s\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', 'o7Yjg8Ct4Bs', 20),
(225, '2016-11-02 15:34:02', 'Cours Transactions et verrous (1 Ã  6 / 17) : transactions', 'PrÃ©requis : connaissances basiques en SQL\r\nBut : prÃ©sentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 17 diapos, dÃ©coupÃ©es en 3 vidÃ©os (durÃ©e totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problÃ¨mes d\'accÃ¨s\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', 'A6tY7ZqiyVw', 20),
(226, '2016-10-31 14:26:37', 'Cours Curseurs(5 Ã  8 / 8) : curseur historique et curseur dans le SGBDR', 'PrÃ©requis : connaissances en programmation et en SQL\r\nBut : prÃ©sentation des 3 catÃ©gories de curseurs (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 8 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs', '4H2GMEwqCjA', 21),
(227, '2016-10-31 14:11:01', 'Cours Curseurs(1 Ã  4 / 8) : introduction et curseur objet', 'PrÃ©requis : connaissances en programmation et en SQL\r\nBut : prÃ©sentation des 3 catÃ©gories de curseurs (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 8 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs', 'Y09HkNAQTKw', 21),
(228, '2016-10-29 13:23:14', 'Cours Triggers (26 Ã  32 / 32) : procÃ©dures et fonctions stockÃ©es', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', '9WgLpEa8U-0', 23),
(229, '2016-10-29 13:18:58', 'Cours Triggers (21 Ã  25 / 32) : inclusion multiple et autres exemples de triggers', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'UHV1x3MO6yQ', 23),
(230, '2016-10-29 13:12:59', 'Cours Triggers (15 Ã  20 / 32) : syntaxe du langage', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'FKmNkR--SAI', 23),
(231, '2016-10-29 13:09:47', 'Cours Triggers (10 Ã  14 / 32) : exemple trigger sur inclusion', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', '1y6rUzV-tVs', 23),
(232, '2016-10-29 13:06:10', 'Cours Triggers (5 Ã  9 / 32) : exemple trigger sur exclusion', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'im5gkHcQ5Qw', 23),
(233, '2016-10-29 13:00:46', 'Cours Triggers (1 Ã  4 / 32) : introduction', 'PrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers\r\nlien vers le pptx du cours :\r\nhttp://bit.ly/EmdsTriggersSlides', 'uDAhSKJW2ic', 23),
(234, '2016-10-27 14:03:44', 'Cours Informatique embarquÃ©e', 'PrÃ©sentation sur l\'informatique embarquÃ©e et plus prÃ©cisÃ©ment sur la programmation des smartphones et tablettes.\r\n\r\n\r\nERRATUM : Ã  2:58 je disais qu\'une application web ne peut pas accÃ©der aux fonctionnalitÃ©s spÃ©cifiques aux mobile. C\'est faux car il existe des fonctions JavaScript qui maintenant le permettent. \r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsInformatique_embarquee', 'qX3LPE9yB_I', 22),
(235, '2016-09-25 10:18:29', 'Cours UML (25 Ã  33 / 33) : exercices', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'YlcRl07eHXk', 24),
(236, '2016-09-25 10:14:03', 'Cours UML (19 Ã  24 / 33) : autres diagrammes', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', '8g31nOjPNEM', 24),
(237, '2016-09-25 10:10:06', 'Cours UML (16 Ã  18 / 33) : diagramme de sÃ©quences', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'OL2Ks4jeUZ0', 24),
(238, '2016-09-25 10:07:00', 'Cours UML (12 Ã  15 / 33) : diagramme d\'Ã©tats', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'L1x4sLVR7CI', 24),
(239, '2016-09-25 10:03:58', 'Cours UML (8 Ã  11 / 33) : diagramme de classes', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', '8PmTJIrlS5w', 24),
(240, '2016-09-25 09:59:04', 'Cours UML (1 Ã  7 / 33) : introduction et cas d\'utilisation', 'But : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML\r\n\r\n\r\nRemarque :\r\nDe nouvelles vidÃ©os sur UML :\r\nDiagramme de cas d\'utilisation : https://youtu.be/LDTDlXMV1xY', 'dJd6azZr9Kg', 24);

-- --------------------------------------------------------

--
-- Structure de la table `formation_categorie`
--

DROP TABLE IF EXISTS `formation_categorie`;
CREATE TABLE IF NOT EXISTS `formation_categorie` (
  `formation_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`formation_id`,`categorie_id`),
  KEY `IDX_830086E95200282E` (`formation_id`),
  KEY `IDX_830086E9BCF5E72D` (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation_categorie`
--

INSERT INTO `formation_categorie` (`formation_id`, `categorie_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(18, 7),
(19, 3),
(19, 7),
(20, 3),
(21, 3),
(21, 7),
(22, 3),
(22, 7),
(23, 3),
(24, 3),
(24, 7),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(29, 7),
(30, 4),
(31, 4),
(31, 7),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 6),
(45, 6),
(47, 6),
(47, 8),
(48, 7),
(51, 7),
(52, 8),
(54, 7),
(55, 8),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 6),
(76, 5),
(76, 9),
(77, 7),
(77, 9),
(78, 5),
(78, 9),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(88, 6),
(89, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(102, 6),
(103, 6),
(104, 6),
(104, 8),
(105, 6),
(105, 8),
(106, 6),
(106, 8),
(107, 6),
(107, 8),
(108, 6),
(108, 8),
(109, 6),
(110, 6),
(111, 1),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 1),
(116, 7),
(117, 1),
(117, 7),
(118, 1),
(118, 7),
(119, 1),
(119, 7),
(120, 1),
(120, 7),
(121, 1),
(121, 7),
(122, 3),
(122, 7),
(123, 3),
(123, 7),
(124, 3),
(124, 7),
(125, 3),
(125, 7),
(126, 3),
(126, 7),
(127, 3),
(127, 7),
(128, 3),
(128, 7),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(196, 3),
(197, 8),
(198, 8),
(199, 8),
(200, 8),
(201, 7),
(202, 7),
(203, 7),
(204, 7),
(205, 7),
(206, 7),
(207, 7),
(208, 7),
(209, 5),
(210, 5),
(211, 5),
(212, 5),
(213, 5),
(214, 5),
(215, 5),
(216, 5),
(217, 9),
(218, 9),
(219, 5),
(219, 9),
(220, 5),
(220, 9),
(221, 5),
(221, 9),
(222, 5),
(222, 9),
(223, 8),
(223, 9),
(224, 8),
(224, 9),
(225, 8),
(225, 9),
(226, 8),
(226, 9),
(227, 7),
(227, 8),
(227, 9),
(228, 8),
(228, 9),
(229, 8),
(229, 9),
(230, 8),
(230, 9),
(231, 8),
(231, 9),
(232, 8),
(232, 9),
(233, 8),
(233, 9),
(234, 9),
(235, 2),
(235, 9),
(236, 2),
(236, 9),
(237, 2),
(237, 9),
(238, 2),
(238, 9),
(239, 2),
(239, 9),
(240, 2),
(240, 9);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `description`) VALUES
(1, 'Eclipse et Java', 'Utilisation de l\'IDE Eclipse et dÃ©veloppement en Java.'),
(2, 'Visual Studio 2019 et C#', 'Plusieurs vidÃ©os portant sur diffÃ©rents aspects de Visual Studio :\r\nProgrammation en C# (Ã©vÃ©nementiel, objet, diverses astuces) et configuration (lien avec Github...).'),
(3, 'Programmation sous Python', 'Exercices progressifs pour apprendre Ã  programmer sous Python.'),
(4, 'Sujet E5 SLAM 2019 mÃ©tropole : cas RESTILOC', 'Correction commentÃ©e des 4 missions (1 vidÃ©o par mission)'),
(5, 'Sujet E5 SLAM 2018 NoumÃ©a : cas LOCALUX\r\n', 'Correction commentÃ©e des 3 missions (1 vidÃ©o par mission)'),
(6, 'Sujet E5 SLAM 2018 mÃ©tropole : cas WEBCAISSE', 'Correction commentÃ©e des 4 missions (1 vidÃ©o par mission)'),
(7, 'MCD : exercices progressifs', 'Exercices progressifs pour apprendre Ã  construire un MCD.\r\nPrÃ©requis : avoir au prÃ©alable Ã©tudiÃ© le cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0'),
(8, 'ComplÃ©ments Android (programmation mobile)', 'Chaque vidÃ©o est indÃ©pendante et prÃ©sente une notion spÃ©cifique.\r\nPrÃ©requis : avoir des notions de base en programmation sous Android et en programmation objet (si vous ne connaissez pas du tout Android, commencez pas suivre la playlist \"TP Android\" qui part d\'un niveau 0 et montre toutes les notions essentielles).'),
(9, 'Sujet E5 SLAM 2017 NoumÃ©a: cas DANE', 'Correction commentÃ©e des 4 missions (1 vidÃ©o par mission).'),
(10, 'Sujet E5 SLAM 2017 mÃ©tropole : cas AHM-23', 'Correction commentÃ©e des 4 missions (1 vidÃ©o par mission).'),
(11, 'TP Android (programmation mobile)\r\n', 'RÃ©aliser une application Android complÃ¨te (8h12mn)\r\n(installation et configuration d\'Android Studio, construction d\'une application MVC, construction d\'une interface, sauvegarde par sÃ©rialisation, sauvegarde dans une base locale SQLite, sauvegarde dans une base distante MySQL, multi-interfaces, listes adapters interactives)\r\n\r\nprÃ©requis : avoir des connaissances en Java et en programmation objet\r\nlangage : Java \r\nIDE : Android Studio'),
(12, 'POO TP Java', 'Ces vidÃ©os vont permettre de crÃ©er Ã©tape par Ã©tape un TP en Java sous Eclipse, pour mettre en pratique les connaissances en programmation objet (normalement acquises avec la playlist du cours \"programmation objet\").\r\nCe TP va vous permettre de mieux comprendre assez rapidement plusieurs notions importantes en objet : vous allez travailler en MVC, utiliser une classe interface, des mÃ©thodes abstraites, des notions comme le polymorphisme, etc.'),
(13, 'Bases de la programmation (C#)', 'Exemples progressifs de programmes en procÃ©dural, Ã©vÃ©nementiel et objet sous Visual Studio (version Entreprise 2017).\r\nPrÃ©requis : aucun\r\n\r\n1Ã¨re partie : programmation procÃ©durale en mode console (non graphique)\r\nnÂ°1 Ã  30 : procÃ©dural, notions Ã©lÃ©mentaires (variables, saisie/affichage, affectations/calculs, alternatives (if/switch), itÃ©rations (while/do-while/for))\r\nnÂ°31 Ã  42 : procÃ©dural, tableaux (1 et 2 dimensions, manipulations, tris, recherches)\r\nnÂ°43 Ã  59 : procÃ©dural, modules et paramÃ¨tres (procÃ©dures et fonctions)\r\n\r\n2Ã¨me partie : Ã©vÃ©nementiel (en mode graphique)\r\nnÂ°60 Ã  67 : Ã©vÃ©nementiel (programmation graphique)\r\n\r\n3Ã¨me partie : initiation Ã  l\'objet\r\nnÂ°68 Ã  74 : notions de base en programmation objet sur des classes \"mÃ©tier\"'),
(14, 'Exercices triggers, sql et correctifs (sujets EDC BTS SIO)', 'PrÃ©requis : avoir vu le cours triggers (et mcd)\r\nBut : PrÃ©senter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO'),
(15, 'Exercices objet (sujets EDC BTS SIO)', 'PrÃ©requis : avoir vu le cours (playlist) objet\r\nBut : PrÃ©senter comment traiter la partie objet d\'un sujet de BTS SIO'),
(16, 'MCD exercices d\'examen (sujets EDC BTS SIO)', 'PrÃ©requis : avoir vu les cours \"ModÃ¨le relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0\r\net le cours Merise/2\r\nhttps://youtu.be/smTFM4GCEgc\r\nBut : PrÃ©senter comment traiter la partie conception de donnÃ©es de sujets de BTS SIO'),
(17, 'Cours Composant logiciel', 'Cours Composant logiciel (26mn)\r\nPrÃ©requis : aucun\r\nBut : prÃ©senter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constituÃ© de 14 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels\r\n'),
(18, 'Cours MCD MLD MPD', 'Cours MCD MLD MPD (28mn) :\r\nPrÃ©requis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour crÃ©er la base de donnÃ©es\r\nLe cours est constituÃ© de 19 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 28mn) :\r\n1-9 : introduction, entitÃ©s, associations, hÃ©ritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD\r\n'),
(19, 'Cours MCD vs Diagramme de classes', 'Cours MCD vs Diagramme de classes (26mn) :\r\nPrÃ©requis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constituÃ© de 20 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 26mn) :\r\n1-11 : introduction, entitÃ©s, associations\r\n12-20 : hÃ©ritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML\r\n'),
(20, 'Cours Transactions et verrou', 'Cours Transactions et verrous (32mn)\r\n\r\nPrÃ©requis : connaissances basiques en SQL\r\nBut : prÃ©sentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 17 diapos, dÃ©coupÃ©es en 3 vidÃ©os (durÃ©e totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problÃ¨mes d\'accÃ¨s\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous\r\n'),
(21, 'Cours Curseurs', 'Cours Curseurs (25mn)\r\n\r\nPrÃ©requis : connaissances en programmation et en SQL\r\nBut : prÃ©sentation des 3 catÃ©gories de curseurs (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 8 diapos, dÃ©coupÃ©es en 2 vidÃ©os (durÃ©e totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs\r\n'),
(22, 'Cours Informatique embarquÃ©e', 'PrÃ©sentation rapide de l\'informatique embarquÃ©e (14mn24).\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsInformatique_embarquee'),
(23, 'Cours Triggers', 'Cours Triggers et procÃ©dures stockÃ©es (57mn)\r\n\r\nPrÃ©requis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procÃ©dures stockÃ©es (programmation dans un SGBDR)\r\nLe cours est constituÃ© de 32 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procÃ©dures et fonctions stockÃ©es\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers'),
(24, 'Cours UML', 'Cours UML (57mn)\r\nPrÃ©requis : connaissances en objet \r\nBut : notions globales du langage de modÃ©lisation UML\r\nLe cours est constituÃ© de 33 diapos, dÃ©coupÃ©es en 6 vidÃ©os (durÃ©e totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'Ã©tats\r\n16-18 : diagramme de sÃ©quences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML'),
(25, 'Cours Merise/2', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidÃ©o\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMerise2'),
(26, 'Cours ModÃ¨le relationnel et MCD', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidÃ©o (1h08)\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD'),
(27, 'Cours de programmation objet', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidÃ©o\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsObjet');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `FK_404021BF6BBD148` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);

--
-- Contraintes pour la table `formation_categorie`
--
ALTER TABLE `formation_categorie`
  ADD CONSTRAINT `FK_830086E95200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_830086E9BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
