-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Nov-2018 às 20:01
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `synopse` text NOT NULL,
  `logo` text NOT NULL,
  `background` text NOT NULL,
  `cover` text NOT NULL,
  `video` text NOT NULL,
  `year` text NOT NULL,
  `age` text NOT NULL,
  `genre1` int(11) NOT NULL,
  `genre2` int(11) NOT NULL,
  `genre3` int(11) NOT NULL,
  `genre4` int(11) NOT NULL,
  `genre5` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `url`, `name`, `synopse`, `logo`, `background`, `cover`, `video`, `year`, `age`, `genre1`, `genre2`, `genre3`, `genre4`, `genre5`, `tipo`) VALUES
(1, '928c91c35ee7f1feb15ee54f70ccde83748a84af', 'O plano imperfeito', 'Desesperados por um pouco de sossego, dois assistentes exaustos unem forças para fazer com que seus chefes workaholics se apaixonem.', '/logo.png', 'back.jpeg', 'punch.jpg', '', '2018', '2018', 3, 0, 0, 0, 0, 1),
(2, '928c91c35ee7f1feb15ee54f70ccde83748a84ad', 'One Punch Man', 'Desesperados por um pouco de sossego, dois assistentes exaustos unem forças para fazer com que seus chefes workaholics se apaixonem.', '/logo.png', 'back.jpeg', 'punch.jpg', '', '2018', '2018', 3, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8 NOT NULL,
  `ativo` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `genre`
--

INSERT INTO `genre` (`id`, `nome`, `ativo`, `status`) VALUES
(1, 'Acao', 1, 0),
(2, 'Aventura', 1, 0),
(3, 'Comedia', 1, 0),
(4, 'Animacao', 1, 0),
(5, 'Documentario', 1, 0),
(6, 'Fantasia', 1, 0),
(7, 'Faroeste Western', 1, 0),
(8, 'Ficcao cientifica', 1, 0),
(9, 'Guerra', 1, 0),
(10, 'Musicais', 1, 0),
(11, 'Romance', 1, 0),
(12, 'Suspense', 1, 0),
(13, 'Terror', 1, 0),
(14, 'Tragedia/Drama', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id`, `iduser`, `name`) VALUES
(19, 12, 'ww'),
(21, 13, 'anelise 3131'),
(22, 13, 'hrear'),
(23, 14, 'Alexandre'),
(24, 15, 'Daniel'),
(27, 16, 'm.m#8891'),
(29, 17, 'Kise'),
(31, 18, ':3'),
(32, 18, 'wow'),
(33, 18, 'haha'),
(44, 11, 'aa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `season`
--

CREATE TABLE `season` (
  `id` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `season` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `synopse` text NOT NULL,
  `logo` text NOT NULL,
  `background` text NOT NULL,
  `cover` text NOT NULL,
  `video` text NOT NULL,
  `year` text NOT NULL,
  `age` text NOT NULL,
  `genre1` int(11) NOT NULL,
  `genre2` int(11) NOT NULL,
  `genre3` int(11) NOT NULL,
  `genre4` int(11) NOT NULL,
  `genre5` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `url`, `name`, `synopse`, `logo`, `background`, `cover`, `video`, `year`, `age`, `genre1`, `genre2`, `genre3`, `genre4`, `genre5`, `tipo`) VALUES
(3, '9d90636d2ca5751ec065612e74186af06d4bb979', 'Naruto', 'Guiado pelo espírito demoníaco dentro dele, o órfão Naruto aprende a controlar seus poderes como um ninja nesta série de aventura anime.', 'Naruto_logo.svg', 'nb.jpg', 'naruto.webp', '', '2008', '2008', 1, 3, 4, 0, 0, 2),
(4, '9d90636d2ca5751ec065612e74186af06d4bb979', 'Naruto', 'Guiado pelo espírito demoníaco dentro dele, o órfão Naruto aprende a controlar seus poderes como um ninja nesta série de aventura anime.', 'Naruto_logo.svg', 'nb.jpg', 'naruto.webp', '', '2008', '2008', 1, 3, 4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cry` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `banned` int(11) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `cry`, `email`, `password`, `username`, `banned`, `admin`) VALUES
(11, 'netflix_85d9235d10cf197950d843e56b47021ff02b0cee', 'kaway@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '', 0, 0),
(12, 'netflix_70909c345cd056c3d4dcd0f5a056fb33e88aaa23', 'anelise@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', '', 0, 0),
(13, 'netflix_d87d1f989079ce85658bd55400c5545f93381bc1', 'anelisenaiara@hotmail.com', 'c3cdda1f9e5d093622cda7ca2de3cd116f6d5aa0', '', 0, 0),
(14, 'netflix_b7e64bcb49fdb3f54dcdbf4570b6fd1b22e7b97f', 'what@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '', 0, 0),
(15, 'netflix_2134d9478d2db73baa3eb632e72d5596ee6bb87d', 'danielf@gmail.com', 'f700a6934e78cd908cb5665cd84f89318bfa2d43', '', 0, 0),
(16, 'netflix_8dbcd879373fff5908917a3b2a32f896d04f26c8', 'm.m#8891@gmail.com', '8dbcd879373fff5908917a3b2a32f896d04f26c8', '', 0, 0),
(17, 'netflix_40e7e6ab9c9bc645c892c81530d4d95fd8d74b25', 'ruosena@gmail.com', '752b27f205f23c37442f8ef98ccad21fc5cc0de8', '', 0, 0),
(18, 'netflix_d846e1f6dca10e9e0a85940e1ff8ea32c752ae62', 'hello@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `idserie` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `foto` text NOT NULL,
  `season` varchar(200) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `idserie`, `nome`, `foto`, `season`, `url`) VALUES
(1, '2339dd8aa7ad185295dc30d6f3fcf209f6eacaa6', '01', '', '1', 'https://r1---sn-bg0e7n7y.googlevideo.com/videoplayback?requiressl=yes&id=3dbfcd746b2b8f21&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1531423984&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=58D1E0913B68EACAB1DA8C51204E89F39D13B82C.65F1B781C302045879232F2A151723296EDBAB4D&key=cms1&cms_redirect=yes&mip=2804:d57:1a02:ae00:e916:9093:18d3:a44&mm=30&mn=sn-bg0e7n7y&ms=nxu&mt=1529276417&mv=m&pl=40&sc=yes'),
(2, '2339dd8aa7ad185295dc30d6f3fcf209f6eacaa6', '02', '', '1', 'https://r1---sn-bg0e7n7y.googlevideo.com/videoplayback?requiressl=yes&id=3dbfcd746b2b8f21&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1531423984&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=58D1E0913B68EACAB1DA8C51204E89F39D13B82C.65F1B781C302045879232F2A151723296EDBAB4D&key=cms1&cms_redirect=yes&mip=2804:d57:1a02:ae00:e916:9093:18d3:a44&mm=30&mn=sn-bg0e7n7y&ms=nxu&mt=1529276417&mv=m&pl=40&sc=yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
