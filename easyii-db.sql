-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2016 at 12:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `easyii_admins`
--

CREATE TABLE `easyii_admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_admins`
--

INSERT INTO `easyii_admins` (`admin_id`, `username`, `password`, `auth_key`, `access_token`) VALUES
(1, 'admin', '763c0ce191e1833673a015d31086984abd9abca8', 'Q8kcG6FIvcT13pzcWzQd3rg7bAJL7MF9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_article_categories`
--

CREATE TABLE `easyii_article_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_article_categories`
--

INSERT INTO `easyii_article_categories` (`category_id`, `title`, `image`, `order_num`, `slug`, `tree`, `lft`, `rgt`, `depth`, `status`) VALUES
(1, 'Articles category 1', NULL, 2, 'articles-category-1', 1, 1, 2, 0, 1),
(2, 'Articles category 2', NULL, 1, 'articles-category-2', 2, 1, 6, 0, 1),
(3, 'Subcategory 1', NULL, 1, 'subcategory-1', 2, 2, 3, 1, 1),
(4, 'Subcategory 1', NULL, 1, 'subcategory-1-2', 2, 4, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_article_items`
--

CREATE TABLE `easyii_article_items` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_article_items`
--

INSERT INTO `easyii_article_items` (`item_id`, `category_id`, `title`, `image`, `short`, `text`, `slug`, `time`, `views`, `status`) VALUES
(1, 1, 'First article title', '/uploads/article/article-1.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<h2><strong>Hello World<br></strong></h2><p><strong><br></strong></p><p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><p><img src="/uploads/article/5270180085b86688871bn-136c2f0599.jpg" style="width: 317px;"></p><p><img src="/uploads/article/phk2916-640x427-d88518acbc.jpg" style="width: 345px;"></p><ul>\r\n<li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>', 'first-article-title', 1480224085, 4, 1),
(2, 1, 'Second article title', '/uploads/article/article-2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>', 'second-article-title', 1480137685, 1, 1),
(3, 1, 'Third article title', '/uploads/article/article-3.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'third-article-title', 1480051285, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_carousel`
--

CREATE TABLE `easyii_carousel` (
  `carousel_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_carousel`
--

INSERT INTO `easyii_carousel` (`carousel_id`, `image`, `link`, `title`, `text`, `order_num`, `status`) VALUES
(1, '/uploads/carousel/1.jpg', '', 'Ut enim ad minim veniam, quis nostrud exercitation', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', 1, 1),
(2, '/uploads/carousel/2.jpg', '', 'Sed do eiusmod tempor incididunt ut labore et', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 2, 1),
(3, '/uploads/carousel/3.jpg', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_catalog_categories`
--

CREATE TABLE `easyii_catalog_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `fields` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_catalog_categories`
--

INSERT INTO `easyii_catalog_categories` (`category_id`, `title`, `image`, `fields`, `slug`, `tree`, `lft`, `rgt`, `depth`, `order_num`, `status`) VALUES
(1, 'Gadgets', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'gadgets', 1, 1, 6, 0, NULL, 1),
(2, 'Smartphones', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'smartphones', 1, 2, 3, 1, NULL, 1),
(3, 'Tablets', NULL, '[{"name":"brand","title":"Brand","type":"select","options":["Samsung","Apple","Nokia"]},{"name":"storage","title":"Storage","type":"string","options":""},{"name":"touchscreen","title":"Touchscreen","type":"boolean","options":""},{"name":"cpu","title":"CPU cores","type":"select","options":["1","2","4","8"]},{"name":"features","title":"Features","type":"checkbox","options":["Wi-fi","4G","GPS"]},{"name":"color","title":"Color","type":"checkbox","options":["White","Black","Red","Blue"]}]', 'tablets', 1, 4, 5, 1, NULL, 1),
(4, 'Jewellery', '/uploads/catalog/diamondring-d787f83a93.jpg', '[{"name":"tags","title":"Tags","type":"string","options":""}]', 'jewellery', 4, 1, 2, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_catalog_items`
--

CREATE TABLE `easyii_catalog_items` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `description` text,
  `available` int(11) DEFAULT '1',
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `data` text NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_catalog_items`
--

INSERT INTO `easyii_catalog_items` (`item_id`, `category_id`, `title`, `description`, `available`, `price`, `discount`, `data`, `image`, `slug`, `time`, `status`) VALUES
(1, 2, 'Nokia 3310', '<h3>The legend</h3><p>The Nokia 3310 is a GSMmobile phone announced on September 1, 2000, and released in the fourth quarter of the year, replacing the popular Nokia 3210. The phone sold extremely well, being one of the most successful phones with 126 million units sold worldwide.&nbsp;The phone has since received a cult status and is still widely acclaimed today.</p><p>The 3310 was developed at the Copenhagen Nokia site in Denmark. It is a compact and sturdy phone featuring an 84 × 48 pixel pure monochrome display. It has a lighter 115 g battery variant which has fewer features; for example the 133 g battery version has the start-up image of two hands touching while the 115 g version does not. It is a slightly rounded rectangular unit that is typically held in the palm of a hand, with the buttons operated with the thumb. The blue button is the main button for selecting options, with "C" button as a "back" or "undo" button. Up and down buttons are used for navigation purposes. The on/off/profile button is a stiff black button located on the top of the phone.</p>', 5, 100, 0, '{"brand":"Nokia","storage":"1","touchscreen":"0","cpu":"1","color":["White","Red","Blue"]}', '/uploads/catalog/3310.jpg', 'nokia-3310', 1478756878, 1),
(2, 2, 'Galaxy S6', '<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1" QHD Super AMOLED smartphones are certainly no lightweights.</p>', 1, 1000, 10, '{"brand":"Samsung","storage":"32","touchscreen":"1","cpu":8,"features":["Wi-fi","GPS"]}', '/uploads/catalog/galaxy.jpg', 'galaxy-s6', 1480137684, 1),
(3, 2, 'Iphone 6', '<h3>Next is beautifully crafted</h3><p>With their slim, seamless, full metal and glass construction, the sleek, ultra thin edged Galaxy S6 and unique, dual curved Galaxy S6 edge are crafted from the finest materials.</p><p>And while they may be the thinnest smartphones we`ve ever created, when it comes to cutting-edge technology and flagship Galaxy experience, these 5.1" QHD Super AMOLED smartphones are certainly no lightweights.</p>', 0, 1100, 10, '{"brand":"Apple","storage":"64","touchscreen":"1","cpu":4,"features":["Wi-fi","4G","GPS"]}', '/uploads/catalog/iphone.jpg', 'iphone-6', 1480051284, 1),
(4, 3, 'Apple', '', NULL, NULL, NULL, '{"brand":"Apple","storage":"Some storage","touchscreen":"0","cpu":""}', '', 'apple', 1480260667, 1),
(5, 4, '​  Twisted - 18K White Gold', '<br><p>Twisted - Designer collection couple wedding band. Crafted in perfection.</p><p><strong>30 day returns, engraving &amp; free re-sizing</strong> included.</p>', 1, 950, NULL, '{"tags":"diamond "}', '/uploads/catalog/diamondring1-2e945b99f2.jpg', 'twisted-18k-white-gold', 1480317692, 1),
(6, 4, 'gold-chain', '<p>some gold chain</p>', 1, 500, NULL, '{"tags":"gold"}', '/uploads/catalog/goldchain-4ec31eeaba.jpeg', 'gold-chain', 1480319700, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_catalog_item_data`
--

CREATE TABLE `easyii_catalog_item_data` (
  `data_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `value` varchar(1024) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_catalog_item_data`
--

INSERT INTO `easyii_catalog_item_data` (`data_id`, `item_id`, `name`, `value`) VALUES
(25, 1, 'color', 'White'),
(24, 1, 'cpu', '1'),
(23, 1, 'touchscreen', '0'),
(22, 1, 'storage', '1'),
(21, 1, 'brand', 'Nokia'),
(8, 2, 'brand', 'Samsung'),
(9, 2, 'storage', '32'),
(10, 2, 'touchscreen', '1'),
(11, 2, 'cpu', '8'),
(12, 2, 'features', 'Wi-fi'),
(13, 2, 'features', 'GPS'),
(14, 3, 'brand', 'Apple'),
(15, 3, 'storage', '64'),
(16, 3, 'touchscreen', '1'),
(17, 3, 'cpu', '4'),
(18, 3, 'features', 'Wi-fi'),
(19, 3, 'features', '4G'),
(20, 3, 'features', 'GPS'),
(26, 1, 'color', 'Red'),
(27, 1, 'color', 'Blue'),
(28, 4, 'brand', 'Apple'),
(29, 4, 'storage', 'Some storage'),
(30, 4, 'touchscreen', '0'),
(31, 4, 'cpu', ''),
(32, 5, 'tags', 'diamond '),
(33, 6, 'tags', 'gold');

-- --------------------------------------------------------

--
-- Table structure for table `easyii_faq`
--

CREATE TABLE `easyii_faq` (
  `faq_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_faq`
--

INSERT INTO `easyii_faq` (`faq_id`, `question`, `answer`, `order_num`, `status`) VALUES
(1, 'Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it?', 'But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure', 1, 1),
(2, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta <a href="http://easyiicms.com/">sunt explicabo</a>.', 2, 1),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 't enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_feedback`
--

CREATE TABLE `easyii_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer_subject` varchar(128) DEFAULT NULL,
  `answer_text` text,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `easyii_files`
--

CREATE TABLE `easyii_files` (
  `file_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `file` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_files`
--

INSERT INTO `easyii_files` (`file_id`, `title`, `file`, `size`, `slug`, `downloads`, `time`, `order_num`) VALUES
(1, 'Price list', '/uploads/files/example.csv', 104, 'price-list', 0, 1480224085, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_gallery_categories`
--

CREATE TABLE `easyii_gallery_categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `tree` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_gallery_categories`
--

INSERT INTO `easyii_gallery_categories` (`category_id`, `title`, `image`, `slug`, `tree`, `lft`, `rgt`, `depth`, `order_num`, `status`) VALUES
(1, 'Album 1', '/uploads/gallery/album-1.jpg', 'album-1', 1, 1, 2, 0, 2, 1),
(2, 'Album 2', '/uploads/gallery/album-2.jpg', 'album-2', 2, 1, 2, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_guestbook`
--

CREATE TABLE `easyii_guestbook` (
  `guestbook_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `answer` text,
  `email` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `ip` varchar(16) NOT NULL,
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_guestbook`
--

INSERT INTO `easyii_guestbook` (`guestbook_id`, `name`, `title`, `text`, `answer`, `email`, `time`, `ip`, `new`, `status`) VALUES
(1, 'First user', '', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL, 1480224085, '127.0.0.1', 1, 1),
(2, 'Second user', '', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', NULL, 1480224085, '127.0.0.1', 0, 1),
(3, 'Third user', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, 1480224085, '127.0.0.1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_loginform`
--

CREATE TABLE `easyii_loginform` (
  `log_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `user_agent` varchar(1024) NOT NULL,
  `time` int(11) DEFAULT '0',
  `success` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_loginform`
--

INSERT INTO `easyii_loginform` (`log_id`, `username`, `password`, `ip`, `user_agent`, `time`, `success`) VALUES
(1, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480224084, 1),
(2, 'admin', 'password', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480224784, 0),
(3, 'auzadventure@gmail.com', 'password', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480224798, 0),
(4, 'admin', 'password', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480224807, 0),
(5, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480224817, 1),
(6, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480225589, 1),
(7, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480226465, 1),
(8, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480317462, 1),
(9, 'root', 'passwaord', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480433683, 0),
(10, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480433688, 1),
(11, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480682124, 1),
(12, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1480928009, 1),
(13, 'root', '******', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', 1481456311, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_migration`
--

CREATE TABLE `easyii_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `easyii_migration`
--

INSERT INTO `easyii_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1480224082),
('m000000_000000_install', 1480224083);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_modules`
--

CREATE TABLE `easyii_modules` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `class` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `icon` varchar(32) NOT NULL,
  `settings` text NOT NULL,
  `notice` int(11) DEFAULT '0',
  `order_num` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_modules`
--

INSERT INTO `easyii_modules` (`module_id`, `name`, `class`, `title`, `icon`, `settings`, `notice`, `order_num`, `status`) VALUES
(1, 'article', 'yii\\easyii\\modules\\article\\ArticleModule', 'Articles', 'pencil', '{"categoryThumb":true,"articleThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":255,"enableTags":true,"itemsInFolder":false}', 0, 120, 1),
(2, 'carousel', 'yii\\easyii\\modules\\carousel\\CarouselModule', 'Carousel', 'picture', '{"enableTitle":true,"enableText":true}', 0, 40, 1),
(3, 'catalog', 'yii\\easyii\\modules\\catalog\\CatalogModule', 'Catalog', 'list-alt', '{"categoryThumb":true,"itemsInFolder":false,"itemThumb":true,"itemPhotos":true,"itemDescription":true,"itemSale":true}', 0, 90, 1),
(4, 'faq', 'yii\\easyii\\modules\\faq\\FaqModule', 'FAQ', 'question-sign', '[]', 0, 45, 0),
(5, 'feedback', 'yii\\easyii\\modules\\feedback\\FeedbackModule', 'Feedback', 'earphone', '{"mailAdminOnNewFeedback":true,"subjectOnNewFeedback":"New feedback","templateOnNewFeedback":"@easyii\\/modules\\/feedback\\/mail\\/en\\/new_feedback","answerTemplate":"@easyii\\/modules\\/feedback\\/mail\\/en\\/answer","answerSubject":"Answer on your feedback message","answerHeader":"Hello,","answerFooter":"Best regards.","enableTitle":false,"enablePhone":true,"enableCaptcha":false}', 0, 60, 0),
(6, 'file', 'yii\\easyii\\modules\\file\\FileModule', 'Files', 'floppy-disk', '[]', 0, 30, 0),
(7, 'gallery', 'yii\\easyii\\modules\\gallery\\GalleryModule', 'Photo Gallery', 'camera', '{"categoryThumb":true,"itemsInFolder":false}', 0, 70, 1),
(8, 'guestbook', 'yii\\easyii\\modules\\guestbook\\GuestbookModule', 'Guestbook', 'book', '{"enableTitle":false,"enableEmail":true,"preModerate":false,"enableCaptcha":false,"mailAdminOnNewPost":true,"subjectOnNewPost":"New message in the guestbook.","templateOnNewPost":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/new_post","frontendGuestbookRoute":"\\/guestbook","subjectNotifyUser":"Your post in the guestbook answered","templateNotifyUser":"@easyii\\/modules\\/guestbook\\/mail\\/en\\/notify_user"}', 2, 65, 0),
(9, 'news', 'yii\\easyii\\modules\\news\\NewsModule', 'News', 'bullhorn', '{"enableThumb":true,"enablePhotos":true,"enableShort":true,"shortMaxLength":256,"enableTags":true}', 0, 100, 1),
(10, 'page', 'yii\\easyii\\modules\\page\\PageModule', 'Pages', 'file', '[]', 0, 50, 1),
(11, 'shopcart', 'yii\\easyii\\modules\\shopcart\\ShopcartModule', 'Orders', 'shopping-cart', '{"mailAdminOnNewOrder":true,"subjectOnNewOrder":"New order","templateOnNewOrder":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/new_order","subjectNotifyUser":"Your order status changed","templateNotifyUser":"@easyii\\/modules\\/shopcart\\/mail\\/en\\/notify_user","frontendShopcartRoute":"\\/shopcart\\/order","enablePhone":true,"enableEmail":true}', 0, 80, 0),
(12, 'subscribe', 'yii\\easyii\\modules\\subscribe\\SubscribeModule', 'E-mail subscribe', 'envelope', '[]', 0, 10, 1),
(13, 'text', 'yii\\easyii\\modules\\text\\TextModule', 'Text blocks', 'font', '[]', 0, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_news`
--

CREATE TABLE `easyii_news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `short` varchar(1024) DEFAULT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `time` int(11) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_news`
--

INSERT INTO `easyii_news` (`news_id`, `title`, `image`, `short`, `text`, `slug`, `time`, `views`, `status`) VALUES
(1, 'First news title', '/uploads/news/news-1.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p><strong>Sed ut perspiciatis</strong>, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</p><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul><p>ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?</p>', 'first-news-title', 1480224084, 1, 1),
(2, 'Second news title', '/uploads/news/news-2.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><ol> <li>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </li><li>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</li></ol>', 'second-news-title', 1480137684, 0, 1),
(3, 'Third news title', '/uploads/news/news-3.jpg', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'third-news-title', 1480051284, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_pages`
--

CREATE TABLE `easyii_pages` (
  `page_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_pages`
--

INSERT INTO `easyii_pages` (`page_id`, `title`, `text`, `slug`) VALUES
(1, 'Index', '<p><strong>All elements are live-editable, switch on Live Edit button to see this feature.</strong>&nbsp;</p><p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>This is about the home page</p>', 'page-index'),
(2, 'Shop', '', 'page-shop'),
(3, 'Shop search', '', 'page-shop-search'),
(5, 'Order created', '<p>Your order successfully created. Our manager will contact you as soon as possible.</p>', 'page-shopcart-success'),
(6, 'News', '', 'page-news'),
(7, 'Articles', '', 'page-articles'),
(8, 'Gallery', '', 'page-gallery'),
(9, 'Guestbook', '', 'page-guestbook'),
(10, 'FAQ', '', 'page-faq'),
(11, 'Contact', '<p><strong>Address</strong>: Dominican republic, Santo Domingo, Some street 123</p><p><strong>ZIP</strong>: 123456</p><p><strong>Phone</strong>: +1 234 56-78</p><p><strong>E-mail</strong>: demo@example.com</p>', 'page-contact');

-- --------------------------------------------------------

--
-- Table structure for table `easyii_photos`
--

CREATE TABLE `easyii_photos` (
  `photo_id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `order_num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_photos`
--

INSERT INTO `easyii_photos` (`photo_id`, `class`, `item_id`, `image`, `description`, `order_num`) VALUES
(1, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, '/uploads/photos/3310-1.jpg', '', 1),
(2, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, '/uploads/photos/3310-2.jpg', '', 2),
(3, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-1.jpg', '', 3),
(4, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-2.jpg', '', 4),
(5, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-3.jpg', '', 5),
(6, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, '/uploads/photos/galaxy-4.jpg', '', 6),
(7, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-1.jpg', '', 7),
(8, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-2.jpg', '', 8),
(9, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-3.jpg', '', 9),
(10, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, '/uploads/photos/iphone-4.jpg', '', 10),
(11, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-1.jpg', '', 11),
(12, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-2.jpg', '', 12),
(13, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-3.jpg', '', 13),
(14, 'yii\\easyii\\modules\\news\\models\\News', 1, '/uploads/photos/news-1-4.jpg', '', 14),
(15, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-1.jpg', '', 15),
(16, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-2.jpg', '', 16),
(17, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/article-1-3.jpg', '', 17),
(18, 'yii\\easyii\\modules\\article\\models\\Item', 1, '/uploads/photos/news-1-4.jpg', '', 18),
(19, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-9.jpg', '', 19),
(20, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-8.jpg', '', 20),
(21, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-7.jpg', '', 21),
(22, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-6.jpg', '', 22),
(23, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-5.jpg', '', 23),
(24, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-4.jpg', '', 24),
(25, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-3.jpg', '', 25),
(26, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-2.jpg', '', 26),
(27, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, '/uploads/photos/album-1-1.jpg', '', 27),
(28, 'yii\\easyii\\modules\\catalog\\models\\Item', 6, '/uploads/photos/goldjewellery-654dd74cfe.jpg', 'Back Ring', 28),
(29, 'yii\\easyii\\modules\\catalog\\models\\Item', 6, '/uploads/photos/goldchain-81b6bf4e48.jpeg', 'Main Image', 29);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_seotext`
--

CREATE TABLE `easyii_seotext` (
  `seotext_id` int(11) NOT NULL,
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `h1` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_seotext`
--

INSERT INTO `easyii_seotext` (`seotext_id`, `class`, `item_id`, `h1`, `title`, `keywords`, `description`) VALUES
(1, 'yii\\easyii\\modules\\page\\models\\Page', 1, '', 'EasyiiCMS demo', '', 'yii2, easyii, admin'),
(2, 'yii\\easyii\\modules\\page\\models\\Page', 2, 'Shop categories', 'Extended shop title', '', ''),
(3, 'yii\\easyii\\modules\\page\\models\\Page', 3, 'Shop search results', 'Extended shop search title', '', ''),
(5, 'yii\\easyii\\modules\\page\\models\\Page', 5, 'Success', 'Extended order success title', '', ''),
(6, 'yii\\easyii\\modules\\page\\models\\Page', 6, 'News H1', 'Extended news title', '', ''),
(7, 'yii\\easyii\\modules\\page\\models\\Page', 7, 'Articles H1', 'Extended articles title', '', ''),
(8, 'yii\\easyii\\modules\\page\\models\\Page', 8, 'Photo gallery', 'Extended gallery title', '', ''),
(9, 'yii\\easyii\\modules\\page\\models\\Page', 9, 'Guestbook H1', 'Extended guestbook title', '', ''),
(10, 'yii\\easyii\\modules\\page\\models\\Page', 10, 'Frequently Asked Question', 'Extended faq title', '', ''),
(11, 'yii\\easyii\\modules\\page\\models\\Page', 11, 'Contact us', 'Extended contact title', '', ''),
(12, 'yii\\easyii\\modules\\catalog\\models\\Category', 2, 'Smartphones H1', 'Extended smartphones title', '', ''),
(13, 'yii\\easyii\\modules\\catalog\\models\\Category', 3, 'Tablets H1', 'Extended tablets title', '', ''),
(14, 'yii\\easyii\\modules\\catalog\\models\\Item', 1, 'Nokia 3310', '', '', ''),
(15, 'yii\\easyii\\modules\\catalog\\models\\Item', 2, 'Samsung Galaxy S6', '', '', ''),
(16, 'yii\\easyii\\modules\\catalog\\models\\Item', 3, 'Apple Iphone 6', '', '', ''),
(17, 'yii\\easyii\\modules\\news\\models\\News', 1, 'First news H1', '', '', ''),
(18, 'yii\\easyii\\modules\\news\\models\\News', 2, 'Second news H1', '', '', ''),
(19, 'yii\\easyii\\modules\\news\\models\\News', 3, 'Third news H1', '', '', ''),
(20, 'yii\\easyii\\modules\\article\\models\\Category', 1, 'Articles category 1 H1', 'Extended category 1 title', '', ''),
(21, 'yii\\easyii\\modules\\article\\models\\Category', 3, 'Subcategory 1 H1', 'Extended subcategory 1 title', '', ''),
(22, 'yii\\easyii\\modules\\article\\models\\Category', 4, 'Subcategory 2 H1', 'Extended subcategory 2 title', '', ''),
(23, 'yii\\easyii\\modules\\article\\models\\Item', 1, 'First article H1', '', '', ''),
(24, 'yii\\easyii\\modules\\article\\models\\Item', 2, 'Second article H1', '', '', ''),
(25, 'yii\\easyii\\modules\\article\\models\\Item', 3, 'Third article H1', '', '', ''),
(26, 'yii\\easyii\\modules\\gallery\\models\\Category', 1, 'Album 1 H1', 'Extended Album 1 title', '', ''),
(27, 'yii\\easyii\\modules\\gallery\\models\\Category', 2, 'Album 2 H1', 'Extended Album 2 title', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `easyii_settings`
--

CREATE TABLE `easyii_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `visibility` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_settings`
--

INSERT INTO `easyii_settings` (`setting_id`, `name`, `title`, `value`, `visibility`) VALUES
(1, 'easyii_version', 'EasyiiCMS version', '0.9', 0),
(2, 'recaptcha_key', 'ReCaptcha key', '', 1),
(3, 'password_salt', 'Password salt', '2HbN9TdkOQn5jEuOxg5vxmksLGNE80b5', 0),
(4, 'root_auth_key', 'Root authorization key', 'oiFR5zMRX2rF11SujweC7SYlYrTnV78o', 0),
(5, 'root_password', 'Root password', '3e7bd3d615f0bb8269508a08ec802d82d2329e6d', 1),
(6, 'auth_time', 'Auth time', '86400', 1),
(7, 'robot_email', 'Robot E-mail', 'admin@example.net', 1),
(8, 'admin_email', 'Admin E-mail', 'admin@example.net', 2),
(9, 'recaptcha_secret', 'ReCaptcha secret', '', 1),
(10, 'toolbar_position', 'Frontend toolbar position ("top" or "bottom")', 'top', 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_shopcart_goods`
--

CREATE TABLE `easyii_shopcart_goods` (
  `good_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `options` varchar(255) NOT NULL,
  `price` float DEFAULT '0',
  `discount` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `easyii_shopcart_orders`
--

CREATE TABLE `easyii_shopcart_orders` (
  `order_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  `remark` varchar(1024) NOT NULL,
  `access_token` varchar(32) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `easyii_subscribe_history`
--

CREATE TABLE `easyii_subscribe_history` (
  `history_id` int(11) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `sent` int(11) DEFAULT '0',
  `time` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `easyii_subscribe_subscribers`
--

CREATE TABLE `easyii_subscribe_subscribers` (
  `subscriber_id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `time` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_subscribe_subscribers`
--

INSERT INTO `easyii_subscribe_subscribers` (`subscriber_id`, `email`, `ip`, `time`) VALUES
(1, 'lionel@wesvault.com', '127.0.0.1', 1480697378);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_tags`
--

CREATE TABLE `easyii_tags` (
  `tag_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_tags`
--

INSERT INTO `easyii_tags` (`tag_id`, `name`, `frequency`) VALUES
(1, 'php', 2),
(2, 'yii2', 3),
(3, 'jquery', 3),
(4, 'html', 1),
(13, 'bootstrap', 1),
(12, 'css', 1),
(7, 'ajax', 1);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_tags_assign`
--

CREATE TABLE `easyii_tags_assign` (
  `class` varchar(128) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_tags_assign`
--

INSERT INTO `easyii_tags_assign` (`class`, `item_id`, `tag_id`) VALUES
('yii\\easyii\\modules\\news\\models\\News', 1, 1),
('yii\\easyii\\modules\\news\\models\\News', 1, 2),
('yii\\easyii\\modules\\news\\models\\News', 1, 3),
('yii\\easyii\\modules\\news\\models\\News', 2, 2),
('yii\\easyii\\modules\\news\\models\\News', 2, 3),
('yii\\easyii\\modules\\news\\models\\News', 2, 4),
('yii\\easyii\\modules\\article\\models\\Item', 1, 13),
('yii\\easyii\\modules\\article\\models\\Item', 1, 12),
('yii\\easyii\\modules\\article\\models\\Item', 1, 1),
('yii\\easyii\\modules\\article\\models\\Item', 2, 2),
('yii\\easyii\\modules\\article\\models\\Item', 2, 3),
('yii\\easyii\\modules\\article\\models\\Item', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `easyii_texts`
--

CREATE TABLE `easyii_texts` (
  `text_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `slug` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `easyii_texts`
--

INSERT INTO `easyii_texts` (`text_id`, `text`, `slug`) VALUES
(1, 'Welcome on EasyiiCMS demo website', 'index-welcome-title'),
(2, 'This is the latest Text Update Today', 'home-text-top');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `easyii_admins`
--
ALTER TABLE `easyii_admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `access_token` (`access_token`);

--
-- Indexes for table `easyii_article_categories`
--
ALTER TABLE `easyii_article_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_article_items`
--
ALTER TABLE `easyii_article_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_carousel`
--
ALTER TABLE `easyii_carousel`
  ADD PRIMARY KEY (`carousel_id`);

--
-- Indexes for table `easyii_catalog_categories`
--
ALTER TABLE `easyii_catalog_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_catalog_items`
--
ALTER TABLE `easyii_catalog_items`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_catalog_item_data`
--
ALTER TABLE `easyii_catalog_item_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `item_id_name` (`item_id`,`name`),
  ADD KEY `value` (`value`(300));

--
-- Indexes for table `easyii_faq`
--
ALTER TABLE `easyii_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `easyii_feedback`
--
ALTER TABLE `easyii_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `easyii_files`
--
ALTER TABLE `easyii_files`
  ADD PRIMARY KEY (`file_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_gallery_categories`
--
ALTER TABLE `easyii_gallery_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_guestbook`
--
ALTER TABLE `easyii_guestbook`
  ADD PRIMARY KEY (`guestbook_id`);

--
-- Indexes for table `easyii_loginform`
--
ALTER TABLE `easyii_loginform`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `easyii_migration`
--
ALTER TABLE `easyii_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `easyii_modules`
--
ALTER TABLE `easyii_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `easyii_news`
--
ALTER TABLE `easyii_news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_pages`
--
ALTER TABLE `easyii_pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `easyii_photos`
--
ALTER TABLE `easyii_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `model_item` (`class`,`item_id`);

--
-- Indexes for table `easyii_seotext`
--
ALTER TABLE `easyii_seotext`
  ADD PRIMARY KEY (`seotext_id`),
  ADD UNIQUE KEY `model_item` (`class`,`item_id`);

--
-- Indexes for table `easyii_settings`
--
ALTER TABLE `easyii_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `easyii_shopcart_goods`
--
ALTER TABLE `easyii_shopcart_goods`
  ADD PRIMARY KEY (`good_id`);

--
-- Indexes for table `easyii_shopcart_orders`
--
ALTER TABLE `easyii_shopcart_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `easyii_subscribe_history`
--
ALTER TABLE `easyii_subscribe_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `easyii_subscribe_subscribers`
--
ALTER TABLE `easyii_subscribe_subscribers`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `easyii_tags`
--
ALTER TABLE `easyii_tags`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `easyii_tags_assign`
--
ALTER TABLE `easyii_tags_assign`
  ADD KEY `class` (`class`),
  ADD KEY `item_tag` (`item_id`,`tag_id`);

--
-- Indexes for table `easyii_texts`
--
ALTER TABLE `easyii_texts`
  ADD PRIMARY KEY (`text_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `easyii_admins`
--
ALTER TABLE `easyii_admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `easyii_article_categories`
--
ALTER TABLE `easyii_article_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `easyii_article_items`
--
ALTER TABLE `easyii_article_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `easyii_carousel`
--
ALTER TABLE `easyii_carousel`
  MODIFY `carousel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `easyii_catalog_categories`
--
ALTER TABLE `easyii_catalog_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `easyii_catalog_items`
--
ALTER TABLE `easyii_catalog_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `easyii_catalog_item_data`
--
ALTER TABLE `easyii_catalog_item_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `easyii_faq`
--
ALTER TABLE `easyii_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `easyii_feedback`
--
ALTER TABLE `easyii_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easyii_files`
--
ALTER TABLE `easyii_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `easyii_gallery_categories`
--
ALTER TABLE `easyii_gallery_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `easyii_guestbook`
--
ALTER TABLE `easyii_guestbook`
  MODIFY `guestbook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `easyii_loginform`
--
ALTER TABLE `easyii_loginform`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `easyii_modules`
--
ALTER TABLE `easyii_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `easyii_news`
--
ALTER TABLE `easyii_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `easyii_pages`
--
ALTER TABLE `easyii_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `easyii_photos`
--
ALTER TABLE `easyii_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `easyii_seotext`
--
ALTER TABLE `easyii_seotext`
  MODIFY `seotext_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `easyii_settings`
--
ALTER TABLE `easyii_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `easyii_shopcart_goods`
--
ALTER TABLE `easyii_shopcart_goods`
  MODIFY `good_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easyii_shopcart_orders`
--
ALTER TABLE `easyii_shopcart_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easyii_subscribe_history`
--
ALTER TABLE `easyii_subscribe_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easyii_subscribe_subscribers`
--
ALTER TABLE `easyii_subscribe_subscribers`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `easyii_tags`
--
ALTER TABLE `easyii_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `easyii_texts`
--
ALTER TABLE `easyii_texts`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
