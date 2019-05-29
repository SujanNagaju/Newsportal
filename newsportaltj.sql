-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 07:22 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportaltj`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_at` timestamp NULL DEFAULT NULL,
  `status` enum('DRAFT','PENDING','PUBLISHED') COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name`, `content`, `featured_image`, `slug`, `user_id`, `created_at`, `updated_at`, `published_at`, `status`, `category_id`) VALUES
(3, 'first news article', '<p>asdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasdddddddddddddddddddddddasdasdasddddddddddddddddddddddd</p>\r\n', 'Necrophos Minimalist Dota 2.jpg', 'first-news-article', 2, '2018-02-20 19:02:28', '2018-02-21 06:54:03', '2018-02-20 19:02:24', 'DRAFT', 2),
(4, 'second news', '<p>sadasd</p>\r\n', 'thumb-1920-343610.jpg', 'second-news', 2, '2018-02-21 07:18:11', '2018-02-21 07:18:11', NULL, 'DRAFT', 3),
(5, 'Samsung Galaxy Note8 long-term review', '<p>While some phones are inspired by the &#39;less is more&#39; mantra, Samsung&#39;s Galaxy Note family has always proudly claimed that &#39;more is more&#39;. More features, more options, more settings, more ways to interact with your handset, more choice made possible by the use of the best components adding up to the biggest and baddest spec list. To paraphrase a well known cliche, a Note comes with everything and the kitchen sink.</p>\r\n\r\n<p>The Galaxy Note8 arrived on the scene last fall as the first model in the line with a screen curved on both sides, as Samsung carried over the iconic Infinity Display from its S8 duo launched earlier in 2017. It augments its distinctive design with the S Pen stylus and the Korean company&#39;s first dual rear camera setup.</p>\r\n', 'gsmarena_001.jpg', 'note8-review', 2, '2018-02-23 06:59:02', '2018-02-26 07:26:17', '2018-02-23 07:15:00', 'PUBLISHED', 2),
(6, 'Trafficking-accused Rajendra Khadgi: I didnâ€™t know it was crime', '<p>Nepali cinema industry&rsquo;s top action director Rajendra Khadgi, who has recently been accused of trafficking Nepalis to South Korea, has conceded the charge. He, however, maintains that he never knew that sending people abroad with fake assurances after taking a hefty would constitute the crime of human trafficking.</p>\r\n\r\n<p>The Central Investigation Bureau of Nepal Police, which is currently interrogating Khagdi over the charge, says he took 11 persons to Seoul faking them as his crew members. However, investigations found that he received Rs 1 million to Rs 1.5 million from each of them to acquire visa for them.</p>\r\n\r\n<p>&ldquo;Everyone was doing the same and I followed suit,&rdquo; Khagdi reportedly told police, &ldquo;I never knew it was a crime.&rdquo;</p>\r\n', 'rajednra-khadki.jpg', 'Rajendra-khadgi', 2, '2018-02-23 07:01:20', '2018-02-26 07:26:05', '2018-02-23 07:15:16', 'PUBLISHED', 1),
(7, 'Barnaby Joyce: Scandal-hit Australia deputy PM to resign', '<p>Mr Joyce said he would step down on Monday as leader of the Nationals, the junior government partner.</p>\r\n\r\n<p>He had previously resisted calls to quit amid intense scrutiny over his ministerial conduct.</p>\r\n\r\n<p>The scandal has dominated Australian headlines for more than two weeks.</p>\r\n\r\n<p>He described his decision on Friday as a &quot;circuit-breaker&quot; for his family and new partner.</p>\r\n\r\n<p>&quot;This current cacophony of issues has to be put aside,&quot; he told reporters.</p>\r\n\r\n<p>Prime Minister Malcolm Turnbull issued a statement shortly after thanking Mr Joyce for being a &quot;a fierce advocate for rural and regional Australia&quot;.</p>\r\n', '_100146660_mediaitem100146658.jpg', 'scandal-australia', 2, '2018-02-23 07:02:34', '2018-02-26 07:25:50', '2018-02-23 07:15:32', 'PUBLISHED', 6),
(8, 'Gap between interest rates for saving and fixed deposit accounts at historic low in Nepal', '<p>The average gap between interest rates imposed by banks for saving accounts and fixed deposit accounts has reached the historic low in Nepal. The central bank of the country, therefore, says its years-long efforts have now materialised.</p>\r\n\r\n<p>All commercial banks have given 11 per cent interest for people depositing money in fixed deposit accounts. Earlier, Nepal Bankers Association, consisting of operators of commercial banks, had decided that the interest rate for fixed deposits be restricted to 11 per cent. Since then, the banks have been increasing interest rate for saving account regularly.</p>\r\n\r\n<p>&ldquo;It is our success. We were stating that there was a huge gap between interest rates for two accounts,&rdquo; says Nepal Rastra Bank Executive Director Nar Bahadudr Thapa.</p>\r\n\r\n<p>Just around a year ago, the average interest rate for saving account was 2-3 per cent whereas the one for fixed deposits was 9-10 per cent.</p>\r\n\r\n<p>The central bank had argued that the huge gap between two interest rates would give profits to the rich only.</p>\r\n', 'interest-rate.jpg', 'interest-rates', 2, '2018-02-23 07:04:58', '2018-02-26 07:29:30', '2018-02-22 11:15:51', 'PUBLISHED', 3),
(23, 'Test Post c', 'Demo', NULL, 'test-post-c', 2, '2018-05-02 05:56:46', '2018-05-02 05:56:46', '2018-05-02 05:56:46', 'PUBLISHED', 4),
(24, 'Test Post B', 'Demo', NULL, 'test-post-B', 2, '2018-05-01 04:52:35', '2018-05-01 04:52:35', '2018-05-01 04:52:35', 'PUBLISHED', 4),
(25, 'Coffee', '<p><span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span> <span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span> <span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span> <span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span> <span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span> <span style=\"background-color:#ffffff; color:#222222; font-family:arial,sans-serif; font-size:small\">Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa and Madagascar, the Comoros, Mauritius, and R&eacute;union in the Indian Ocean</span></p>\r\n', 'logo.jpg', 'coffee', 37, '2018-05-07 13:49:23', '2018-05-07 13:49:49', '2018-05-07 13:49:49', 'PUBLISHED', 1),
(26, 'Test article', '<p>This is a test article for test purpose only</p>\r\n', 'story.PNG', 'test-article', 42, '2019-05-01 01:24:04', '2019-05-01 01:25:19', '2019-05-01 01:25:19', 'PUBLISHED', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('INACTIVE','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National', 'national', 'ACTIVE', '2018-02-16 07:45:59', '2018-02-16 07:45:59'),
(2, 'Entertainment', 'entertainment', 'ACTIVE', '2018-02-16 07:48:34', '2018-02-16 07:48:34'),
(3, 'Economy', 'economy', 'ACTIVE', '2018-02-16 07:48:52', '2018-02-16 07:48:52'),
(4, 'Sports', 'Sports', 'ACTIVE', '2018-02-16 07:49:04', '2018-02-19 06:58:22'),
(6, 'International', 'International', 'INACTIVE', '2018-02-16 08:04:13', '2018-03-04 13:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('INACTIVE','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `full_name`, `email`, `comment`, `status`, `article_id`, `created_at`) VALUES
(2, 'shady', 'shady@gmail.com', 'jk comment', 'ACTIVE', 7, '2018-02-26 19:42:25'),
(3, 'sujan', 'nagajus@gmail.com', 'good', 'ACTIVE', 8, '2018-02-27 12:28:27'),
(4, 'anish', 'anish@bhaila.com', 'bad', 'ACTIVE', 25, '2018-05-07 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `comment_id`, `description`, `created_at`) VALUES
(1, 3, 'offensive', '2018-02-27 12:34:48'),
(2, 4, 'this is bad ', '2018-05-07 19:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('ADMIN','AUTHOR') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `username`, `password`, `contact`, `address`, `status`, `created_at`, `updated_at`, `type`) VALUES
(2, 'tshitiz', '', 'rajkarnikar', 'tshitij@email.com', 'shady', '', '123', 'lagankhel', 'ACTIVE', '0000-00-00 00:00:00', '2018-02-18 07:24:48', 'AUTHOR'),
(4, 'prakash', '', 'timalsina', 'prakash@gmail.com', 'prakash', '', '98953264', '  gausala ', 'ACTIVE', '2018-02-09 14:29:06', '2018-02-20 08:16:34', 'AUTHOR'),
(34, 'sandesh', NULL, 'dhungel', 'sandesh@dhungel.com', 'sandesh', '', '1111', '1111', 'INACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ADMIN'),
(36, 'eeeeee', '', 'e', 'ee@e.e', 'e', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'e', 'e', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'ADMIN'),
(37, 'anish ', '', 'bhaila', 'anish@bhaila.com', 'anish', '6c150f28a67bd7084899fc5ec19a5f87459dd653', '123123', 'BKT', 'ACTIVE', '2018-05-07 13:47:20', '2018-05-07 13:47:20', 'AUTHOR'),
(38, 'sujan', '', 'nagaju', 'nagajus@gmail.com', 'sujan', 'd0be2dc421be4fcd0172e5afceea3970e2f3d940', '1111111111', 'BKT', 'ACTIVE', '2018-05-08 04:39:08', '2019-05-01 01:21:15', 'ADMIN'),
(40, 'sujan', '', 'naga', 'sujan.nagaju@gmail.com', 'sujan', 'c7df0cddfdd89c96014e28615137205bd3511631', '444444', 'BKT', 'ACTIVE', '2018-05-08 04:41:21', '2018-05-08 04:41:21', 'ADMIN'),
(41, 'apple', '', 'bakl', 'ball@apple.com', 'apple', 'ball', '1111', 'appleball', 'ACTIVE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'AUTHOR'),
(42, 'admin', 'admin', 'admin', 'admin@admin.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', 'ACTIVE', '2019-05-01 01:20:10', '2019-05-01 01:21:55', 'AUTHOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
