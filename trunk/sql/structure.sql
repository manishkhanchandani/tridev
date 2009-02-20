-- --------------------------------------------------------

-- 
-- Table structure for table `albums`
-- 

CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `name` varchar(100)  default NULL,
  `public` int(1) NOT NULL default '1',
  PRIMARY KEY  (`album_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `albums_pics`
-- 

CREATE TABLE `albums_pics` (
  `pic_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `album_id` int(11) NOT NULL default '0',
  `picture` varchar(255)  default NULL,
  `public` int(1) NOT NULL default '1',
  PRIMARY KEY  (`pic_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `friends`
-- 

CREATE TABLE `friends` (
  `user_id` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `friends_tmp`
-- 

CREATE TABLE `friends_tmp` (
  `user_id` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM ;

-- --------------------------------------------------------

-- 
-- Table structure for table `hobbies`
-- 

CREATE TABLE `hobbies` (
  `user_id` int(11) NOT NULL default '0',
  `hobby` int(11) NOT NULL default '0',
  KEY `hobby` (`hobby`)
) ENGINE=MyISAM ;

-- --------------------------------------------------------

-- 
-- Table structure for table `hobby_data`
-- 

CREATE TABLE `hobby_data` (
  `hobby` int(11) NOT NULL auto_increment,
  `name` varchar(25)  default NULL,
  PRIMARY KEY  (`hobby`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `ignorelist`
-- 

CREATE TABLE `ignorelist` (
  `user_id` int(11) NOT NULL default '0',
  `ignore_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `profile1`
-- 

CREATE TABLE `profile1` (
  `user_id` int(11) NOT NULL,
  `gender` enum('Male','Female')  default NULL,
  `bday` int(2) default NULL,
  `bmonth` int(2) default NULL,
  `byear` int(4) default NULL,
  `marital_status` int(2) default NULL,
  `religion` int(4) default NULL,
  `caste` int(4) default NULL,
  `height` int(4) default NULL,
  `weight` int(4) default NULL,
  `body` int(2) default NULL,
  `hair` int(2) default NULL,
  `skin_color` int(4) default NULL,
  `income` int(2) default NULL,
  `education` int(4) default NULL,
  `profession` int(4) default NULL,
  `country` int(4) default NULL,
  `provience` int(11) default NULL,
  `city` int(11) default NULL,
  `smoke` int(1) default NULL,
  `drink` int(1) default NULL,
  `food` int(1) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `profile2`
-- 

CREATE TABLE `profile2` (
  `user_id` int(11) NOT NULL,
  `myself` text ,
  `myfamily` text ,
  `phone` varchar(200)  default NULL,
  `image` varchar(255)  default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `scrapbook`
-- 

CREATE TABLE `scrapbook` (
  `scrap_id` int(11) NOT NULL auto_increment,
  `to_user_id` int(11) NOT NULL,
  `message` text  NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `scrap_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`scrap_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `site_polls`
-- 

CREATE TABLE `site_polls` (
  `poll_id` int(11) NOT NULL auto_increment,
  `question` text ,
  `option1` text ,
  `option2` text ,
  `option3` text ,
  `option4` text ,
  `option5` text ,
  `option6` text ,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`poll_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `site_polls_result`
-- 

CREATE TABLE `site_polls_result` (
  `result_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `option_num` int(2) default NULL,
  `poll_id` int(11) default NULL,
  PRIMARY KEY  (`result_id`)
) ENGINE=MyISAM;

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL auto_increment,
  `email` varchar(150)  default NULL,
  `password` varchar(50)  default NULL,
  `name` varchar(100)  default NULL,
  `verify_code` varchar(100)  default NULL,
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `role` enum('Admin','Moderator','User')  NOT NULL default 'User',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM ;

-- --------------------------------------------------------

-- 
-- Table structure for table `user_ratings`
-- 

CREATE TABLE `user_ratings` (
  `rating_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `rating` int(2) NOT NULL default '0',
  `from_user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`rating_id`)
) ENGINE=MyISAM;
