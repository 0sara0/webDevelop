SET NAMES utf8 ;
create database if not exists quran;
use quran;

CREATE TABLE `quran` (
  `id` int(4) NOT NULL auto_increment,
  `text` text NOT NULL,
  `sura` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


INSERT INTO `quran` VALUES
(1,'بِسمِ اللَّهِ الرَّحمٰنِ الرَّحيمِ',1),
(2,'الحَمدُ لِلَّهِ رَبِّ العٰلَمينَ',1),
(3,'الرَّحمٰنِ الرَّحيمِ',1),
(4,'مٰلِكِ يَومِ الدّينِ',1),
(5,'إِيّاكَ نَعبُدُ وَإِيّاكَ نَستَعينُ',1),
(6,'اهدِنَا الصِّرٰطَ المُستَقيمَ',1),
(7,'صِرٰطَ الَّذينَ أَنعَمتَ عَلَيهِم غَيرِ المَغضوبِ عَلَيهِم وَلَا الضّالّينَ',1);




