-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table mangos.fishing_loot_template
DROP TABLE IF EXISTS `fishing_loot_template`;
CREATE TABLE IF NOT EXISTS `fishing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for junk loot at fishing fail (if allowed by config option)',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `condition_id` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

-- Dumping data for table mangos.fishing_loot_template: 256 rows
DELETE FROM `fishing_loot_template`;
/*!40000 ALTER TABLE `fishing_loot_template` DISABLE KEYS */;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
	(3496, 11002, 100, 1, -11002, 1, 0),
	(3489, 11002, 100, 1, -11002, 1, 0),
	(115, 11003, 100, 1, -11003, 1, 0),
	(2, 11003, 100, 1, -11003, 1, 0),
	(1, 11000, 100, 1, -11000, 1, 0),
	(3482, 11003, 100, 1, -11003, 1, 0),
	(3528, 11000, 100, 1, -11000, 1, 0),
	(3527, 11000, 100, 1, -11000, 1, 0),
	(46, 11010, 100, 1, -11010, 1, 0),
	(2397, 11005, 100, 1, -11005, 1, 0),
	(297, 11009, 100, 1, -11009, 1, 0),
	(2398, 11003, 100, 1, -11003, 1, 0),
	(3317, 11009, 100, 1, -11009, 1, 0),
	(307, 11009, 100, 1, -11009, 1, 0),
	(328, 11007, 100, 1, -11007, 1, 0),
	(327, 11007, 100, 1, -11007, 1, 0),
	(382, 11101, 100, 1, -11101, 1, 0),
	(382, 6651, 0.1, 0, 1, 1, 0),
	(457, 11003, 100, 1, -11003, 1, 0),
	(406, 11004, 100, 1, -11004, 1, 0),
	(141, 11000, 100, 1, -11000, 1, 0),
	(4047, 11007, 100, 1, -11007, 1, 0),
	(2079, 11007, 100, 1, -11007, 1, 0),
	(518, 11007, 100, 1, -11007, 1, 0),
	(517, 11007, 100, 1, -11007, 1, 0),
	(537, 11106, 100, 1, -11106, 1, 0),
	(405, 11006, 100, 1, -11006, 1, 0),
	(636, 11101, 100, 1, -11101, 1, 0),
	(463, 11101, 100, 1, -11101, 1, 0),
	(493, 11008, 100, 1, -11008, 1, 0),
	(2322, 11001, 100, 1, -11001, 1, 0),
	(718, 11102, 100, 1, -11102, 1, 0),
	(388, 11102, 100, 1, -11102, 1, 0),
	(387, 11102, 100, 1, -11102, 1, 0),
	(386, 11102, 100, 1, -11102, 1, 0),
	(719, 11099, 100, 1, -11099, 1, 0),
	(17, 11003, 100, 1, -11003, 1, 0),
	(796, 11006, 100, 1, -11006, 1, 0),
	(12, 11000, 100, 1, -11000, 1, 0),
	(85, 11099, 100, 1, -11099, 1, 0),
	(2979, 11000, 100, 1, -11000, 1, 0),
	(814, 11000, 100, 1, -11000, 1, 0),
	(367, 11000, 100, 1, -11000, 1, 0),
	(3526, 11000, 100, 1, -11000, 1, 0),
	(215, 11000, 100, 1, -11000, 1, 0),
	(295, 11005, 100, 1, -11005, 1, 0),
	(294, 11005, 100, 1, -11005, 1, 0),
	(3515, 11002, 100, 1, -11002, 1, 0),
	(3508, 11002, 100, 1, -11002, 1, 0),
	(3507, 11002, 100, 1, -11002, 1, 0),
	(38, 11002, 100, 1, -11002, 1, 0),
	(38, 6317, 25, 0, 1, 1, 0),
	(44, 11004, 100, 1, -11004, 1, 0),
	(44, 1467, -100, 0, 1, 1, 0),
	(11, 11004, 100, 1, -11004, 1, 0),
	(2402, 11005, 100, 1, -11005, 1, 0),
	(2365, 11005, 100, 1, -11005, 1, 0),
	(271, 11005, 100, 1, -11005, 1, 0),
	(267, 11004, 100, 1, -11004, 1, 0),
	(10, 11004, 100, 1, -11004, 1, 0),
	(1112, 11010, 100, 1, -11010, 1, 0),
	(1108, 11009, 100, 1, -11009, 1, 0),
	(3140, 11105, 100, 1, -11105, 1, 0),
	(1227, 11105, 100, 1, -11105, 1, 0),
	(1222, 11105, 100, 1, -11105, 1, 0),
	(1256, 11009, 100, 1, -11009, 1, 0),
	(1231, 11009, 100, 1, -11009, 1, 0),
	(1230, 11009, 100, 1, -11009, 1, 0),
	(1229, 11009, 100, 1, -11009, 1, 0),
	(1228, 11009, 100, 1, -11009, 1, 0),
	(1226, 11009, 100, 1, -11009, 1, 0),
	(14, 11001, 100, 1, -11001, 1, 0),
	(130, 11099, 100, 1, -11099, 1, 0),
	(1417, 11008, 100, 1, -11008, 1, 0),
	(1497, 11100, 100, 1, -11100, 1, 0),
	(3357, 11007, 100, 1, -11007, 1, 0),
	(2339, 11007, 100, 1, -11007, 1, 0),
	(1739, 11007, 100, 1, -11007, 1, 0),
	(1578, 11007, 100, 1, -11007, 1, 0),
	(1578, 16969, -20, 0, 1, 1, 0),
	(1577, 11007, 100, 1, -11007, 1, 0),
	(312, 11007, 100, 1, -11007, 1, 0),
	(311, 11007, 100, 1, -11007, 1, 0),
	(302, 11007, 100, 1, -11007, 1, 0),
	(301, 11007, 100, 1, -11007, 1, 0),
	(1581, 11002, 100, 1, -11002, 1, 0),
	(1519, 11002, 100, 1, -11002, 1, 0),
	(1519, 34864, -20, 0, 1, 1, 0),
	(1637, 11002, 100, 1, -11002, 1, 0),
	(1637, 34486, 0.1, 0, 1, 1, 0),
	(1637, 34864, -20, 0, 1, 1, 0),
	(1638, 11002, 100, 1, -11002, 1, 0),
	(1537, 11002, 100, 1, -11002, 1, 0),
	(1537, 34484, 0.1, 0, 1, 1, 0),
	(1657, 11002, 100, 1, -11002, 1, 0),
	(36, 11006, 100, 1, -11006, 1, 0),
	(1701, 11002, 100, 1, -11002, 1, 0),
	(1156, 11002, 100, 1, -11002, 1, 0),
	(815, 11002, 100, 1, -11002, 1, 0),
	(384, 11002, 100, 1, -11002, 1, 0),
	(301, 16969, -20, 0, 1, 1, 0),
	(122, 11007, 100, 1, -11007, 1, 0),
	(117, 11007, 100, 1, -11007, 1, 0),
	(104, 11007, 100, 1, -11007, 1, 0),
	(43, 11007, 100, 1, -11007, 1, 0),
	(35, 11007, 100, 1, -11007, 1, 0),
	(33, 11006, 100, 1, -11006, 1, 0),
	(8, 11006, 100, 1, -11006, 1, 0),
	(490, 11008, 100, 1, -11008, 1, 0),
	(1977, 11010, 100, 1, -11010, 1, 0),
	(2017, 11010, 100, 1, -11010, 1, 0),
	(2077, 11103, 100, 0, -11103, 1, 0),
	(456, 11103, 100, 0, -11103, 1, 0),
	(454, 11103, 100, 0, -11103, 1, 0),
	(448, 11103, 100, 0, -11103, 1, 0),
	(445, 11103, 100, 0, -11103, 1, 0),
	(443, 11103, 100, 0, -11103, 1, 0),
	(516, 11007, 100, 1, -11007, 1, 0),
	(513, 11007, 100, 1, -11007, 1, 0),
	(400, 11006, 100, 1, -11006, 1, 0),
	(2100, 11008, 100, 1, -11008, 1, 0),
	(618, 11010, 100, 1, -11010, 1, 0),
	(440, 11009, 100, 1, -11009, 1, 0),
	(15, 11006, 100, 1, -11006, 1, 0),
	(16, 11008, 100, 1, -11008, 1, 0),
	(702, 11001, 100, 1, -11001, 1, 0),
	(2325, 11005, 100, 1, -11005, 1, 0),
	(414, 11005, 100, 1, -11005, 1, 0),
	(148, 11104, 100, 1, -11104, 1, 0),
	(3506, 11002, 100, 1, -11002, 1, 0),
	(40, 11002, 100, 1, -11002, 1, 0),
	(2104, 11005, 100, 1, -11005, 1, 0),
	(1039, 11005, 100, 1, -11005, 1, 0),
	(299, 11005, 100, 1, -11005, 1, 0),
	(306, 11003, 100, 1, -11003, 1, 0),
	(305, 11003, 100, 1, -11003, 1, 0),
	(226, 11003, 100, 1, -11003, 1, 0),
	(2399, 11001, 100, 1, -11001, 1, 0),
	(169, 11001, 100, 1, -11001, 1, 0),
	(168, 11001, 100, 1, -11001, 1, 0),
	(47, 11008, 100, 1, -11008, 1, 0),
	(45, 11006, 100, 1, -11006, 1, 0),
	(298, 11005, 100, 1, -11005, 1, 0),
	(150, 11005, 100, 1, -11005, 1, 0),
	(2403, 11007, 100, 1, -11007, 1, 0),
	(1797, 11007, 100, 1, -11007, 1, 0),
	(300, 11007, 100, 1, -11007, 1, 0),
	(300, 16970, -20, 0, 1, 1, 0),
	(2408, 11007, 100, 1, -11007, 1, 0),
	(2406, 11007, 100, 1, -11007, 1, 0),
	(2405, 11007, 100, 1, -11007, 1, 0),
	(2324, 11007, 100, 1, -11007, 1, 0),
	(598, 11007, 100, 1, -11007, 1, 0),
	(598, 16968, -20, 0, 1, 1, 0),
	(1377, 11010, 100, 1, -11010, 1, 0),
	(2521, 11008, 100, 1, -11008, 1, 0),
	(2521, 16967, -20, 0, 1, 1, 0),
	(357, 11008, 100, 1, -11008, 1, 0),
	(361, 11008, 100, 1, -11008, 1, 0),
	(28, 11008, 100, 1, -11008, 1, 0),
	(2057, 11010, 100, 1, -11010, 1, 0),
	(139, 11010, 100, 1, -11010, 1, 0),
	(3805, 11017, 100, 1, -11017, 1, 0),
	(41, 11017, 100, 1, -11017, 1, 0),
	(331, 11004, 100, 1, -11004, 1, 0),
	(3430, 11001, 100, 1, -11001, 1, 0),
	(3595, 11101, 100, 1, -11101, 1, 0),
	(3433, 11003, 100, 1, -11003, 1, 0),
	(3483, 11011, 100, 1, -11011, 1, 0),
	(3483, 34867, -20, 0, 1, 1, 0),
	(3625, 11011, 100, 1, -11011, 1, 0),
	(3621, 11014, 100, 1, -11014, 1, 0),
	(3621, 34868, -33, 0, 1, 1, 0),
	(3614, 11014, 100, 1, -11014, 1, 0),
	(3614, 34868, -33, 0, 1, 1, 0),
	(3518, 11014, 100, 1, -11014, 1, 0),
	(3684, 11013, 100, 1, -11013, 1, 0),
	(3691, 11013, 100, 1, -11013, 1, 0),
	(3690, 11013, 100, 1, -11013, 1, 0),
	(3859, 11013, 100, 1, -11013, 1, 0),
	(3519, 11013, 100, 1, -11013, 1, 0),
	(3519, 34865, -20, 0, 1, 1, 0),
	(4080, 11016, 100, 1, -11016, 1, 0),
	(3520, 11015, 100, 1, -11015, 1, 0),
	(3520, 34867, -20, 0, 1, 1, 0),
	(3521, 11012, 100, 0, -11012, 1, 0),
	(3523, 11014, 100, 1, -11014, 1, 0),
	(3475, 11000, 100, 1, -11000, 1, 0),
	(3473, 11000, 100, 1, -11000, 1, 0),
	(3470, 11000, 100, 1, -11000, 1, 0),
	(3524, 11001, 100, 1, -11001, 1, 0),
	(3525, 11003, 100, 1, -11003, 1, 0),
	(3607, 11012, 100, 0, -11012, 1, 0),
	(3716, 11012, 100, 0, -11012, 1, 0),
	(495, 11018, 100, 1, -11018, 1, 0),
	(4055, 11019, 100, 0, -11019, 1, 0),
	(4479, 11019, 100, 0, -11019, 1, 0),
	(4002, 11019, 100, 0, -11019, 1, 0),
	(4071, 11019, 100, 0, -11019, 1, 0),
	(3999, 11019, 100, 0, -11019, 1, 0),
	(3994, 11019, 100, 0, -11019, 1, 0),
	(3980, 11019, 100, 0, -11019, 1, 0),
	(3982, 11019, 100, 0, -11019, 1, 0),
	(4058, 11019, 100, 0, -11019, 1, 0),
	(4059, 11019, 100, 0, -11019, 1, 0),
	(4263, 11019, 100, 0, -11019, 1, 0),
	(4001, 11019, 100, 0, -11019, 1, 0),
	(394, 11019, 100, 0, -11019, 1, 0),
	(4212, 11018, 100, 1, -11018, 1, 0),
	(4244, 11018, 100, 1, -11018, 1, 0),
	(4242, 11018, 100, 1, -11018, 1, 0),
	(65, 11020, 100, 0, -11020, 1, 0),
	(4241, 11018, 100, 1, -11018, 1, 0),
	(4185, 11018, 100, 1, -11018, 1, 0),
	(4181, 11018, 100, 1, -11018, 1, 0),
	(4152, 11018, 100, 1, -11018, 1, 0),
	(4224, 11018, 100, 1, -11018, 1, 0),
	(4225, 11018, 100, 1, -11018, 1, 0),
	(4157, 11018, 100, 1, -11018, 1, 0),
	(4478, 11018, 100, 1, -11018, 1, 0),
	(3537, 11018, 100, 1, -11018, 1, 0),
	(4043, 11020, 100, 0, -11020, 1, 0),
	(4109, 11020, 100, 0, -11020, 1, 0),
	(4039, 11020, 100, 0, -11020, 1, 0),
	(4134, 11020, 100, 0, -11020, 1, 0),
	(3711, 11022, 100, 0, -11022, 1, 0),
	(2817, 11021, 100, 0, -11021, 1, 0),
	(3979, 11023, 100, 1, -11023, 1, 0),
	(4395, 11026, 100, 0, -11026, 1, 0),
	(4568, 11025, 100, 1, -11025, 1, 0),
	(4567, 11024, 100, 0, -11024, 1, 0),
	(3711, 45902, -20, 1, 1, 1, 0),
	(4197, 45904, -50, 0, 1, 1, 0),
	(4197, 41809, 27, 1, 1, 1, 0),
	(4197, 41806, 27, 1, 1, 1, 0),
	(4197, 41813, 27, 1, 1, 1, 0),
	(4197, 45909, 0, 1, 1, 1, 0),
	(4197, 45190, 0, 1, 1, 1, 0),
	(4197, 45200, 0, 1, 1, 1, 0),
	(4197, 45194, 0, 1, 1, 1, 0),
	(4197, 45196, 0, 1, 1, 1, 0),
	(4197, 45198, 0, 1, 1, 1, 0),
	(0, 45190, 0, 1, 1, 1, 0),
	(0, 45191, 0, 1, 1, 1, 0),
	(0, 45200, 0, 1, 1, 1, 0),
	(0, 45194, 0, 1, 1, 1, 0),
	(0, 45196, 0, 1, 1, 1, 0),
	(0, 45189, 0, 1, 1, 1, 0),
	(0, 45198, 0, 1, 1, 1, 0),
	(0, 45188, 0, 1, 1, 1, 0),
	(0, 45195, 5, 1, 1, 1, 0),
	(0, 45199, 5, 1, 1, 1, 0),
	(0, 45201, 5, 1, 1, 1, 0),
	(0, 45197, 5, 1, 1, 1, 0),
	(0, 45202, 5, 1, 1, 1, 0),
	(3479, 11002, 100, 1, -11002, 1, 0);
/*!40000 ALTER TABLE `fishing_loot_template` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
