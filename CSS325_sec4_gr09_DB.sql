-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 30, 2024 at 11:22 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

create database if not exists netflix;
use netflix;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `ads_title` varchar(20) NOT NULL COMMENT 'The title of an ad.',
  `duration` int(11) NOT NULL COMMENT 'The ad''s duration, measured in seconds.',
  `advertiser` varchar(20) NOT NULL COMMENT 'The advertiser of this ad.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ads_title`, `duration`, `advertiser`) VALUES
('Electric Cars', 30, 'EcoMotors'),
('Gadget Promotion', 5, 'TechWorld'),
('Healthy Snacks', 10, 'Foodies'),
('Holiday Travel', 60, 'GoGlobalTrips'),
('New Movie Release', 30, 'FilmStudio'),
('Streaming Deals', 60, 'StreamPlus'),
('Summer Collection', 45, 'FashionHub'),
('Super Sale', 10, 'ShopNow'),
('Tech Innovations', 45, 'InnovaTech'),
('Workout Gear', 5, 'FitStore');

-- --------------------------------------------------------

--
-- Table structure for table `apparel`
--

CREATE TABLE `apparel` (
  `item_id` int(11) NOT NULL COMMENT 'Item ID.',
  `material` varchar(50) NOT NULL COMMENT 'Description of the material the item is made of.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apparel`
--

INSERT INTO `apparel` (`item_id`, `material`) VALUES
(1, '100% Cotton'),
(2, 'Polyester/Cotton Blend'),
(3, 'Organic Cotton'),
(4, 'Polyester');

-- --------------------------------------------------------

--
-- Table structure for table `apparel_color`
--

CREATE TABLE `apparel_color` (
  `item_id` int(11) NOT NULL COMMENT 'Item ID',
  `color` varchar(10) NOT NULL COMMENT 'Available color of the item.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apparel_color`
--

INSERT INTO `apparel_color` (`item_id`, `color`) VALUES
(1, 'Black'),
(1, 'Red'),
(2, 'Black'),
(2, 'Gray'),
(3, 'Blue'),
(3, 'White'),
(4, 'Green'),
(4, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `apparel_size`
--

CREATE TABLE `apparel_size` (
  `item_id` int(11) NOT NULL COMMENT 'Item ID',
  `size` varchar(4) NOT NULL COMMENT 'Available size of the apparel.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apparel_size`
--

INSERT INTO `apparel_size` (`item_id`, `size`) VALUES
(1, 'L'),
(1, 'M'),
(1, 'S'),
(2, 'L'),
(2, 'M'),
(2, 'XL'),
(3, 'L'),
(3, 'M'),
(3, 'S'),
(4, 'L'),
(4, 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `article_tudum`
--

CREATE TABLE `article_tudum` (
  `article_title` varchar(100) NOT NULL COMMENT 'An article''s title',
  `publishing_time` datetime NOT NULL COMMENT 'The datetime the article is published on.',
  `category` varchar(20) NOT NULL COMMENT 'The category of an article.',
  `excerpt` varchar(300) NOT NULL COMMENT 'Brief excerpt of the article.',
  `content_id` int(11) NOT NULL COMMENT 'Content ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_tudum`
--

INSERT INTO `article_tudum` (`article_title`, `publishing_time`, `category`, `excerpt`, `content_id`) VALUES
('Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2022-06-29 11:30:00', 'meet the cast', 'Sadie Sink discusses Max\'s journey in Season 4, including her painful experiences and the significance of \"Running Up That Hill.\"', 5),
('The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2022-04-06 10:00:00', 'deep dive', 'The Duffer Brothers discuss the decision to split Season 4 into two volumes, teasing a grand finale as long as a movie.', 5),
('The Queen\'s Gambit Cast, News, Videos and more', '2020-10-23 10:30:00', 'news', 'An overview of \"The Queen\'s Gambit,\" including cast information, news, and videos.', 3),
('Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2022-06-22 09:00:00', 'meet the cast', 'Joe Keery, Gaten Matarazzo, and new star Joe Quinn preview the fourth season and their beloved bromance.', 5),
('‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far', '2022-07-01 13:00:00', 'news', 'Information about the new animated series set in the Stranger Things universe, in partnership with Shawn Levy\'s 21 Laps and Eric Robles.', 5),
('‘Stranger Things’ Cast Red Carpet Premiere Photos', '2022-05-17 17:30:00', 'meet the cast', 'Photos from the red carpet premieres in Paris, Berlin, and Madrid, featuring stars like Noah Schnapp, Natalia Dyer, Charlie Heaton, and Priah Ferguson.', 5),
('‘Stranger Things’ Season 4 Easter Eggs', '2022-06-04 12:45:00', 'explainer', 'A breakdown of Easter eggs in Season 4, including references to Kobe Bryant and Tom Cruise\'s \"Risky Business\" haircut.', 5),
('‘Stranger Things’ Season 4 Episode Length Revealed', '2022-05-16 14:00:00', 'news', 'Details about the episode lengths for Season 4, including 7 episodes in Volume 1 and 2 episodes in Volume 2, totaling approximately 13 hours.', 5),
('‘Stranger Things’ Season 4 First Look Photos', '2022-05-18 16:00:00', 'deep dive', 'First look photos from Season 4, showcasing the darkest and boldest chapter yet.', 5),
('‘Stranger Things’ Season 4 Release Date Announced', '2022-02-17 08:30:00', 'news', 'The Duffer Brothers announce the release date for Season 4 and confirm that the series will conclude with Season 5.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_name` varchar(50) NOT NULL COMMENT 'An author''s name.',
  `description` varchar(300) NOT NULL COMMENT 'The description of an author.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_name`, `description`) VALUES
('Chris Taylor', 'A journalist who covers film, TV, and celebrity culture for multiple platforms.'),
('Daniel Lee', 'An author known for writing about the evolution of TV series and their cultural impact.'),
('David Martinez', 'A film critic who writes extensively about new releases and their impact on the industry.'),
('Emily Johnson', 'A writer with a passion for in-depth analyses of popular TV series and films.'),
('James Moore', 'A seasoned writer with expertise in Netflix original content and the world of streaming.'),
('Jane Smith', 'A pop culture critic and journalist, specializing in Netflix original content.'),
('Jessica Clark', 'A journalist who specializes in casting news and trends in TV and film.'),
('John Doe', 'A seasoned entertainment writer with a focus on TV shows and movies.'),
('Laura Harris', 'A pop culture enthusiast and journalist with a focus on Netflix originals.'),
('Maria Garcia', 'An entertainment journalist with a focus on interviews and content analysis.'),
('Michael Brown', 'A long-time contributor to online entertainment publications, covering TV and film.'),
('Olivia Davis', 'A writer with a focus on behind-the-scenes details and production insights.'),
('Robert White', 'A TV and film writer known for his reviews and deep-dive content on Netflix shows.'),
('Sarah Williams', 'An entertainment writer known for her insightful reviews and interviews with actors.'),
('Sophia Anderson', 'An entertainment writer who dives deep into the stories behind popular media.');

-- --------------------------------------------------------

--
-- Table structure for table `author_write_article`
--

CREATE TABLE `author_write_article` (
  `author_name` varchar(50) NOT NULL COMMENT 'Author names',
  `article_title` varchar(100) NOT NULL COMMENT 'Article title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author_write_article`
--

INSERT INTO `author_write_article` (`author_name`, `article_title`) VALUES
('John Doe', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4'),
('Maria Garcia', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4'),
('Jane Smith', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes'),
('John Doe', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes'),
('Chris Taylor', 'The Queen\'s Gambit Cast, News, Videos and more'),
('Sarah Williams', 'The Queen\'s Gambit Cast, News, Videos and more'),
('Emily Johnson', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship'),
('Michael Brown', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship'),
('James Moore', '‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far'),
('Jessica Clark', '‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far'),
('Daniel Lee', '‘Stranger Things’ Cast Red Carpet Premiere Photos'),
('David Martinez', '‘Stranger Things’ Cast Red Carpet Premiere Photos'),
('Olivia Davis', '‘Stranger Things’ Cast Red Carpet Premiere Photos'),
('Sophia Anderson', '‘Stranger Things’ Cast Red Carpet Premiere Photos'),
('John Doe', '‘Stranger Things’ Season 4 Easter Eggs'),
('Laura Harris', '‘Stranger Things’ Season 4 Easter Eggs'),
('Maria Garcia', '‘Stranger Things’ Season 4 Easter Eggs'),
('Robert White', '‘Stranger Things’ Season 4 Easter Eggs'),
('Chris Taylor', '‘Stranger Things’ Season 4 Episode Length Revealed'),
('Laura Harris', '‘Stranger Things’ Season 4 Episode Length Revealed'),
('Robert White', '‘Stranger Things’ Season 4 Episode Length Revealed'),
('Sarah Williams', '‘Stranger Things’ Season 4 Episode Length Revealed'),
('Daniel Lee', '‘Stranger Things’ Season 4 First Look Photos'),
('David Martinez', '‘Stranger Things’ Season 4 First Look Photos'),
('Olivia Davis', '‘Stranger Things’ Season 4 First Look Photos'),
('Sophia Anderson', '‘Stranger Things’ Season 4 First Look Photos'),
('Emily Johnson', '‘Stranger Things’ Season 4 Release Date Announced'),
('James Moore', '‘Stranger Things’ Season 4 Release Date Announced'),
('Jessica Clark', '‘Stranger Things’ Season 4 Release Date Announced'),
('Michael Brown', '‘Stranger Things’ Season 4 Release Date Announced');

-- --------------------------------------------------------

--
-- Table structure for table `collectible`
--

CREATE TABLE `collectible` (
  `item_id` int(11) NOT NULL COMMENT 'Item ID.',
  `edition` int(2) NOT NULL COMMENT 'Edition number of the collection.',
  `release_date` date NOT NULL COMMENT 'Release date of the collection.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectible`
--

INSERT INTO `collectible` (`item_id`, `edition`, `release_date`) VALUES
(9, 1, '2023-04-15'),
(10, 2, '2023-06-01'),
(11, 1, '2023-09-20'),
(12, 3, '2023-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `content_title` varchar(70) NOT NULL COMMENT 'Content title',
  `release_date` date NOT NULL COMMENT 'Release date',
  `expiration_date` date DEFAULT NULL COMMENT 'Expiration date',
  `maturity_rating` varchar(5) NOT NULL COMMENT 'Maturity rating',
  `description` text NOT NULL COMMENT 'Description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `release_date`, `expiration_date`, `maturity_rating`, `description`) VALUES
(1, 'A Killer Paradox', '2024-01-15', NULL, 'TV-MA', 'A 2024 thriller where a retail worker inadvertently kills a serial killer, leading to unexpected consequences.'),
(2, 'The Lincoln Lawyer', '2022-05-13', NULL, 'TV-14', 'A legal drama following a defense attorney who runs his practice from a Lincoln Town Car, navigating complex cases and personal challenges.'),
(3, 'The Queen\'s Gambit', '2020-10-23', NULL, 'TV-MA', 'A period drama about a young chess prodigy\'s rise in the male-dominated world of competitive chess during the Cold War era.'),
(4, 'One Piece', '2023-08-31', NULL, 'TV-14', 'A live-action adaptation of the popular manga and anime, following Monkey D. Luffy and his crew in search of the legendary One Piece treasure.'),
(5, 'Stranger Things', '2016-07-15', NULL, 'TV-14', 'A sci-fi horror series set in the 1980s, where a group of kids uncover supernatural mysteries in their small town.'),
(6, 'The Crown', '2016-11-04', NULL, 'TV-MA', 'A historical drama chronicling the reign of Queen Elizabeth II, exploring political and personal events that shaped the second half of the 20th century.'),
(7, 'Bridgerton', '2020-12-25', '2025-12-25', 'TV-MA', 'A romantic drama set in Regency-era London, focusing on the Bridgerton family and their entanglements in high society.'),
(8, 'Money Heist', '2017-05-02', NULL, 'TV-MA', 'A Spanish heist crime drama where a group of robbers, led by \'The Professor,\' execute meticulously planned heists.'),
(9, 'The Witcher', '2019-12-20', NULL, 'TV-MA', 'A fantasy series following Geralt of Rivia, a monster hunter navigating a turbulent world filled with magic and political intrigue.'),
(10, 'Squid Game', '2021-09-17', NULL, 'TV-MA', 'A South Korean survival drama where contestants in dire financial situations compete in deadly children\'s games for a massive cash prize.'),
(11, 'The Killer', '2024-10-30', NULL, 'TV-MA', 'A 2024 thriller directed by David Fincher, following an assassin who begins to question his own sanity.'),
(12, 'The Harder They Fall', '2021-10-22', NULL, 'R', 'A 2021 Western featuring an all-Black cast, where an outlaw reunites his gang to seek revenge.'),
(13, 'Red Notice', '2021-11-05', NULL, 'PG-13', 'A 2021 action-comedy starring Dwayne Johnson, Gal Gadot, and Ryan Reynolds, involving an Interpol agent tracking the world\'s most wanted art thief.'),
(14, 'Don\'t Look Up', '2021-12-24', NULL, 'R', 'A 2021 satirical science fiction film where two astronomers attempt to warn humanity about an approaching comet that will destroy Earth.'),
(15, 'The Power of the Dog', '2021-11-17', NULL, 'R', 'A 2021 Western drama exploring themes of love, grief, and resentment between two brothers on a Montana ranch.'),
(16, 'Bird Box', '2018-12-14', '2024-12-14', 'TV-MA', 'A post-apocalyptic thriller where survivors must navigate a world where seeing mysterious creatures leads to death.'),
(17, 'Marriage Story', '2019-11-06', NULL, 'R', 'A 2019 drama about a couple undergoing a painful divorce, examining their emotions and the toll it takes on their family.'),
(18, 'The Old Guard', '2020-07-10', NULL, 'R', 'A 2020 action movie about immortal warriors who fight to protect humanity, starring Charlize Theron.'),
(19, 'The Irishman', '2019-11-27', NULL, 'R', 'A 2019 epic crime film directed by Martin Scorsese, focusing on the life of a mob hitman and his involvement with organized crime.'),
(20, 'Enola Holmes', '2020-09-23', NULL, 'PG-13', 'A 2020 mystery-adventure film about Sherlock Holmes\'s younger sister, Enola, who uncovers a conspiracy while searching for her missing mother.');

-- --------------------------------------------------------

--
-- Table structure for table `content_cast`
--

CREATE TABLE `content_cast` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `cast` varchar(50) NOT NULL COMMENT 'Cast name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_cast`
--

INSERT INTO `content_cast` (`content_id`, `cast`) VALUES
(1, 'Michael Fassbender'),
(1, 'Tilda Swinton'),
(2, 'Idris Elba'),
(2, 'Jonathan Majors'),
(3, 'Dwayne Johnson'),
(3, 'Gal Gadot'),
(3, 'Ryan Reynolds'),
(4, 'Jennifer Lawrence'),
(4, 'Leonardo DiCaprio'),
(4, 'Meryl Streep'),
(5, 'Benedict Cumberbatch'),
(5, 'Jesse Plemons'),
(5, 'Kirsten Dunst'),
(6, 'John Malkovich'),
(6, 'Sandra Bullock'),
(6, 'Trevante Rhodes'),
(7, 'Adam Driver'),
(7, 'Laura Dern'),
(7, 'Scarlett Johansson'),
(8, 'Charlize Theron'),
(8, 'Chiwetel Ejiofor'),
(8, 'KiKi Layne'),
(9, 'Al Pacino'),
(9, 'Joe Pesci'),
(9, 'Robert De Niro'),
(10, 'Henry Cavill'),
(10, 'Millie Bobby Brown'),
(10, 'Sam Claflin'),
(11, 'Michael Fassbender'),
(11, 'Tilda Swinton'),
(12, 'Idris Elba'),
(12, 'Jonathan Majors'),
(13, 'Dwayne Johnson'),
(13, 'Gal Gadot'),
(13, 'Ryan Reynolds'),
(14, 'Jennifer Lawrence'),
(14, 'Leonardo DiCaprio'),
(14, 'Meryl Streep'),
(15, 'Benedict Cumberbatch'),
(15, 'Jesse Plemons'),
(15, 'Kirsten Dunst'),
(16, 'John Malkovich'),
(16, 'Sandra Bullock'),
(16, 'Trevante Rhodes'),
(17, 'Adam Driver'),
(17, 'Laura Dern'),
(17, 'Scarlett Johansson'),
(18, 'Charlize Theron'),
(18, 'Chiwetel Ejiofor'),
(18, 'KiKi Layne'),
(19, 'Al Pacino'),
(19, 'Joe Pesci'),
(19, 'Robert De Niro'),
(20, 'Henry Cavill'),
(20, 'Millie Bobby Brown'),
(20, 'Sam Claflin');

-- --------------------------------------------------------

--
-- Table structure for table `content_director`
--

CREATE TABLE `content_director` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `director` varchar(50) NOT NULL COMMENT 'Director name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_director`
--

INSERT INTO `content_director` (`content_id`, `director`) VALUES
(1, 'Cary Joji Fukunaga'),
(1, 'David Fincher'),
(2, 'Jeymes Samuel'),
(3, 'Rawson Marshall Thurber'),
(4, 'Adam McKay'),
(5, 'Jane Campion'),
(6, 'Susanne Bier'),
(7, 'Noah Baumbach'),
(8, 'Gina Prince-Bythewood'),
(9, 'Martin Scorsese'),
(10, 'Harry Bradbeer'),
(11, 'David Fincher'),
(12, 'Jeymes Samuel'),
(13, 'Rawson Marshall Thurber'),
(14, 'Adam McKay'),
(15, 'Jane Campion'),
(16, 'Susanne Bier'),
(17, 'Noah Baumbach'),
(18, 'Gina Prince-Bythewood'),
(19, 'Martin Scorsese'),
(20, 'Harry Bradbeer');

-- --------------------------------------------------------

--
-- Table structure for table `content_writer`
--

CREATE TABLE `content_writer` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `writer` varchar(50) NOT NULL COMMENT 'Writer name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_writer`
--

INSERT INTO `content_writer` (`content_id`, `writer`) VALUES
(1, 'Andrew Kevin Walker'),
(1, 'David Fincher'),
(2, 'Jeymes Samuel'),
(3, 'Rawson Marshall Thurber'),
(4, 'Adam McKay'),
(4, 'David Sirota'),
(5, 'Jane Campion'),
(6, 'Susanne Bier'),
(7, 'Noah Baumbach'),
(8, 'Gina Prince-Bythewood'),
(8, 'Greg Rucka'),
(9, 'Jay Cocks'),
(9, 'Steven Zaillian'),
(10, 'Jack Thorne'),
(11, 'David Fincher'),
(12, 'Jeymes Samuel'),
(13, 'Rawson Marshall Thurber'),
(14, 'Adam McKay'),
(14, 'David Sirota'),
(15, 'Jane Campion'),
(16, 'Susanne Bier'),
(17, 'Noah Baumbach'),
(18, 'Gina Prince-Bythewood'),
(18, 'Greg Rucka'),
(19, 'Jay Cocks'),
(19, 'Steven Zaillian'),
(20, 'Jack Thorne');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `promo_code` varchar(10) NOT NULL COMMENT 'Promotion code.',
  `expiration_date` date NOT NULL COMMENT 'Coupon expiration date.',
  `discount_percent` int(3) NOT NULL COMMENT 'Discount percent offered by coupon.',
  `is_valid_for_all_items` tinyint(1) NOT NULL COMMENT 'Mark if coupon is valid for all items.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`promo_code`, `expiration_date`, `discount_percent`, `is_valid_for_all_items`) VALUES
('BLACKFRI', '2024-11-29', 25, 1),
('BRIDGE15', '2024-11-30', 15, 0),
('FALLDEAL', '2024-11-30', 10, 1),
('NEWYEAR5', '2024-01-01', 5, 1),
('SPRING25', '2024-03-31', 25, 1),
('SQUID20', '2024-10-31', 20, 0),
('STRANGE10', '2024-12-31', 10, 0),
('SUMMER10', '2024-06-30', 10, 1),
('WITCHER5', '2024-12-31', 5, 0),
('XMAS2024', '2024-12-25', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_eligiblefor_item`
--

CREATE TABLE `coupon_eligiblefor_item` (
  `promo_code` varchar(10) NOT NULL COMMENT 'Coupon''s promo code',
  `item_id` int(20) NOT NULL COMMENT 'Merchandise item ID.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon_eligiblefor_item`
--

INSERT INTO `coupon_eligiblefor_item` (`promo_code`, `item_id`) VALUES
('STRANGE10', 1),
('WITCHER5', 2),
('BRIDGE15', 3),
('SQUID20', 4),
('STRANGE10', 5),
('WITCHER5', 6),
('BRIDGE15', 7),
('SQUID20', 8),
('STRANGE10', 9),
('WITCHER5', 10),
('BRIDGE15', 11),
('SQUID20', 12);

-- --------------------------------------------------------

--
-- Table structure for table `drinkware`
--

CREATE TABLE `drinkware` (
  `item_id` int(11) NOT NULL,
  `capacity` int(5) NOT NULL COMMENT 'Capacity of drinkware, measured in ml.',
  `upper_diameter` int(2) NOT NULL COMMENT 'Upper diameter of drinkware, measured in inches.',
  `bottom_diameter` int(2) NOT NULL COMMENT 'Bottom diameter of drinkware, measured in inches.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drinkware`
--

INSERT INTO `drinkware` (`item_id`, `capacity`, `upper_diameter`, `bottom_diameter`) VALUES
(5, 350, 3, 3),
(6, 450, 3, 2),
(7, 500, 3, 3),
(8, 750, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_name` varchar(50) NOT NULL COMMENT 'A game''s name',
  `description` text NOT NULL COMMENT 'Game''s description',
  `internet_requirement_status` tinyint(1) NOT NULL COMMENT 'Is internet required to play or not?',
  `maturity_rating` varchar(4) NOT NULL COMMENT 'Maturity rating',
  `player_count` varchar(5) NOT NULL COMMENT 'Min/max amount of player required to play the game.',
  `release_year` year(4) NOT NULL COMMENT 'Release year',
  `controller_support_status` tinyint(1) NOT NULL COMMENT 'Is controller supported or not?',
  `compatibility_details` text NOT NULL COMMENT 'Short description of the device specs needed to play this game.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_name`, `description`, `internet_requirement_status`, `maturity_rating`, `player_count`, `release_year`, `controller_support_status`, `compatibility_details`) VALUES
('Asphalt Xtreme', 'Off-road racing game with various vehicle classes and multiplayer.', 1, 'E10+', '1-8', 2021, 1, 'Needs stable internet and devices with good graphics support.'),
('Exploding Kittens', 'Card game adaptation with humorous strategy elements.', 0, 'E', '2-5', 2021, 0, 'Requires Android 5.0 or iOS 11 and up.'),
('Heads Up!', 'A fun party game where players guess words based on clues.', 1, 'E', '2+', 2018, 0, 'Requires iOS or Android with camera access.'),
('Hextech Mayhem', 'Rhythm-based runner set in the League of Legends universe.', 1, 'T', '1', 2021, 1, 'Compatible with most modern devices with touchscreen.'),
('Into the Breach', 'Turn-based strategy where players control mechs to defend cities from aliens.', 0, 'E10+', '1', 2018, 1, 'Compatible with mid-range devices, iOS and Android.'),
('Kentucky Route Zero', 'A magical realist adventure game exploring a mysterious highway.', 0, 'T', '1', 2019, 1, 'Requires Android 6.0 or iOS 12 and up.'),
('Moonlighter', 'Action RPG with dungeon crawling and shop management.', 0, 'T', '1', 2018, 1, 'Runs on most Android 6.0+ and iOS 12+ devices.'),
('Oxenfree', 'Supernatural thriller adventure game involving dialogue choices.', 0, 'T', '1', 2016, 1, 'Requires Android 5.0 or iOS 11 and up.'),
('Shatter Remastered', 'A modernized version of a brick-breaking game with power-ups.', 0, 'E', '1', 2022, 1, 'Compatible with iOS and Android devices from 2018 onward.'),
('Stranger Things: 1984', 'Pixel-art action game set in the Stranger Things universe.', 0, 'T', '1', 2020, 1, 'Playable on low-end Android and iOS devices.');

-- --------------------------------------------------------

--
-- Table structure for table `game_category`
--

CREATE TABLE `game_category` (
  `game_name` varchar(50) NOT NULL COMMENT 'Game name',
  `category` varchar(20) NOT NULL COMMENT 'Game Category'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_category`
--

INSERT INTO `game_category` (`game_name`, `category`) VALUES
('Asphalt Xtreme', 'Multiplayer'),
('Asphalt Xtreme', 'Racing'),
('Exploding Kittens', 'Card Game'),
('Exploding Kittens', 'Casual'),
('Heads Up!', 'Party Game'),
('Heads Up!', 'Trivia'),
('Hextech Mayhem', 'Action'),
('Hextech Mayhem', 'Rhythm'),
('Into the Breach', 'Strategy'),
('Into the Breach', 'Turn-Based'),
('Kentucky Route Zero', 'Adventure'),
('Kentucky Route Zero', 'Narrative'),
('Moonlighter', 'Action RPG'),
('Moonlighter', 'Dungeon Crawler'),
('Oxenfree', 'Adventure'),
('Oxenfree', 'Thriller'),
('Shatter Remastered', 'Arcade'),
('Shatter Remastered', 'Puzzle'),
('Stranger Things: 1984', 'Action'),
('Stranger Things: 1984', 'Retro');

-- --------------------------------------------------------

--
-- Table structure for table `game_developer`
--

CREATE TABLE `game_developer` (
  `game_name` varchar(50) NOT NULL COMMENT 'Game name',
  `developer` varchar(50) NOT NULL COMMENT 'The game''s developer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_developer`
--

INSERT INTO `game_developer` (`game_name`, `developer`) VALUES
('Asphalt Xtreme', 'Gameloft'),
('Exploding Kittens', 'Exploding Kittens, Inc.'),
('Heads Up!', 'Warner Bros. Games'),
('Hextech Mayhem', 'Choice Provisions'),
('Into the Breach', 'Subset Games'),
('Kentucky Route Zero', 'Cardboard Computer'),
('Moonlighter', 'Digital Sun'),
('Oxenfree', 'Night School Studio'),
('Shatter Remastered', 'PikPok'),
('Stranger Things: 1984', 'BonusXP');

-- --------------------------------------------------------

--
-- Table structure for table `game_gamemode`
--

CREATE TABLE `game_gamemode` (
  `game_name` varchar(50) NOT NULL COMMENT 'Game name',
  `game_mode` varchar(20) NOT NULL COMMENT 'The different game modes of the game.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_gamemode`
--

INSERT INTO `game_gamemode` (`game_name`, `game_mode`) VALUES
('Asphalt Xtreme', 'Multiplayer'),
('Asphalt Xtreme', 'Single Player'),
('Exploding Kittens', 'Multiplayer'),
('Exploding Kittens', 'Single Player'),
('Heads Up!', 'Multiplayer'),
('Hextech Mayhem', 'Single Player'),
('Into the Breach', 'Single Player'),
('Kentucky Route Zero', 'Single Player'),
('Moonlighter', 'Single Player'),
('Oxenfree', 'Single Player'),
('Shatter Remastered', 'Single Player'),
('Stranger Things: 1984', 'Single Player');

-- --------------------------------------------------------

--
-- Table structure for table `game_supported_languages`
--

CREATE TABLE `game_supported_languages` (
  `game_name` varchar(50) NOT NULL COMMENT 'Game name',
  `supported_lang` varchar(20) NOT NULL COMMENT 'What languages the game supports.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_supported_languages`
--

INSERT INTO `game_supported_languages` (`game_name`, `supported_lang`) VALUES
('Asphalt Xtreme', 'English'),
('Asphalt Xtreme', 'French'),
('Asphalt Xtreme', 'Italian'),
('Exploding Kittens', 'English'),
('Exploding Kittens', 'French'),
('Exploding Kittens', 'Spanish'),
('Heads Up!', 'English'),
('Heads Up!', 'German'),
('Heads Up!', 'Spanish'),
('Hextech Mayhem', 'English'),
('Hextech Mayhem', 'German'),
('Hextech Mayhem', 'Portuguese'),
('Into the Breach', 'English'),
('Into the Breach', 'French'),
('Into the Breach', 'German'),
('Into the Breach', 'Spanish'),
('Kentucky Route Zero', 'English'),
('Kentucky Route Zero', 'French'),
('Kentucky Route Zero', 'Spanish'),
('Moonlighter', 'English'),
('Moonlighter', 'French'),
('Moonlighter', 'German'),
('Oxenfree', 'English'),
('Oxenfree', 'French'),
('Oxenfree', 'German'),
('Shatter Remastered', 'English'),
('Shatter Remastered', 'Spanish'),
('Stranger Things: 1984', 'English'),
('Stranger Things: 1984', 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL COMMENT 'Genre ID',
  `genre_name` varchar(30) NOT NULL COMMENT 'Genre Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Fantasy'),
(7, 'Historical'),
(8, 'Horror'),
(9, 'Mystery'),
(10, 'Romance'),
(11, 'Science Fiction'),
(12, 'Thriller'),
(13, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `genre_contain_content`
--

CREATE TABLE `genre_contain_content` (
  `genre_id` int(11) NOT NULL COMMENT 'Genre ID',
  `content_id` int(11) NOT NULL COMMENT 'Content ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre_contain_content`
--

INSERT INTO `genre_contain_content` (`genre_id`, `content_id`) VALUES
(4, 1),
(12, 1),
(5, 2),
(13, 2),
(1, 3),
(2, 3),
(3, 3),
(3, 4),
(5, 4),
(5, 5),
(10, 5),
(5, 6),
(12, 6),
(3, 7),
(5, 7),
(1, 8),
(2, 8),
(4, 9),
(5, 9),
(2, 10),
(9, 10),
(5, 11),
(6, 11),
(5, 12),
(6, 12),
(2, 13),
(5, 13),
(8, 13),
(4, 14),
(5, 14),
(12, 14),
(4, 15),
(5, 15),
(5, 16),
(10, 16),
(5, 17),
(9, 17),
(12, 17),
(5, 18),
(7, 18),
(1, 19),
(2, 19),
(5, 19),
(4, 20),
(5, 20),
(12, 20);

-- --------------------------------------------------------

--
-- Table structure for table `merchandise_item`
--

CREATE TABLE `merchandise_item` (
  `item_id` int(11) NOT NULL COMMENT 'Item ID',
  `collection_category` varchar(50) NOT NULL COMMENT 'The collection category this item belongs to.',
  `price` decimal(10,2) NOT NULL COMMENT 'Price',
  `description` varchar(300) NOT NULL COMMENT 'Description',
  `item_name` varchar(50) NOT NULL COMMENT 'Item Name',
  `discounted_price` decimal(10,2) DEFAULT NULL COMMENT 'Discounted price.',
  `stock_quantity` int(11) NOT NULL COMMENT 'Number of items remaining in stock.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchandise_item`
--

INSERT INTO `merchandise_item` (`item_id`, `collection_category`, `price`, `description`, `item_name`, `discounted_price`, `stock_quantity`) VALUES
(1, 'Stranger Things Collection', '29.99', 'Stranger Things Logo T-Shirt', 'Stranger Things T-Shirt', NULL, 100),
(2, 'The Witcher Collection', '39.99', 'The Witcher Pullover Hoodie', 'The Witcher Hoodie', NULL, 50),
(3, 'Bridgerton Collection', '25.99', 'Bridgerton Lace Tee', 'Bridgerton T-Shirt', NULL, 75),
(4, 'Squid Game Collection', '49.99', 'Squid Game Player Tracksuit', 'Squid Game Tracksuit', '44.99', 30),
(5, 'Stranger Things Collection', '15.99', 'Stranger Things themed mug with high-quality ceramic material.', 'Stranger Things Mug', '12.99', 50),
(6, 'Bridgerton Collection', '19.99', 'Bridgerton crystal wine glass set, ideal for any occasion.', 'Bridgerton Wine Glass', NULL, 30),
(7, 'The Witcher Collection', '12.99', 'The Witcher inspired stainless steel tumbler for hot or cold drinks.', 'The Witcher Tumbler', NULL, 40),
(8, 'Squid Game Collection', '25.99', 'Squid Game glass bottle with iconic symbols from the show.', 'Squid Game Glass Bottle', '22.99', 20),
(9, 'Stranger Things Collection', '14.99', 'Limited edition Stranger Things Funko Pop featuring Eleven.', 'Stranger Things Funko Pop', NULL, 100),
(10, 'The Witcher Collection', '9.99', 'Detailed keychain inspired by The Witcher series, featuring Geralt\'s medallion.', 'The Witcher Keychain', NULL, 200),
(11, 'Squid Game Collection', '19.99', 'Exclusive Squid Game figure with collectible display stand.', 'Squid Game Figure', NULL, 150),
(12, 'Bridgerton Collection', '24.99', 'Elegant Bridgerton mini replica of the Queen\'s crown for display.', 'Bridgerton Crown Replica', NULL, 75);

-- --------------------------------------------------------

--
-- Table structure for table `merchandise_order`
--

CREATE TABLE `merchandise_order` (
  `order_id` int(11) NOT NULL COMMENT 'Order''s ID',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `contact_email` varchar(254) NOT NULL COMMENT 'Contact Email',
  `card_number` varchar(19) NOT NULL COMMENT 'Card Number on a credit card.',
  `expiration_date` char(5) NOT NULL COMMENT 'Expiration Date on credit card.',
  `security_code` char(3) NOT NULL COMMENT 'Security code on a credit card.',
  `name_on_card` varchar(26) NOT NULL COMMENT 'Name on the credit card.',
  `fname` varchar(50) NOT NULL COMMENT 'First Name',
  `lname` varchar(50) NOT NULL COMMENT 'Last Name',
  `postal_code` varchar(10) NOT NULL COMMENT 'Postal Code',
  `province` varchar(20) NOT NULL COMMENT 'Province',
  `city` varchar(20) NOT NULL COMMENT 'City',
  `country` varchar(20) NOT NULL COMMENT 'Country',
  `addr` varchar(200) DEFAULT NULL COMMENT 'Extra address information',
  `order_date` date NOT NULL COMMENT 'Creation date of the order.',
  `status` varchar(10) NOT NULL COMMENT 'Order completion status. (Shipping, Cancelled, Completed)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchandise_order`
--

INSERT INTO `merchandise_order` (`order_id`, `username`, `contact_email`, `card_number`, `expiration_date`, `security_code`, `name_on_card`, `fname`, `lname`, `postal_code`, `province`, `city`, `country`, `addr`, `order_date`, `status`) VALUES
(1, 'alice_b', 'alice.b@example.com', '4532 1234 5678 9012', '02/34', '321', 'Alice Brown', 'Alice', 'Brown', '12345', 'Ontario', 'Toronto', 'Canada', '901 Chestnut St.', '2024-10-01', 'completed'),
(2, 'bob_the_builder', 'bob.builder@example.com', '4716 2345 6789 0123', '01/35', '654', 'Bob Builder', 'Bob', 'Builder', '67890', 'Quebec', 'Montreal', 'Canada', '902 Cedar Ave.', '2024-10-03', 'shipped'),
(3, 'charlie123', 'charlie123@example.com', '4916 3456 7890 1234', '12/36', '987', 'Charlie Lee', 'Charlie', 'Lee', '13579', 'British Columbia', 'Vancouver', 'Canada', '903 Maple Rd.', '2024-10-05', 'cancelled'),
(4, 'david_k', 'david.k@example.com', '4532 4567 8901 2345', '11/37', '210', 'David King', 'David', 'King', '24680', 'Alberta', 'Calgary', 'Canada', '904 Pine Cres.', '2024-10-07', 'completed'),
(5, 'emily.r', 'emily.r@example.com', '4716 5678 9012 3456', '10/38', '543', 'Emily Rose', 'Emily', 'Rose', '11223', 'Manitoba', 'Winnipeg', 'Canada', '905 Spruce Ln.', '2024-10-09', 'shipped'),
(6, 'frank88', 'frank88@example.com', '4916 6789 0123 4567', '09/39', '876', 'Frank Gold', 'Frank', 'Gold', '44556', 'Nova Scotia', 'Halifax', 'Canada', '906 Birch Blvd.', '2024-10-11', 'completed'),
(7, 'gina_l', 'gina.l@example.com', '4532 7890 1234 5678', '08/40', '109', 'Gina Lake', 'Gina', 'Lake', '88990', 'Ontario', 'Ottawa', 'Canada', '907 Oak Pl.', '2024-10-13', 'cancelled'),
(8, 'harry_p', 'harry.p@example.com', '4716 8901 2345 6789', '07/41', '432', 'Harry Potter', 'Harry', 'Potter', '22334', 'Newfoundland', 'St. John\'s', 'Canada', '908 Aspen Ct.', '2024-10-15', 'shipped'),
(9, 'jane_smith', 'jane.smith@example.com', '4916 9012 3456 7890', '06/42', '765', 'Jane Smith', 'Jane', 'Smith', '55678', 'New Brunswick', 'Moncton', 'Canada', '909 Redwood Dr.', '2024-10-17', 'completed'),
(10, 'john_doe', 'john.doe@example.com', '4532 0123 4567 8901', '05/43', '098', 'John Doe', 'John', 'Doe', '78901', 'Yukon', 'Whitehorse', 'Canada', '910 Alder Way', '2024-10-19', 'completed'),
(11, 'alice_b', 'alice.b@example.com', '4532 1234 5678 9012', '02/34', '321', 'Alice Brown', 'Alice', 'Brown', '12345', 'Ontario', 'Toronto', 'Canada', '901 Chestnut St.', '2024-11-01', 'shipped'),
(12, 'bob_the_builder', 'bob.builder@example.com', '4716 2345 6789 0123', '01/35', '654', 'Bob Builder', 'Bob', 'Builder', '67890', 'Quebec', 'Montreal', 'Canada', '902 Cedar Ave.', '2024-11-03', 'completed'),
(13, 'charlie123', 'charlie123@example.com', '4916 3456 7890 1234', '12/36', '987', 'Charlie Lee', 'Charlie', 'Lee', '13579', 'British Columbia', 'Vancouver', 'Canada', '903 Maple Rd.', '2024-11-05', 'shipped'),
(14, 'david_k', 'david.k@example.com', '4532 4567 8901 2345', '11/37', '210', 'David King', 'David', 'King', '24680', 'Alberta', 'Calgary', 'Canada', '904 Pine Cres.', '2024-11-07', 'cancelled'),
(15, 'emily.r', 'emily.r@example.com', '4716 5678 9012 3456', '10/38', '543', 'Emily Rose', 'Emily', 'Rose', '11223', 'Manitoba', 'Winnipeg', 'Canada', '905 Spruce Ln.', '2024-11-09', 'completed'),
(16, 'frank88', 'frank88@example.com', '4916 6789 0123 4567', '09/39', '876', 'Frank Gold', 'Frank', 'Gold', '44556', 'Nova Scotia', 'Halifax', 'Canada', '906 Birch Blvd.', '2024-11-11', 'shipped'),
(17, 'gina_l', 'gina.l@example.com', '4532 7890 1234 5678', '08/40', '109', 'Gina Lake', 'Gina', 'Lake', '88990', 'Ontario', 'Ottawa', 'Canada', '907 Oak Pl.', '2024-11-13', 'completed'),
(18, 'harry_p', 'harry.p@example.com', '4716 8901 2345 6789', '07/41', '432', 'Harry Potter', 'Harry', 'Potter', '22334', 'Newfoundland', 'St. John\'s', 'Canada', '908 Aspen Ct.', '2024-11-15', 'completed'),
(19, 'jane_smith', 'jane.smith@example.com', '4916 9012 3456 7890', '06/42', '765', 'Jane Smith', 'Jane', 'Smith', '55678', 'New Brunswick', 'Moncton', 'Canada', '909 Redwood Dr.', '2024-11-17', 'cancelled'),
(20, 'john_doe', 'john.doe@example.com', '4532 0123 4567 8901', '05/43', '098', 'John Doe', 'John', 'Doe', '78901', 'Yukon', 'Whitehorse', 'Canada', '910 Alder Way', '2024-11-19', 'shipped'),
(21, 'alice_b', 'alice.b@example.com', '4532 1234 5678 9012', '02/34', '321', 'Alice Brown', 'Alice', 'Brown', '12345', 'Ontario', 'Toronto', 'Canada', '901 Chestnut St.', '2024-10-03', 'shipped'),
(22, 'bob_the_builder', 'bob.builder@example.com', '4716 2345 6789 0123', '01/35', '654', 'Bob Builder', 'Bob', 'Builder', '67890', 'Quebec', 'Montreal', 'Canada', '902 Cedar Ave.', '2024-10-06', 'completed'),
(23, 'charlie123', 'charlie123@example.com', '4916 3456 7890 1234', '12/36', '987', 'Charlie Lee', 'Charlie', 'Lee', '13579', 'British Columbia', 'Vancouver', 'Canada', '903 Maple Rd.', '2024-10-09', 'cancelled'),
(24, 'david_k', 'david.k@example.com', '4532 4567 8901 2345', '11/37', '210', 'David King', 'David', 'King', '24680', 'Alberta', 'Calgary', 'Canada', '904 Pine Cres.', '2024-10-12', 'completed'),
(25, 'emily.r', 'emily.r@example.com', '4716 5678 9012 3456', '10/38', '543', 'Emily Rose', 'Emily', 'Rose', '11223', 'Manitoba', 'Winnipeg', 'Canada', '905 Spruce Ln.', '2024-10-15', 'shipped'),
(26, 'frank88', 'frank88@example.com', '4916 6789 0123 4567', '09/39', '876', 'Frank Gold', 'Frank', 'Gold', '44556', 'Nova Scotia', 'Halifax', 'Canada', '906 Birch Blvd.', '2024-10-18', 'completed'),
(27, 'gina_l', 'gina.l@example.com', '4532 7890 1234 5678', '08/40', '109', 'Gina Lake', 'Gina', 'Lake', '88990', 'Ontario', 'Ottawa', 'Canada', '907 Oak Pl.', '2024-10-21', 'cancelled'),
(28, 'harry_p', 'harry.p@example.com', '4716 8901 2345 6789', '07/41', '432', 'Harry Potter', 'Harry', 'Potter', '22334', 'Newfoundland', 'St. John\'s', 'Canada', '908 Aspen Ct.', '2024-10-24', 'shipped'),
(29, 'jane_smith', 'jane.smith@example.com', '4916 9012 3456 7890', '06/42', '765', 'Jane Smith', 'Jane', 'Smith', '55678', 'New Brunswick', 'Moncton', 'Canada', '909 Redwood Dr.', '2024-10-27', 'completed'),
(30, 'john_doe', 'john.doe@example.com', '4532 0123 4567 8901', '05/43', '098', 'John Doe', 'John', 'Doe', '78901', 'Yukon', 'Whitehorse', 'Canada', '910 Alder Way', '2024-10-30', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `merchandise_review`
--

CREATE TABLE `merchandise_review` (
  `review_id` int(11) NOT NULL COMMENT 'Review ID',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `item_id` int(11) NOT NULL COMMENT 'Item ID',
  `review_title` varchar(50) NOT NULL COMMENT 'Review Title',
  `comment` varchar(200) NOT NULL COMMENT 'Textual content of the review.',
  `rating` int(1) NOT NULL COMMENT 'Rating given.',
  `name` varchar(20) NOT NULL COMMENT 'Name displayed on the review.',
  `creation_date` date NOT NULL COMMENT 'Creation date.',
  `email` varchar(254) NOT NULL COMMENT 'Email',
  `verified_buyer_flag` tinyint(1) NOT NULL COMMENT 'Mark if user is a verified buyer of this item.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merchandise_review`
--

INSERT INTO `merchandise_review` (`review_id`, `username`, `item_id`, `review_title`, `comment`, `rating`, `name`, `creation_date`, `email`, `verified_buyer_flag`) VALUES
(1, 'john_doe', 1, 'Perfect Fit!', 'The Stranger Things T-Shirt fits great and feels comfortable. The design is awesome!', 5, 'John D.', '2024-10-12', 'john.doe@example.com', 1),
(2, 'jane_smith', 2, 'Cozy and Warm', 'The Witcher Hoodie is perfect for chilly days. Love the design!', 5, 'Jane S.', '2024-10-13', 'jane.smith@example.com', 1),
(3, 'alice_b', 3, 'Not as Expected', 'The Bridgerton T-Shirt didn\'t meet my expectations. The lace feels cheap.', 2, 'Alice B.', '2024-10-14', 'alice.b@example.com', 0),
(4, 'bob_the_builder', 4, 'Great Value', 'Got the Squid Game Tracksuit on sale. It fits well and looks exactly like in the show!', 4, 'Bob B.', '2024-10-15', 'bob.builder@example.com', 1),
(5, 'charlie123', 5, 'Nice Mug', 'Stranger Things Mug is nice, but I wish it were a bit bigger.', 4, 'Charlie', '2024-10-16', 'charlie123@example.com', 1),
(6, 'david_k', 6, 'Elegant Glasses', 'The Bridgerton Wine Glasses are stunning. Perfect for entertaining!', 5, 'David K.', '2024-10-17', 'david.k@example.com', 1),
(7, 'emily.r', 7, 'Works Well', 'The Witcher Tumbler is great for hot coffee. Keeps it warm for hours.', 5, 'Emily R.', '2024-10-18', 'emily.r@example.com', 0),
(8, 'frank88', 8, 'Stylish Bottle', 'The Squid Game Glass Bottle looks amazing, but it\'s a bit fragile.', 3, 'Frank88', '2024-10-19', 'frank88@example.com', 1),
(9, 'gina_l', 9, 'Love It!', 'The Stranger Things Funko Pop of Eleven is so cute! A must-have for fans.', 5, 'Gina L.', '2024-10-20', 'gina.l@example.com', 1),
(10, 'harry_p', 10, 'Not Worth It', 'The Witcher Keychain is a bit overpriced for what it is. Small but nice design.', 3, 'Harry P.', '2024-10-21', 'harry.p@example.com', 0),
(11, 'john_doe', 11, 'Amazing Detail', 'The Squid Game Figure looks great! Detailed and worth collecting.', 5, 'John D.', '2024-10-22', 'john.doe@example.com', 1),
(12, 'jane_smith', 12, 'Beautiful Display Piece', 'The Bridgerton Crown Replica is exquisite. Looks amazing on my shelf.', 5, 'Jane S.', '2024-10-23', 'jane.smith@example.com', 1),
(13, 'alice_b', 1, 'Nice Tee', 'The Stranger Things T-Shirt is cool, but the fabric could be softer.', 4, 'Alice B.', '2024-10-24', 'alice.b@example.com', 1),
(14, 'bob_the_builder', 4, 'Very Comfortable', 'The Squid Game Tracksuit is super comfortable. The fit is true to size.', 5, 'Bob B.', '2024-10-25', 'bob.builder@example.com', 1),
(15, 'charlie123', 5, 'Good Quality', 'Stranger Things Mug is well made, perfect for a hot drink.', 5, 'Charlie', '2024-10-26', 'charlie123@example.com', 1),
(16, 'david_k', 8, 'Unique Design', 'Love the Squid Game Glass Bottle. The design is unique and stands out.', 4, 'David K.', '2024-10-27', 'david.k@example.com', 1),
(17, 'emily.r', 9, 'Collector\'s Item', 'Stranger Things Funko Pop is amazing for collectors. Highly recommended.', 5, 'Emily R.', '2024-10-28', 'emily.r@example.com', 1),
(18, 'frank88', 7, 'Functional and Cool', 'The Witcher Tumbler works well and looks great. Perfect for fans.', 5, 'Frank88', '2024-10-29', 'frank88@example.com', 0),
(19, 'gina_l', 2, 'Warm and Cozy', 'The Witcher Hoodie is very comfortable and warm. I wear it all the time.', 5, 'Gina L.', '2024-10-30', 'gina.l@example.com', 1),
(20, 'harry_p', 10, 'Disappointing', 'The Witcher Keychain is smaller than expected and feels cheap.', 2, 'Harry P.', '2024-10-31', 'harry.p@example.com', 0),
(21, 'john_doe', 3, 'Just OK', 'The Bridgerton T-Shirt is just alright. Expected a bit more quality.', 3, 'John D.', '2024-11-01', 'john.doe@example.com', 1),
(22, 'jane_smith', 12, 'Stunning', 'The Bridgerton Crown Replica is beautiful. Looks very regal on my shelf.', 5, 'Jane S.', '2024-11-02', 'jane.smith@example.com', 1),
(23, 'alice_b', 6, 'Elegant Set', 'The Bridgerton Wine Glasses look fantastic. Very elegant design.', 5, 'Alice B.', '2024-11-03', 'alice.b@example.com', 0),
(24, 'bob_the_builder', 8, 'Great Design', 'Squid Game Glass Bottle is stylish but a bit fragile. Handle with care.', 4, 'Bob B.', '2024-11-04', 'bob.builder@example.com', 1),
(25, 'charlie123', 9, 'Awesome Figure', 'The Stranger Things Funko Pop is a great addition to my collection!', 5, 'Charlie', '2024-11-05', 'charlie123@example.com', 1),
(26, 'david_k', 11, 'Worth It!', 'The Squid Game Figure is amazing. Great quality and detail.', 5, 'David K.', '2024-11-06', 'david.k@example.com', 1),
(27, 'emily.r', 4, 'Soft Fabric', 'The Squid Game Tracksuit is super soft and comfy. I love it!', 5, 'Emily R.', '2024-11-07', 'emily.r@example.com', 1),
(28, 'frank88', 1, 'Not Bad', 'Stranger Things T-Shirt is nice but runs a bit small. Order a size up!', 3, 'Frank88', '2024-11-08', 'frank88@example.com', 0),
(29, 'gina_l', 7, 'Sturdy Tumbler', 'The Witcher Tumbler is very sturdy and keeps drinks hot for hours.', 5, 'Gina L.', '2024-11-09', 'gina.l@example.com', 1),
(30, 'harry_p', 5, 'Cool Mug!', 'The Stranger Things Mug looks great and is very durable.', 4, 'Harry P.', '2024-11-10', 'harry.p@example.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `movieduration` time NOT NULL COMMENT 'Movie duration'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`content_id`, `movieduration`) VALUES
(11, '02:01:00'),
(12, '02:19:00'),
(13, '01:58:00'),
(14, '02:18:00'),
(15, '02:06:00'),
(16, '02:04:00'),
(17, '02:16:00'),
(18, '02:05:00'),
(19, '03:29:00'),
(20, '02:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_contains_item`
--

CREATE TABLE `order_contains_item` (
  `order_id` int(11) NOT NULL COMMENT 'The ID of the order',
  `item_id` int(11) NOT NULL COMMENT 'The ID of the merchandise item',
  `quantity` int(11) NOT NULL COMMENT 'The quantity of the item in the order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_contains_item`
--

INSERT INTO `order_contains_item` (`order_id`, `item_id`, `quantity`) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 3),
(2, 4, 1),
(3, 5, 2),
(3, 6, 1),
(4, 7, 3),
(5, 8, 2),
(5, 9, 1),
(6, 10, 4),
(7, 11, 3),
(7, 12, 1),
(8, 1, 2),
(9, 2, 1),
(9, 3, 2),
(10, 4, 3),
(10, 5, 1),
(11, 6, 4),
(11, 7, 1),
(12, 8, 2),
(13, 9, 3),
(13, 10, 1),
(14, 11, 2),
(15, 12, 4),
(16, 1, 3),
(16, 5, 1),
(17, 2, 4),
(17, 6, 2),
(18, 7, 1),
(18, 8, 3),
(19, 9, 2),
(19, 10, 4),
(20, 11, 3),
(21, 12, 2),
(22, 1, 1),
(22, 3, 3),
(23, 4, 2),
(23, 5, 4),
(24, 6, 3),
(25, 7, 2),
(25, 8, 1),
(26, 9, 4),
(27, 10, 2),
(28, 11, 1),
(29, 12, 3),
(30, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_use_coupon`
--

CREATE TABLE `order_use_coupon` (
  `order_id` int(11) NOT NULL COMMENT 'The ID of the order',
  `promo_code` varchar(10) NOT NULL COMMENT 'The coupon code used in the order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_use_coupon`
--

INSERT INTO `order_use_coupon` (`order_id`, `promo_code`) VALUES
(6, 'BLACKFRI'),
(15, 'BLACKFRI'),
(1, 'BRIDGE15'),
(9, 'BRIDGE15'),
(11, 'BRIDGE15'),
(5, 'FALLDEAL'),
(12, 'FALLDEAL'),
(14, 'NEWYEAR5'),
(22, 'NEWYEAR5'),
(23, 'NEWYEAR5'),
(30, 'SPRING25'),
(2, 'SQUID20'),
(12, 'SQUID20'),
(1, 'STRANGE10'),
(13, 'STRANGE10'),
(16, 'STRANGE10'),
(4, 'SUMMER10'),
(9, 'SUMMER10'),
(17, 'SUMMER10'),
(19, 'SUMMER10'),
(25, 'SUMMER10'),
(26, 'SUMMER10'),
(2, 'WITCHER5'),
(6, 'WITCHER5'),
(9, 'WITCHER5'),
(11, 'WITCHER5'),
(13, 'WITCHER5'),
(2, 'XMAS2024'),
(10, 'XMAS2024'),
(20, 'XMAS2024');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `card_number` varchar(19) NOT NULL COMMENT 'Credit card number',
  `username` varchar(20) NOT NULL COMMENT 'The username of the user owning this payment payment method.',
  `expiration_date` char(5) NOT NULL COMMENT 'Expiration date of credit card',
  `security_code` char(3) NOT NULL COMMENT 'Security code of credit card.',
  `name_on_card` varchar(26) NOT NULL COMMENT 'Name on credit card.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`card_number`, `username`, `expiration_date`, `security_code`, `name_on_card`) VALUES
('3714 4963 0399 505', 'emily.r', '09/23', '345', 'Emily Roberts'),
('3787 3449 3676 001', 'emily.r', '08/25', '234', 'Emily Roberts'),
('4111 1111 1111 1111', 'alice_b', '12/25', '123', 'Alice Brown'),
('4111 1111 1111 1117', 'jane_smith', '01/25', '678', 'Jane Smith'),
('4111 1111 1111 1120', 'david_k', '09/26', '012', 'David Knight'),
('4111 1111 1111 1130', 'charlie123', '03/27', '678', 'Charlie Brown'),
('4500 0000 0000 0011', 'bob_the_builder', '11/26', '345', 'Bob Builder'),
('5105 1051 0510 5100', 'harry_p', '03/25', '345', 'Harry Park'),
('5222 2222 2222 2224', 'david_k', '12/24', '012', 'David Knight'),
('5500 0000 0000 0004', 'bob_the_builder', '06/24', '456', 'Bob Builder'),
('5500 0000 0000 0005', 'frank88', '04/24', '567', 'Frank Green'),
('6011 0000 0000 0009', 'charlie123', '10/23', '789', 'Charlie Brown'),
('6011 0000 0000 0010', 'gina_l', '02/27', '890', 'Gina Lee'),
('6011 0000 0000 0022', 'alice_b', '05/23', '234', 'Alice Brown'),
('6200 0000 0000 0003', 'john_doe', '07/24', '901', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_name` char(10) NOT NULL COMMENT 'Plan name',
  `monthly_price` decimal(4,2) NOT NULL COMMENT 'Monthly price',
  `vid_sound_quality` varchar(15) NOT NULL COMMENT 'Video and sound quality',
  `resolution` varchar(10) NOT NULL COMMENT 'Content resolution',
  `ads_enabled_flag` tinyint(1) NOT NULL COMMENT 'Mark if plan is ads enabled.',
  `simul_watch_count` int(1) NOT NULL COMMENT 'Count how many devices are allowed to watch on this account.',
  `download_device_count` int(1) NOT NULL COMMENT 'Count how many devices are allowed to download content using this account.',
  `extra_member_slots` int(1) NOT NULL COMMENT 'Count how many other user accounts you can invite to become extra members.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_name`, `monthly_price`, `vid_sound_quality`, `resolution`, `ads_enabled_flag`, `simul_watch_count`, `download_device_count`, `extra_member_slots`) VALUES
('BASIC', '9.99', 'Stereo', 'SD', 0, 1, 1, 0),
('BASICADS', '6.99', 'Stereo', 'SD', 1, 1, 1, 0),
('MOBILE', '3.99', 'Stereo', 'SD', 0, 1, 1, 0),
('PREMIUM', '19.99', 'Dolby Atmos', 'UHD/4K', 0, 4, 6, 2),
('STANDARD', '15.99', 'Dolby Audio', 'HD', 0, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_name` varchar(20) NOT NULL COMMENT 'Profile name',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `maturity_rating` varchar(3) NOT NULL COMMENT 'Maturity rating',
  `kids_profile_status` tinyint(1) NOT NULL COMMENT 'Mark if the profile is a ''kids profile''.',
  `display_language` varchar(3) NOT NULL COMMENT 'UI display language',
  `audio_sub_language` varchar(10) NOT NULL COMMENT 'Audio and subtitles language',
  `eps_autoplay_flag` tinyint(1) NOT NULL COMMENT 'Mark if next episode in a series should play automatically after the last one ends.',
  `preview_autoplay_flag` tinyint(1) NOT NULL COMMENT 'Mark if a preview for a content should play automatically when hovering.',
  `pin` int(6) DEFAULT NULL COMMENT 'PIN to secure profile access.',
  `game_handle` varchar(20) DEFAULT NULL COMMENT 'Game handle for user profile playing Netflix Games.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_name`, `username`, `maturity_rating`, `kids_profile_status`, `display_language`, `audio_sub_language`, `eps_autoplay_flag`, `preview_autoplay_flag`, `pin`, `game_handle`) VALUES
('AdventureZone', 'bob_the_builder', '18+', 0, 'ENG', 'ENG', 1, 1, 654321, 'bob149'),
('BeastMode', 'frank88', '18+', 0, 'ENG', 'ENG', 1, 1, 223344, 'frank257'),
('CaptainElite', 'harry_p', '18+', 0, 'ENG', 'ENG', 0, 1, 778899, 'harry259'),
('CosmicQueen', 'charlie123', '18+', 0, 'ENG', 'FRE', 0, 1, 112233, 'charlie223'),
('LilBuddy', 'bob_the_builder', 'G', 1, 'ENG', 'GER', 1, 0, NULL, NULL),
('LilDreamer', 'emily.r', 'G', 1, 'ENG', 'POR', 1, 0, NULL, NULL),
('Maverick', 'emily.r', '18+', 0, 'ENG', 'ENG', 0, 1, 998877, 'emily321'),
('MiniExplorer', 'charlie123', 'G', 1, 'ENG', 'ENG', 1, 0, NULL, NULL),
('RogueMaster', 'gina_l', '18+', 0, 'ENG', 'ENG', 1, 1, 445566, 'gina512'),
('SpaceCadet', 'david_k', 'G', 1, 'ENG', 'ITA', 1, 0, NULL, NULL),
('SuperHeroX', 'alice_b', '18+', 0, 'ENG', 'ENG', 1, 1, 123456, 'alice257'),
('TechGuru', 'david_k', '18+', 0, 'ENG', 'ENG', 1, 1, 334455, 'david789'),
('TinyAdventurer', 'frank88', 'G', 1, 'ENG', 'SPA', 1, 0, NULL, NULL),
('TinyTots', 'alice_b', 'G', 1, 'ENG', 'SPA', 1, 0, NULL, NULL),
('WonderKid', 'gina_l', 'G', 1, 'ENG', 'ENG', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscription_id` int(11) NOT NULL COMMENT 'Subscription ID.',
  `plan_name` char(10) NOT NULL COMMENT 'Plan name',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `card_number` varchar(19) NOT NULL COMMENT 'Card number',
  `subscription_date` date NOT NULL COMMENT 'Subscription date',
  `termination_date` date DEFAULT NULL COMMENT 'Termination date. (Null if subscription is still active)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `plan_name`, `username`, `card_number`, `subscription_date`, `termination_date`) VALUES
(1, 'BASIC', 'alice_b', '4111 1111 1111 1111', '2024-01-01', '2024-06-01'),
(2, 'BASICADS', 'alice_b', '6011 0000 0000 0022', '2024-06-02', NULL),
(3, 'MOBILE', 'bob_the_builder', '4500 0000 0000 0011', '2023-03-01', '2024-05-01'),
(4, 'PREMIUM', 'bob_the_builder', '5500 0000 0000 0004', '2024-05-02', NULL),
(5, 'BASIC', 'charlie123', '4111 1111 1111 1130', '2024-02-01', '2024-04-01'),
(6, 'BASICADS', 'charlie123', '6011 0000 0000 0009', '2024-04-02', NULL),
(7, 'MOBILE', 'david_k', '4111 1111 1111 1120', '2023-11-01', '2024-02-01'),
(8, 'PREMIUM', 'david_k', '5222 2222 2222 2224', '2024-02-02', NULL),
(9, 'BASIC', 'emily.r', '3714 4963 0399 505', '2023-10-01', '2024-03-01'),
(10, 'STANDARD', 'emily.r', '3787 3449 3676 001', '2024-03-02', NULL),
(11, 'BASIC', 'frank88', '5500 0000 0000 0005', '2023-09-01', '2024-02-01'),
(12, 'MOBILE', 'frank88', '6011 0000 0000 0010', '2024-02-02', NULL),
(13, 'STANDARD', 'gina_l', '6011 0000 0000 0010', '2023-12-01', '2024-05-01'),
(14, 'PREMIUM', 'gina_l', '5500 0000 0000 0005', '2024-05-02', NULL),
(15, 'BASIC', 'harry_p', '5105 1051 0510 5100', '2023-08-01', '2024-02-01'),
(16, 'STANDARD', 'harry_p', '4111 1111 1111 1117', '2024-02-02', NULL),
(17, 'PREMIUM', 'jane_smith', '6200 0000 0000 0003', '2023-07-01', '2024-01-01'),
(18, 'BASICADS', 'jane_smith', '4111 1111 1111 1117', '2024-01-02', NULL),
(19, 'STANDARD', 'john_doe', '6011 0000 0000 0022', '2024-02-01', '2024-04-01'),
(20, 'PREMIUM', 'john_doe', '4111 1111 1111 1111', '2024-04-02', NULL),
(21, 'BASIC', 'alice_b', '6011 0000 0000 0022', '2024-06-01', '2024-08-01'),
(22, 'PREMIUM', 'alice_b', '4500 0000 0000 0011', '2024-08-02', NULL),
(23, 'MOBILE', 'bob_the_builder', '5500 0000 0000 0004', '2024-07-01', '2024-09-01'),
(24, 'BASICADS', 'bob_the_builder', '4500 0000 0000 0011', '2024-09-02', NULL),
(25, 'STANDARD', 'charlie123', '6011 0000 0000 0009', '2024-05-01', '2024-07-01'),
(26, 'PREMIUM', 'charlie123', '5222 2222 2222 2224', '2024-07-02', NULL),
(27, 'BASIC', 'david_k', '4111 1111 1111 1120', '2024-04-01', '2024-06-01'),
(28, 'PREMIUM', 'david_k', '5222 2222 2222 2224', '2024-06-02', NULL),
(29, 'STANDARD', 'emily.r', '3714 4963 0399 505', '2024-01-01', '2024-03-01'),
(30, 'BASICADS', 'emily.r', '3787 3449 3676 001', '2024-03-02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tv_episode`
--

CREATE TABLE `tv_episode` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID of the episode.',
  `season_no` int(11) NOT NULL COMMENT 'The number of season the episode belongs to.',
  `ep_no` int(11) NOT NULL COMMENT 'The number of the episode.',
  `ep_name` varchar(100) NOT NULL COMMENT 'An episode''s name',
  `description` varchar(300) NOT NULL COMMENT 'The episode''s description',
  `episode_duration` int(11) NOT NULL COMMENT 'An episode''s duration in seconds.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tv_episode`
--

INSERT INTO `tv_episode` (`content_id`, `season_no`, `ep_no`, `ep_name`, `description`, `episode_duration`) VALUES
(1, 1, 1, 'Episode 1: The Awakening', 'The protagonist begins a life-changing investigation into a paradox.', 2730),
(1, 1, 2, 'Episode 2: Paradox Revealed', 'The investigation takes a dramatic turn as new information surfaces.', 2760),
(1, 1, 3, 'Episode 3: The Final Answer', 'All the mysteries come to a head in this thrilling conclusion.', 2830),
(2, 1, 1, 'Episode 1: First Case', 'The lawyer takes on his first case that seems impossible to win.', 2910),
(2, 1, 2, 'Episode 2: Legal Troubles', 'The lawyer faces difficulties as his client’s past comes back to haunt them.', 2940),
(2, 1, 3, 'Episode 3: The Courtroom Battle', 'The lawyer takes the case to court, where things get intense.', 3000),
(3, 1, 1, 'Episode 1: The Beginning', 'Beth Harmon discovers her passion for chess at an early age.', 3000),
(3, 1, 2, 'Episode 2: The Challenge', 'Beth faces her first big competition, a challenging tournament.', 3120),
(3, 1, 3, 'Episode 3: The Rival', 'Beth faces off against her toughest opponent yet in the chess world.', 3090),
(4, 1, 1, 'Episode 1: The Pirate King\'s Will', 'Luffy begins his journey to become the next Pirate King.', 2700),
(4, 1, 2, 'Episode 2: The Straw Hat Crew', 'Luffy gathers his first companions for the adventure ahead.', 2790),
(4, 1, 3, 'Episode 3: The First Battle', 'The crew faces their first major battle with rival pirates.', 2820),
(4, 2, 1, 'Episode 1: The Grand Line', 'The crew sets sail for the Grand Line in search of treasure.', 2820),
(4, 2, 2, 'Episode 2: The Lost Island', 'Luffy and the crew discover an island filled with mysteries.', 2880),
(4, 2, 3, 'Episode 3: The Conqueror', 'A confrontation with a pirate king shakes the crew to their core.', 2850),
(5, 1, 1, 'Episode 1: The Vanishing', 'A young boy mysteriously disappears in Hawkins, Indiana.', 2740),
(5, 1, 2, 'Episode 2: The Upside Down', 'The group of friends discover a strange world beyond our own.', 2880),
(5, 1, 3, 'Episode 3: The Monster', 'The kids face off against a terrifying creature from the Upside Down.', 3030),
(5, 2, 1, 'Episode 1: The Return', 'The gang reunites after some time apart, but danger lurks once again.', 2800),
(5, 2, 2, 'Episode 2: The Terrors of Hawkins', 'More secrets of Hawkins are revealed as the group digs deeper into the mysteries.', 2940),
(5, 2, 3, 'Episode 3: The Final Showdown', 'The group confronts their fears in a climactic battle.', 3000),
(6, 1, 1, 'Episode 1: The New Queen', 'Elizabeth II ascends to the throne after her father\'s sudden death.', 3120),
(6, 1, 2, 'Episode 2: The Burden of Rule', 'Queen Elizabeth struggles with the weight of responsibility.', 3180),
(6, 1, 3, 'Episode 3: The First Crisis', 'A political crisis forces the new Queen to make difficult decisions.', 3240),
(6, 2, 1, 'Episode 1: The Suez Crisis', 'The Queen faces her first international crisis involving the Suez Canal.', 3270),
(6, 2, 2, 'Episode 2: The King\'s Dilemma', 'The Queen\'s husband, Prince Philip, faces his own struggles.', 3330),
(6, 2, 3, 'Episode 3: The Family Dilemma', 'The Queen must navigate familial challenges as well as political ones.', 3380),
(7, 1, 1, 'Episode 1: The Duke and the Duchess', 'The love story between Daphne and Simon begins.', 2760),
(7, 1, 2, 'Episode 2: The Ball', 'A grand ball brings the high society of London together.', 2850),
(7, 1, 3, 'Episode 3: The Secret', 'Daphne discovers a secret about Simon’s past that threatens their relationship.', 2900),
(7, 2, 1, 'Episode 1: The Proposal', 'A shocking proposal changes the course of Daphne and Simon’s future.', 2890),
(7, 2, 2, 'Episode 2: The Return', 'Daphne and Simon deal with the fallout from their decisions.', 2980),
(7, 2, 3, 'Episode 3: The Resolution', 'The couple faces their final challenges, culminating in a heartwarming conclusion.', 3030),
(8, 1, 1, 'Episode 1: The Plan', 'The professor unveils his elaborate plan to rob the Royal Mint of Spain.', 2700),
(8, 1, 2, 'Episode 2: The Robbery', 'The heist begins, and everything quickly escalates.', 2850),
(8, 1, 3, 'Episode 3: The First Obstacle', 'The robbers face their first major challenge during the heist.', 2800),
(8, 2, 1, 'Episode 1: The Escape', 'The crew begins planning their escape after the robbery goes sideways.', 2930),
(8, 2, 2, 'Episode 2: The Betrayal', 'One of the crew members betrays the group, putting everything at risk.', 2950),
(8, 2, 3, 'Episode 3: The Tension', 'Tension builds as the heist reaches its breaking point.', 3000),
(9, 1, 1, 'Episode 1: The Last Wish', 'Geralt of Rivia embarks on his first adventure involving a dangerous wish.', 2700),
(9, 1, 2, 'Episode 2: The Hunt', 'Geralt hunts down a deadly creature that has been terrorizing a village.', 2780),
(9, 1, 3, 'Episode 3: The Witcher\'s Code', 'Geralt faces a moral dilemma regarding the Witcher’s code.', 2900),
(9, 2, 1, 'Episode 1: The Warlock', 'Geralt encounters a powerful warlock who has secrets of his own.', 2820),
(9, 2, 2, 'Episode 2: The Sorceress', 'Geralt forms an unlikely alliance with a sorceress to defeat a greater evil.', 2890),
(9, 2, 3, 'Episode 3: The Betrayal', 'Geralt must make a choice that could alter his fate forever.', 2980),
(10, 1, 1, 'Episode 1: The Game Begins', 'Participants enter the deadly game with their lives at stake.', 2670),
(10, 1, 2, 'Episode 2: The First Challenge', 'The first challenge begins, and the participants realize the stakes.', 2750),
(10, 1, 3, 'Episode 3: The Betrayal', 'A shocking betrayal occurs during the second round of the game.', 2850),
(10, 2, 1, 'Episode 1: The Survivor', 'The few remaining players must face the final game of survival.', 2900),
(10, 2, 2, 'Episode 2: The Winner\'s Dilemma', 'The winner must deal with the consequences of their actions.', 2980),
(10, 2, 3, 'Episode 3: The Price of Victory', 'The final episode reveals the shocking price of victory in the Squid Game.', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `tv_show`
--

CREATE TABLE `tv_show` (
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `series_status` varchar(20) NOT NULL COMMENT 'The current status of the series (e.g., Ongoing, Completed, Canceled)',
  `episode_release_frequency` varchar(20) DEFAULT NULL COMMENT 'Frequency of episode releases (e.g., Weekly, All at Once)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tv_show`
--

INSERT INTO `tv_show` (`content_id`, `series_status`, `episode_release_frequency`) VALUES
(1, 'Ongoing', 'Weekly'),
(2, 'Ongoing', 'All at Once'),
(3, 'Completed', 'All at Once'),
(4, 'Ongoing', 'All at Once'),
(5, 'Ongoing', 'All at Once'),
(6, 'Ongoing', 'All at Once'),
(7, 'Ongoing', 'All at Once'),
(8, 'Completed', 'All at Once'),
(9, 'Ongoing', 'All at Once'),
(10, 'Ongoing', 'All at Once');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `email` varchar(254) NOT NULL COMMENT 'User Email',
  `password` int(64) NOT NULL COMMENT 'User password',
  `date_of_birth` date DEFAULT NULL COMMENT 'User date of birth',
  `gender` varchar(1) DEFAULT NULL COMMENT 'User gender'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`username`, `email`, `password`, `date_of_birth`, `gender`) VALUES
('alice_b', 'alice.b@example.com', 34567890, NULL, NULL),
('bob_the_builder', 'bob.builder@example.com', 45678901, '2000-05-12', 'M'),
('charlie123', 'charlie123@example.com', 56789012, NULL, NULL),
('david_k', 'david.k@example.com', 67890123, NULL, NULL),
('emily.r', 'emily.r@example.com', 78901234, '1995-12-25', 'F'),
('frank88', 'frank88@example.com', 89012345, NULL, NULL),
('gina_l', 'gina.l@example.com', 90123456, '1992-03-08', 'F'),
('harry_p', 'harry.p@example.com', 12345679, NULL, NULL),
('jane_smith', 'jane.smith@example.com', 23456789, '1985-07-21', 'F'),
('john_doe', 'john.doe@example.com', 12345678, '1990-01-15', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `user_download_game`
--

CREATE TABLE `user_download_game` (
  `download_id` int(11) NOT NULL COMMENT 'Download ID',
  `game_name` varchar(50) NOT NULL COMMENT 'Game name',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `download_date` date NOT NULL COMMENT 'The date the game is downloaded by the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_download_game`
--

INSERT INTO `user_download_game` (`download_id`, `game_name`, `username`, `download_date`) VALUES
(1, 'Asphalt Xtreme', 'alice_b', '2024-01-10'),
(2, 'Shatter Remastered', 'alice_b', '2024-11-28'),
(3, 'Stranger Things: 1984', 'alice_b', '2024-12-30'),
(4, 'Asphalt Xtreme', 'bob_the_builder', '2024-11-11'),
(5, 'Exploding Kittens', 'bob_the_builder', '2024-02-12'),
(6, 'Stranger Things: 1984', 'bob_the_builder', '2024-11-30'),
(7, 'Asphalt Xtreme', 'charlie123', '2024-11-05'),
(8, 'Exploding Kittens', 'charlie123', '2024-12-01'),
(9, 'Heads Up!', 'charlie123', '2024-03-05'),
(10, 'Exploding Kittens', 'david_k', '2024-11-10'),
(11, 'Heads Up!', 'david_k', '2024-12-05'),
(12, 'Hextech Mayhem', 'david_k', '2024-04-01'),
(13, 'Heads Up!', 'emily.r', '2024-11-12'),
(14, 'Hextech Mayhem', 'emily.r', '2024-12-12'),
(15, 'Into the Breach', 'emily.r', '2024-05-15'),
(16, 'Hextech Mayhem', 'frank88', '2024-11-15'),
(17, 'Into the Breach', 'frank88', '2024-12-15'),
(18, 'Kentucky Route Zero', 'frank88', '2024-06-20'),
(19, 'Into the Breach', 'gina_l', '2024-11-18'),
(20, 'Kentucky Route Zero', 'gina_l', '2024-12-20'),
(21, 'Moonlighter', 'gina_l', '2024-07-17'),
(22, 'Kentucky Route Zero', 'harry_p', '2024-11-20'),
(23, 'Moonlighter', 'harry_p', '2024-12-22'),
(24, 'Oxenfree', 'harry_p', '2024-08-22'),
(25, 'Heads Up!', 'jane_smith', '2024-12-03'),
(26, 'Moonlighter', 'jane_smith', '2024-11-22'),
(27, 'Oxenfree', 'jane_smith', '2024-12-25'),
(28, 'Shatter Remastered', 'jane_smith', '2024-09-09'),
(29, 'Oxenfree', 'john_doe', '2024-11-25'),
(30, 'Shatter Remastered', 'john_doe', '2024-12-28'),
(31, 'Stranger Things: 1984', 'john_doe', '2024-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `user_shown_ads`
--

CREATE TABLE `user_shown_ads` (
  `showads_id` int(11) NOT NULL COMMENT 'Showing Ads ID',
  `ads_title` varchar(20) NOT NULL COMMENT 'The title of an ad.',
  `user_name` varchar(20) NOT NULL COMMENT 'User name',
  `show_datetime` datetime NOT NULL COMMENT 'The datetime when this ad was shown to the user.',
  `is_skipped` tinyint(1) NOT NULL COMMENT 'Mark if the ad was skipped.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_shown_ads`
--

INSERT INTO `user_shown_ads` (`showads_id`, `ads_title`, `user_name`, `show_datetime`, `is_skipped`) VALUES
(1, 'Electric Cars', 'alice_b', '2024-11-01 08:30:00', 1),
(2, 'Gadget Promotion', 'alice_b', '2024-11-01 09:00:00', 1),
(3, 'Healthy Snacks', 'alice_b', '2024-11-01 09:30:00', 1),
(4, 'Holiday Travel', 'alice_b', '2024-11-01 10:00:00', 0),
(5, 'New Movie Release', 'alice_b', '2024-11-01 10:30:00', 1),
(6, 'Streaming Deals', 'alice_b', '2024-11-01 11:00:00', 1),
(7, 'Electric Cars', 'charlie123', '2024-11-02 08:30:00', 1),
(8, 'Gadget Promotion', 'charlie123', '2024-11-02 09:00:00', 0),
(9, 'Healthy Snacks', 'charlie123', '2024-11-02 09:30:00', 1),
(10, 'Holiday Travel', 'charlie123', '2024-11-02 10:00:00', 1),
(11, 'New Movie Release', 'charlie123', '2024-11-02 10:30:00', 1),
(12, 'Streaming Deals', 'charlie123', '2024-11-02 11:00:00', 1),
(13, 'Electric Cars', 'jane_smith', '2024-11-03 08:30:00', 1),
(14, 'Gadget Promotion', 'jane_smith', '2024-11-03 09:00:00', 1),
(15, 'Healthy Snacks', 'jane_smith', '2024-11-03 09:30:00', 0),
(16, 'Holiday Travel', 'jane_smith', '2024-11-03 10:00:00', 1),
(17, 'New Movie Release', 'jane_smith', '2024-11-03 10:30:00', 1),
(18, 'Streaming Deals', 'jane_smith', '2024-11-03 11:00:00', 1),
(19, 'Electric Cars', 'bob_the_builder', '2024-11-04 08:30:00', 1),
(20, 'Gadget Promotion', 'bob_the_builder', '2024-11-04 09:00:00', 1),
(21, 'Healthy Snacks', 'bob_the_builder', '2024-11-04 09:30:00', 1),
(22, 'Holiday Travel', 'bob_the_builder', '2024-11-04 10:00:00', 0),
(23, 'New Movie Release', 'bob_the_builder', '2024-11-04 10:30:00', 1),
(24, 'Streaming Deals', 'bob_the_builder', '2024-11-04 11:00:00', 1),
(25, 'Electric Cars', 'emily.r', '2024-11-05 08:30:00', 1),
(26, 'Gadget Promotion', 'emily.r', '2024-11-05 09:00:00', 1),
(27, 'Healthy Snacks', 'emily.r', '2024-11-05 09:30:00', 1),
(28, 'Holiday Travel', 'emily.r', '2024-11-05 10:00:00', 0),
(29, 'New Movie Release', 'emily.r', '2024-11-05 10:30:00', 1),
(30, 'Streaming Deals', 'emily.r', '2024-11-05 11:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_view_article`
--

CREATE TABLE `user_view_article` (
  `viewarticle_id` int(11) NOT NULL COMMENT 'View article ID',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `article_title` varchar(100) NOT NULL COMMENT 'Article title',
  `article_view_date` date NOT NULL COMMENT 'The date the article is viewed.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_view_article`
--

INSERT INTO `user_view_article` (`viewarticle_id`, `username`, `article_title`, `article_view_date`) VALUES
(1, 'bob_the_builder', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2024-02-11'),
(2, 'bob_the_builder', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2024-11-15'),
(3, 'bob_the_builder', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2024-12-05'),
(4, 'charlie123', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2024-03-05'),
(5, 'charlie123', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2024-11-17'),
(6, 'charlie123', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2024-12-07'),
(7, 'alice_b', 'The Queen\'s Gambit Cast, News, Videos and more', '2024-01-10'),
(8, 'alice_b', 'The Queen\'s Gambit Cast, News, Videos and more', '2024-11-11'),
(9, 'alice_b', 'The Queen\'s Gambit Cast, News, Videos and more', '2024-12-03'),
(10, 'david_k', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2024-04-01'),
(11, 'david_k', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2024-11-18'),
(12, 'david_k', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2024-12-10'),
(13, 'emily.r', '‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far', '2024-05-15'),
(14, 'emily.r', '‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far', '2024-11-20'),
(15, 'emily.r', '‘Stranger Things’ Animated Series Announced: What The Duffer Brothers Revealed So Far', '2024-12-12'),
(16, 'frank88', '‘Stranger Things’ Cast Red Carpet Premiere Photos', '2024-06-20'),
(17, 'frank88', '‘Stranger Things’ Cast Red Carpet Premiere Photos', '2024-11-22'),
(18, 'frank88', '‘Stranger Things’ Cast Red Carpet Premiere Photos', '2024-12-15'),
(19, 'gina_l', '‘Stranger Things’ Season 4 Easter Eggs', '2024-07-17'),
(20, 'gina_l', '‘Stranger Things’ Season 4 Easter Eggs', '2024-11-25'),
(21, 'gina_l', '‘Stranger Things’ Season 4 Easter Eggs', '2024-12-17'),
(22, 'harry_p', '‘Stranger Things’ Season 4 Episode Length Revealed', '2024-08-22'),
(23, 'harry_p', '‘Stranger Things’ Season 4 Episode Length Revealed', '2024-11-26'),
(24, 'harry_p', '‘Stranger Things’ Season 4 Episode Length Revealed', '2024-12-18'),
(25, 'jane_smith', '‘Stranger Things’ Season 4 First Look Photos', '2024-09-09'),
(26, 'bob_the_builder', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2024-10-05'),
(27, 'charlie123', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2024-10-10'),
(28, 'alice_b', 'The Queen\'s Gambit Cast, News, Videos and more', '2024-10-15'),
(29, 'david_k', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2024-10-20'),
(30, 'frank88', '‘Stranger Things’ Cast Red Carpet Premiere Photos', '2024-10-25'),
(31, 'bob_the_builder', 'Sadie Sink on Max’s Trip to the Upside Down in ‘Stranger Things’ Season 4', '2024-10-05'),
(32, 'charlie123', 'The Duffer Brothers on Why ‘Stranger Things’ Season 4 Is Two Volumes', '2024-10-10'),
(33, 'alice_b', 'The Queen\'s Gambit Cast, News, Videos and more', '2024-10-15'),
(34, 'david_k', 'Who Is Eddie? Steve and Dustin’s ‘Stranger Things’ Friendship', '2024-10-20'),
(35, 'frank88', '‘Stranger Things’ Cast Red Carpet Premiere Photos', '2024-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `user_view_content`
--

CREATE TABLE `user_view_content` (
  `viewcontent_id` int(11) NOT NULL COMMENT 'View Content ID',
  `username` varchar(20) NOT NULL COMMENT 'User name',
  `content_id` int(11) NOT NULL COMMENT 'Content ID',
  `content_view_date` date NOT NULL COMMENT 'The date the content is viewed.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_view_content`
--

INSERT INTO `user_view_content` (`viewcontent_id`, `username`, `content_id`, `content_view_date`) VALUES
(1, 'alice_b', 1, '2024-01-10'),
(2, 'alice_b', 2, '2024-03-01'),
(3, 'bob_the_builder', 2, '2024-01-12'),
(4, 'charlie123', 3, '2024-01-15'),
(5, 'bob_the_builder', 4, '2024-03-03'),
(6, 'david_k', 4, '2024-01-18'),
(7, 'emily.r', 5, '2024-01-20'),
(8, 'charlie123', 6, '2024-03-05'),
(9, 'frank88', 6, '2024-01-22'),
(10, 'gina_l', 7, '2024-01-25'),
(11, 'david_k', 8, '2024-03-08'),
(12, 'harry_p', 8, '2024-01-27'),
(13, 'jane_smith', 9, '2024-01-30'),
(14, 'emily.r', 10, '2024-03-10'),
(15, 'john_doe', 10, '2024-02-01'),
(16, 'alice_b', 11, '2024-02-05'),
(17, 'bob_the_builder', 12, '2024-02-07'),
(18, 'frank88', 12, '2024-03-12'),
(19, 'charlie123', 13, '2024-02-09'),
(20, 'david_k', 14, '2024-02-11'),
(21, 'gina_l', 14, '2024-03-15'),
(22, 'emily.r', 15, '2024-02-13'),
(23, 'frank88', 16, '2024-02-16'),
(24, 'harry_p', 16, '2024-03-17'),
(25, 'gina_l', 17, '2024-02-18'),
(26, 'harry_p', 18, '2024-02-20'),
(27, 'jane_smith', 18, '2024-03-19'),
(28, 'jane_smith', 19, '2024-02-22'),
(29, 'john_doe', 20, '2024-02-24'),
(30, 'john_doe', 20, '2024-03-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_title`);

--
-- Indexes for table `apparel`
--
ALTER TABLE `apparel`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `apparel_color`
--
ALTER TABLE `apparel_color`
  ADD PRIMARY KEY (`item_id`,`color`);

--
-- Indexes for table `apparel_size`
--
ALTER TABLE `apparel_size`
  ADD PRIMARY KEY (`item_id`,`size`);

--
-- Indexes for table `article_tudum`
--
ALTER TABLE `article_tudum`
  ADD PRIMARY KEY (`article_title`),
  ADD KEY `fk_article_contentid` (`content_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_name`);

--
-- Indexes for table `author_write_article`
--
ALTER TABLE `author_write_article`
  ADD PRIMARY KEY (`author_name`,`article_title`),
  ADD KEY `fk_write_articletitle` (`article_title`);

--
-- Indexes for table `collectible`
--
ALTER TABLE `collectible`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `content_cast`
--
ALTER TABLE `content_cast`
  ADD PRIMARY KEY (`content_id`,`cast`);

--
-- Indexes for table `content_director`
--
ALTER TABLE `content_director`
  ADD PRIMARY KEY (`content_id`,`director`);

--
-- Indexes for table `content_writer`
--
ALTER TABLE `content_writer`
  ADD PRIMARY KEY (`content_id`,`writer`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`promo_code`);

--
-- Indexes for table `coupon_eligiblefor_item`
--
ALTER TABLE `coupon_eligiblefor_item`
  ADD PRIMARY KEY (`promo_code`,`item_id`),
  ADD KEY `fk_validfor_itemid` (`item_id`);

--
-- Indexes for table `drinkware`
--
ALTER TABLE `drinkware`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_name`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`category`,`game_name`),
  ADD KEY `fk_mtval_gamecategory` (`game_name`);

--
-- Indexes for table `game_developer`
--
ALTER TABLE `game_developer`
  ADD PRIMARY KEY (`developer`,`game_name`),
  ADD KEY `fk_mtval_gamedev` (`game_name`);

--
-- Indexes for table `game_gamemode`
--
ALTER TABLE `game_gamemode`
  ADD PRIMARY KEY (`game_name`,`game_mode`);

--
-- Indexes for table `game_supported_languages`
--
ALTER TABLE `game_supported_languages`
  ADD PRIMARY KEY (`game_name`,`supported_lang`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `genre_contain_content`
--
ALTER TABLE `genre_contain_content`
  ADD PRIMARY KEY (`genre_id`,`content_id`),
  ADD KEY `fk_contain_contentid` (`content_id`);

--
-- Indexes for table `merchandise_item`
--
ALTER TABLE `merchandise_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `merchandise_order`
--
ALTER TABLE `merchandise_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_username` (`username`);

--
-- Indexes for table `merchandise_review`
--
ALTER TABLE `merchandise_review`
  ADD PRIMARY KEY (`review_id`,`username`,`item_id`),
  ADD KEY `fk_review_username` (`username`),
  ADD KEY `fk_review_itemid` (`item_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `order_contains_item`
--
ALTER TABLE `order_contains_item`
  ADD PRIMARY KEY (`order_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `order_use_coupon`
--
ALTER TABLE `order_use_coupon`
  ADD PRIMARY KEY (`order_id`,`promo_code`),
  ADD UNIQUE KEY `unique_order_coupon` (`order_id`,`promo_code`),
  ADD KEY `promo_code` (`promo_code`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`card_number`),
  ADD KEY `fk_paymentmethod_username` (`username`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_name`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_name`,`username`),
  ADD KEY `fk_profile_username` (`username`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `fk_subscription_cardnumber` (`card_number`),
  ADD KEY `fk_subscrption_username` (`username`),
  ADD KEY `fk_subscription_planname` (`plan_name`);

--
-- Indexes for table `tv_episode`
--
ALTER TABLE `tv_episode`
  ADD PRIMARY KEY (`content_id`,`season_no`,`ep_no`);

--
-- Indexes for table `tv_show`
--
ALTER TABLE `tv_show`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_download_game`
--
ALTER TABLE `user_download_game`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `username` (`username`),
  ADD KEY `game_name` (`game_name`);

--
-- Indexes for table `user_shown_ads`
--
ALTER TABLE `user_shown_ads`
  ADD PRIMARY KEY (`showads_id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `ads_title` (`ads_title`);

--
-- Indexes for table `user_view_article`
--
ALTER TABLE `user_view_article`
  ADD PRIMARY KEY (`viewarticle_id`),
  ADD KEY `fk_viewarticle_username` (`username`),
  ADD KEY `fk_viewarticle_articletitle` (`article_title`);

--
-- Indexes for table `user_view_content`
--
ALTER TABLE `user_view_content`
  ADD PRIMARY KEY (`viewcontent_id`),
  ADD KEY `fk_viewcontent_username` (`username`),
  ADD KEY `fk_viewcontent_contentid` (`content_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Content ID', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Genre ID', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `merchandise_order`
--
ALTER TABLE `merchandise_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Order''s ID', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_download_game`
--
ALTER TABLE `user_download_game`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Download ID', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_view_article`
--
ALTER TABLE `user_view_article`
  MODIFY `viewarticle_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'View article ID', AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_view_content`
--
ALTER TABLE `user_view_content`
  MODIFY `viewcontent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'View Content ID', AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apparel`
--
ALTER TABLE `apparel`
  ADD CONSTRAINT `fk_apparel_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`);

--
-- Constraints for table `apparel_color`
--
ALTER TABLE `apparel_color`
  ADD CONSTRAINT `fk_color_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`);

--
-- Constraints for table `apparel_size`
--
ALTER TABLE `apparel_size`
  ADD CONSTRAINT `fk_size_itemid` FOREIGN KEY (`item_id`) REFERENCES `apparel` (`item_id`);

--
-- Constraints for table `article_tudum`
--
ALTER TABLE `article_tudum`
  ADD CONSTRAINT `fk_article_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `author_write_article`
--
ALTER TABLE `author_write_article`
  ADD CONSTRAINT `fk_write_articletitle` FOREIGN KEY (`article_title`) REFERENCES `article_tudum` (`article_title`),
  ADD CONSTRAINT `fk_write_authorname` FOREIGN KEY (`author_name`) REFERENCES `author` (`author_name`);

--
-- Constraints for table `collectible`
--
ALTER TABLE `collectible`
  ADD CONSTRAINT `fk_collectible_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`);

--
-- Constraints for table `content_cast`
--
ALTER TABLE `content_cast`
  ADD CONSTRAINT `fk_cast_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `content_director`
--
ALTER TABLE `content_director`
  ADD CONSTRAINT `fk_director_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `content_writer`
--
ALTER TABLE `content_writer`
  ADD CONSTRAINT `fk_writer_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `coupon_eligiblefor_item`
--
ALTER TABLE `coupon_eligiblefor_item`
  ADD CONSTRAINT `fk_validfor_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`),
  ADD CONSTRAINT `fk_validfor_promocode` FOREIGN KEY (`promo_code`) REFERENCES `coupon` (`promo_code`);

--
-- Constraints for table `drinkware`
--
ALTER TABLE `drinkware`
  ADD CONSTRAINT `fk_drinkware_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`);

--
-- Constraints for table `game_category`
--
ALTER TABLE `game_category`
  ADD CONSTRAINT `fk_mtval_gamecategory` FOREIGN KEY (`game_name`) REFERENCES `game` (`game_name`);

--
-- Constraints for table `game_developer`
--
ALTER TABLE `game_developer`
  ADD CONSTRAINT `fk_mtval_gamedev` FOREIGN KEY (`game_name`) REFERENCES `game` (`game_name`);

--
-- Constraints for table `game_gamemode`
--
ALTER TABLE `game_gamemode`
  ADD CONSTRAINT `fk_mtval_gamemode` FOREIGN KEY (`game_name`) REFERENCES `game` (`game_name`);

--
-- Constraints for table `game_supported_languages`
--
ALTER TABLE `game_supported_languages`
  ADD CONSTRAINT `fk_suplang_gamename` FOREIGN KEY (`game_name`) REFERENCES `game` (`game_name`);

--
-- Constraints for table `genre_contain_content`
--
ALTER TABLE `genre_contain_content`
  ADD CONSTRAINT `fk_contain_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`),
  ADD CONSTRAINT `fk_contain_genreid` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `merchandise_order`
--
ALTER TABLE `merchandise_order`
  ADD CONSTRAINT `fk_order_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `merchandise_review`
--
ALTER TABLE `merchandise_review`
  ADD CONSTRAINT `fk_review_itemid` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`),
  ADD CONSTRAINT `fk_review_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_movie_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `order_contains_item`
--
ALTER TABLE `order_contains_item`
  ADD CONSTRAINT `order_contains_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `merchandise_item` (`item_id`),
  ADD CONSTRAINT `order_contains_item_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `merchandise_order` (`order_id`);

--
-- Constraints for table `order_use_coupon`
--
ALTER TABLE `order_use_coupon`
  ADD CONSTRAINT `order_use_coupon_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `merchandise_order` (`order_id`),
  ADD CONSTRAINT `order_use_coupon_ibfk_2` FOREIGN KEY (`promo_code`) REFERENCES `coupon` (`promo_code`);

--
-- Constraints for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `fk_paymentmethod_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_profile_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `fk_subscription_cardnumber` FOREIGN KEY (`card_number`) REFERENCES `payment_method` (`card_number`),
  ADD CONSTRAINT `fk_subscription_planname` FOREIGN KEY (`plan_name`) REFERENCES `plan` (`plan_name`),
  ADD CONSTRAINT `fk_subscrption_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `tv_episode`
--
ALTER TABLE `tv_episode`
  ADD CONSTRAINT `tv_episode_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `tv_show` (`content_id`);

--
-- Constraints for table `tv_show`
--
ALTER TABLE `tv_show`
  ADD CONSTRAINT `fk_tvshow_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `user_download_game`
--
ALTER TABLE `user_download_game`
  ADD CONSTRAINT `user_download_game_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`),
  ADD CONSTRAINT `user_download_game_ibfk_2` FOREIGN KEY (`game_name`) REFERENCES `game` (`game_name`);

--
-- Constraints for table `user_shown_ads`
--
ALTER TABLE `user_shown_ads`
  ADD CONSTRAINT `user_shown_ads_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `user_account` (`username`),
  ADD CONSTRAINT `user_shown_ads_ibfk_2` FOREIGN KEY (`ads_title`) REFERENCES `ads` (`ads_title`);

--
-- Constraints for table `user_view_article`
--
ALTER TABLE `user_view_article`
  ADD CONSTRAINT `fk_viewarticle_articletitle` FOREIGN KEY (`article_title`) REFERENCES `article_tudum` (`article_title`),
  ADD CONSTRAINT `fk_viewarticle_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);

--
-- Constraints for table `user_view_content`
--
ALTER TABLE `user_view_content`
  ADD CONSTRAINT `fk_viewcontent_contentid` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`),
  ADD CONSTRAINT `fk_viewcontent_username` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
