-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2018 at 07:03 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, '12.jpg', '12 Strong', '2018', '130 min', '12 Strong tells the story of the first Special Forces team deployed to Afghanistan after 9/11; under the leadership of a new captain, the team must work with an Afghan warlord to take down for the Taliban.', '12.mp4', '19 January 2018'),
(2, 'rendel.jpg', 'Rendel', '2017', '1h 46m', 'Rendel is a 2017 Finnish superhero film written, produced and directed by Jesse Haaja. The film is based on Haaja\'s self-created superhero, Rendel. Lead roles are played by Kris Gummerus, Matti Onnismaa, Rami Rusinen and Renne Korppila. The rest of the cast includes Alina Tomnikov, Tero Salenius, Aake Kalliala, Anu Palevaara and Kristina Karjalainen.', 'rendel.mp4', 'July 21, 2017'),
(3, 'ff9.jpg', 'Fast and Furious 9 ', '2017', '2h 17m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan’s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', 'ff9.mp4', 'March 3,2017'),
(4, 'mission-imp.jpg', 'Mission Impossible ', '2017', '2h', 'When an IMF mission ends badly, the world is faced with dire consequences. As Ethan Hunt takes it upon himself to fulfill his original briefing, the CIA begin to question his loyalty and his motives. Hunt finds himself in a race against time, hunted by assassins and former allies while trying to prevent a global catastrophe.', 'missionimp.mp4', 'June 28,2017'),
(5, 'house.jpg', 'The house', '2017', '2h 9min', 'During their visit to Bucknell University, husband and wife Scott (Ferrell) and Kate Johansen (Poehler) warn their daughter of the dangers being in college. Alex (Simpkins) acknowledges her parents warnings and expressed her interest to attend the same University her parents went to. Alex gets accepted to the University which the Johansens expect to be funded by their community\'s scholarship program.', 'thehouse.mp4', 'March 17, 2017'),
(6, 'gamenight.jpg', 'Game Night', '2016', '2h 19m', 'Game Night is a 2018 American black comedy film directed by John Francis Daley and Jonathan Goldstein and written by Mark Perez. The film stars Jason Bateman and Rachel McAdams.', 'gamenight.mp4', 'November 4, 2016'),
(7, 'party.jpg', 'Life of the Party', '2016', '1h 48m', 'Life of the Party is an upcoming comedy film directed by Ben Falcone and written by Falcone and Melissa McCarthy. The film stars McCarthy, Molly Gordon, Gillian Jacobs, Maya Rudolph, Julie Bowen, Matt Walsh, Debby Ryan, Stephen Root and Jacki Weaver. Produced by On the Day, the film is scheduled to be released May 11, 2018 by Warner Bros. Pictures.', 'lifeoftheparty.mp4', 'Febuary 12, 2016'),
(8, 'downsizing.jpg', 'Downsizing', '2016', '1h 56m', 'Paul and Audrey Safranek are a married couple in Omaha with financial issues. At a college reunion, they encounter Dave and Carol Johnson who have \"downsized,\" an irreversible process invented 15 years earlier that involves shrinking humans to a height of five inches. ', 'downsizing.mp4', 'November 11, 2016'),
(9, 'cruella.jpg', 'Cruella', '2016', '1h 46m', 'Anita soon discovers that Perdy is pregnant and is then informed by Nanny that she (Anita) is, too, much to her shock. Some time later, Cruella visits their home and expresses contempt upon meeting Roger. Her initial disgust at them having a baby turns to excitement when she finds out Perdy is expecting too. ', 'cruella.mp4', 'Febuary 26, 2016'),
(10, 'women.jpg', 'Certain Women', '2016', '1h 32m', 'Certain Women is a 2016 American drama film edited, written, and directed by Kelly Reichardt. Based on three short stories from Maile Meloy\'s collections, Half in Love and Both Ways Is the Only Way I Want It, the film stars Laura Dern, Kristen Stewart, Michelle Williams, Lily Gladstone, James Le Gros, and Jared Harris.\r\n\r\n', 'certainwomen.mp4', 'November 4, 2016'),
(11, 'seagull.jpg', 'The Seagull', '2015', '2h 36m', 'An aging actress named Irina Arkadina pays summer visits to her brother Pjotr Nikolayevich Sorin and her son Konstantin on a country estate. On one occasion, she brings Boris Trigorin, a successful novelist and her lover. Nina, a free and innocent girl on a neighboring estate who is in a relationship with Konstantin, falls in love with Boris.', 'theseagull.mp4', 'January 8, 2015'),
(12, 'beach.jpg', 'On Chesil Beach', '2015', '1h 57m', 'A 2017 British drama film directed by Dominic Cooke in his motion picture directorial debut. Ian McEwan adapted his own 2007 Booker Prize-nominated novella On Chesil Beach. It stars Saoirse Ronan and Billy Howle. The film tells about young spouses Florence and Edward, who destroy their marriage because of fear of intimate relations.\r\n', 'OnChesilBeach.mp4', 'November 25, 2015'),
(13, 'christmas.jpeg', 'All I Want For Christmas', '2015', '2h 3m', 'All I Want for Christmas is a 1991 American romantic comedy film directed by Robert Lieberman, and starring Harley Jane Kozak, Lauren Bacall, Thora Birch, Ethan Randall', 'christmas.mp4', 'October 9, 2015'),
(14, 'beyond.jpg', 'Beyond Beyond', '2015', '1h 46m', 'Johan is a young bunny whose life is torn apart when his beloved mother is taken away by the Feather King to the afterlife after she develops a bad cough. Unwilling to accept that his mother is gone, Johan plots to travel to the other side and bring her back. He finally gains his chance when an old dog gives Johan his ticket to the afterlife.', 'beyondbeyond.mp4', 'April 15, 2015'),
(15, 'gnomealone.jpg', 'Gnome Alone', '2015', '2h 16m', 'The film centers on a centuries-old war waged between the grizzled Gnomes who protect earth and the wacky and hungry Troggs determined to consume everything in sight. When the reluctant high school student Chloe (Becky G) discovers that her new home’s garden gnomes are not what they seem, she must decide between the pursuit of a desired high school life or taking up the fight against the Troggs.', 'gnomealone.mp4', 'December 18, 2015'),
(16, 'monkeyking.jpg', 'Monkey King', '2014', '1h 47m', 'A 2014 Hong Kong[1]-Chinese[3] action-fantasy film directed by Cheang Pou-soi and starring Donnie Yen as the titular protagonist. Yen also serves as the film\'s action director. Production began in Beijing on 18 October 2010[5] and was filmed in 3D.[6] The plot is based on an episode of Journey to the West, a Chinese literary classic written in the Ming Dynasty by Wu Cheng\'en', 'monkeyking.mp4', 'October 15, 2014'),
(17, 'neoyokio.jpg', 'Neo Yokio', '2014', '2h 1m', 'An American-Japanese co-produced animated television series created by Ezra Koenig of American rock band Vampire Weekend, and produced by Japanese anime studios Production I.G. and Studio Deen. The first season, consisting of six episodes, premiered on Netflix', 'neoyokio.mp4', 'August 1, 2014'),
(18, 'ozzy.jpg', 'Ozzy', '2013', '1h 30m', 'A short time after the events of the first film, Littlefoot and his friends are living happily in their new home in the Great Valley, under their families\' watchful eyes. One day, the gang attempts to get to the sheltering grass to play, but land in the sinking sand surrounding it. The grownups come and save them, and afterwards chastise them for crossing the sinking sand without help.', 'ozzy.mp4', 'September 27, 2013'),
(19, 'paddington.jpg', 'Paddington', '2013', '1h 31m', 'In the deep jungles of darkest Peru, British geographer Montgomery Clyde happens upon a previously unknown species of bear. He is about to shoot it to take back a specimen to the United Kingdom when another bear playfully takes his gun away. He learns that this family of bears is intelligent and can learn English, and that they have a deep appetite for marmalade. He names them Lucy and Pastuzo. As he departs, he throws his hat to Pastuzo and tells the bears that they are always welcome should they wish to go to London.', 'paddington.mp4', 'October 4, 2013'),
(20, 'bossbaby.jpg', 'The Boss Baby', '2012', '2h 7m', 'A man named Tim Templeton tells a story about his 7-year-old self who lives with his parents, Ted and Janice. Ted and Janice work in a puppy factory called Puppy Co. founded by a man named Francis E. Francis. One day, Tim is surprised when an infant wearing a business suit shows up in a taxi at his house, and Ted and Janice call him Tim\'s little brother. Tim is envious of the attention the baby receives, not to mention suspicious when the infant acts odd around him.', 'thebossbaby.mp4', 'November 21, 2012'),
(22, 'bp.jpg', 'Black Panther ', '2018', '134 min', 'Centuries ago, five African tribes war over a meteorite containing vibranium. One warrior ingests a \"heart-shaped herb\" affected by the metal and gains superhuman abilities, becoming the first \"Black Panther\". He unites all but the Jabari Tribe to form the nation of Wakanda. The Wakandans use the vibranium to develop advanced technology and isolate themselves from the world by posing as a Third World country.', 'bp.mp4', 'February 16, 2018 '),
(23, 'getout.jpeg', 'Get Out', '2017', '103 min', 'Black photographer Chris Washington reluctantly agrees to meet the family of his white girlfriend Rose Armitage. During their drive to the family\'s countryside estate, they hit a deer and report the incident. The white policeman asks for Chris\'s identification even though he was not driving, but Rose intervenes and the incident goes unrecorded.', 'getout.mp4', 'February 24, 2017 '),
(24, 'shape.jpg', 'The Shape of Water', '2017', '123 min', 'Elisa Esposito, who was found in a river as an orphaned child with wounds on her neck, is mute, and communicates through sign language. She lives alone in an apartment above a cinema, and works as a cleaning-woman at a secret government laboratory in Baltimore at the height of the Cold War. Her friends are her closeted next-door neighbor Giles, a struggling advertising illustrator who shares a strong bond with her, and her co-worker Zelda, a woman who also serves as her interpreter at work.', 'shape.mp4', 'December 1, 2017'),
(25, 'ww.jpg', 'Wonder Woman', '2017', '141 min', 'In present-day Paris, Diana receives a photographic plate from Wayne Enterprises of herself and four men taken during World War I, prompting her to recall her past. Daughter of Queen Hippolyta, Diana was raised on the hidden island of Themyscira, home to the Amazonian warrior women created by Zeus to protect mankind. Hippolyta shares the Amazonian history with Diana, including how Ares, Zeus\'s son, became jealous of humanity and orchestrated its destruction.', 'ww.mp4', 'June 2, 2017'),
(26, 'post.jpg', 'The Post', '2017', '113 min', 'In 1966 Vietnam, State Department military analyst Daniel Ellsberg accompanies U.S. troops in combat, documenting the progress of U.S. military activities in the region for Secretary of Defense Robert McNamara. On the return flight home, McNamara expresses to Ellsberg and William Macomber his view that the war in Vietnam is hopeless, yet, upon landing, McNamara expresses to the press his confidence in the war effort. Ellsberg overhears this, and becomes disillusioned.', 'post.mp4', 'December 22, 2017');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 4),
(7, 4, 1),
(8, 4, 2),
(9, 4, 4),
(10, 5, 3),
(11, 5, 4),
(12, 6, 3),
(13, 7, 3),
(14, 8, 5),
(15, 8, 2),
(35, 11, 2),
(36, 11, 5),
(39, 12, 5),
(40, 13, 3),
(41, 14, 2),
(42, 14, 3),
(43, 15, 2),
(44, 15, 3),
(45, 16, 3),
(46, 17, 2),
(47, 18, 3),
(48, 19, 2),
(49, 19, 4),
(50, 20, 3),
(51, 22, 1),
(52, 22, 4),
(53, 22, 2),
(54, 23, 4),
(55, 23, 5),
(56, 24, 5),
(57, 25, 1),
(58, 25, 2),
(59, 26, 5),
(60, 9, 4),
(61, 9, 5),
(62, 10, 5),
(63, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'Hana', 'Hana', '123', 'ht@gmail.com', '2018-04-06 02:32:34', '::1'),
(2, 'blah', 'blah', 'blah', 'blah', '2018-04-06 19:06:58', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
