-- MySQL Manual Build
--
-- Host: localhost    Database: characters
-- ------------------------------------------------------

--
-- Table structure for table `playerbotai_db_version`
--

-- When updating, don't forget to update revision_sql.h

DROP TABLE IF EXISTS `playerbotai_db_version`;
CREATE TABLE `playerbotai_db_version` (
  `version` varchar(120) default NULL,
  `required_7_playerbotai_quest_autocomplete` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used DB version notes';

--
-- Dumping data for table `playerbotai_db_version`
--

LOCK TABLES `playerbotai_db_version` WRITE;
INSERT INTO `playerbotai_db_version` VALUES
('PlayerbotAI default database.',NULL);
UNLOCK TABLES;

--
-- Table structure for table `playerbot_talentspec`
--

DROP TABLE IF EXISTS `playerbot_talentspec`;
CREATE TABLE `playerbot_talentspec` (
  `talentspec_id` mediumint(8) NOT NULL AUTO_INCREMENT UNIQUE,
  `name` varchar(255),
  `class` tinyint(3) NOT NULL,
  `purpose` int(11) unsigned NOT NULL,
  `talent_10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_11` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_12` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_13` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_14` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_17` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_18` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_19` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_20` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_21` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_22` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_23` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_24` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_25` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_26` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_27` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_28` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_29` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_30` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_31` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_32` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_33` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_34` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_35` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_36` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_37` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_38` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_39` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_40` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_41` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_42` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_43` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_44` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_45` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_46` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_47` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_48` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_49` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_50` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_51` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_52` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_53` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_54` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_55` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_56` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_57` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_58` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_59` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_60` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_61` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_62` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_63` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_64` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_65` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_66` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_67` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_68` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_69` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_70` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_71` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_72` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_73` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_74` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_75` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_76` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_77` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_78` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_79` smallint(5) unsigned NOT NULL DEFAULT '0',
  `talent_80` smallint(5) unsigned NOT NULL DEFAULT '0',
  `major_glyph_15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `major_glyph_30` smallint(5) unsigned NOT NULL DEFAULT '0',
  `major_glyph_80` smallint(5) unsigned NOT NULL DEFAULT '0',
  `minor_glyph_15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `minor_glyph_50` smallint(5) unsigned NOT NULL DEFAULT '0',
  `minor_glyph_70` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`talentspec_id`,`class`,`purpose`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='PlayerbotAI TalentSpec system';

--
-- Dumping data for table `playerbot_talentspec`
--

--
-- PLAYERBOTAI TALENT / GLYPH SPECS
--
--    Invalid builds will simply be ignored. If yours isn't showing up, this is (most likely) why. Try "talent errorcheck" with a GM account.
--    talentspec_id: AUTO_INCREMENT -> always NULL   (SOFT permanence, values may be different next DB update, do not use for any permanent settings)
--    Build Name: Any string of text NOT containing quote "'". Also recommend against semicolon ';' double quote '"' or new lines.
--    Class Id: See "SharedDefines.h" enum Classes for characters and "PlayerbotAI.h" enum ClassesCombatPets for pets.
--    Purpose(s): See "PlayerbotAI.h" enum TalentSpecPurpose. Please combine hex manually. E.g. 0x00000008 & 0x00000004 & 0x00000020 = 0x0000002C
--    Talent_N Id: The talent IDs to be used, in order. None (for e.g. twink specs) uses value '0' (smallint so no quotes).
--    MajorGlyph1,2,3,MinorGlyph1,2,3 Id: Glyph IDs to be used (see levels above). None uses value '0' (smallints, so no quotes).
--

-- When editing manually remember LAST LINE is ended by semicolon ';' not comma ','
LOCK TABLES `playerbot_talentspec` WRITE;
INSERT INTO `playerbot_talentspec` VALUES
(NULL,'Death Knight Fast Leveling (54/17/0)',6,0x00000006,1939,1939,1945,1945,1945,2217,2217,1948,1948,1948,1941,2086,2086,2086,1943,1942,1942,1942,1953,1953,1953,1943,1943,1943,1943,1944,1944,1944,2015,2015,1960,1960,1960,1936,1936,1955,1955,1955,2259,2259,1957,1958,1958,1958,2015,2034,2034,2034,2034,2034,1950,1950,1950,2031,2031,2031,2020,2020,1973,1973,1973,1973,1973,2042,2042,2042,2042,2042,1971,1971,1938,520,558,524,522,553,555),
(NULL,'Death Knight PvP (50/3/18)',6,0x00260000,1939,1939,1945,1945,1945,1938,1938,1938,1938,1938,2217,2217,2086,2086,2086,1943,1943,1943,1943,1943,1950,1950,1950,2015,2015,1944,1944,1944,2015,1941,1954,1960,1960,1960,1936,1955,1955,1955,2259,2259,1957,1958,1958,1958,1936,2034,2034,2034,2034,2034,2031,2031,2031,2082,2082,1932,1932,1932,1934,1934,1934,1963,1963,1933,1933,1933,2008,2008,2004,2004,2004,513,558,771,522,514,553),
(NULL,'Death Knight Blood Tanking (53/8/10)',6,0x00000015,1968,1968,1968,1968,1968,2031,2031,2031,2218,2218,2218,2218,2218,1933,1933,1933,1963,1963,2017,2017,2017,2017,2017,1938,1938,1938,1938,1938,1943,1943,1943,1943,1943,2086,2086,2086,1941,2217,2217,1942,1942,1942,1950,1950,1950,1944,1944,1944,1936,1936,2105,2105,2015,2015,2015,2019,2259,2259,1957,1958,1958,1958,1959,1959,1959,2034,2034,2034,2034,2034,1960,772,558,532,522,555,553),
(NULL,'Death Knight Unholy Raid DPS (0/17/54)',6,0x00000031,1932,1932,1932,2082,2082,1934,1934,1934,1963,1963,2047,2047,2047,2047,2047,2225,2225,2004,2004,2004,2005,2005,2005,2005,2005,1984,2008,2008,2008,2011,2011,1996,2285,2285,2285,2285,2285,1962,1962,1962,2007,2216,2043,2043,2043,2036,2036,2036,2036,2036,2000,2003,2003,2003,2031,2031,2031,2020,2020,1973,1973,1973,1973,1973,2042,2042,2042,2042,2042,1971,1971,771,524,527,514,555,553),
(NULL,'Druid Feral Leveling (0/55/16)',11,0x00000006,796,796,796,796,796,805,805,799,799,799,798,798,798,807,807,803,803,803,1914,1914,801,801,802,802,804,808,808,808,808,808,809,1798,1798,1794,1794,1795,1795,1795,1794,1792,1796,1921,1921,1921,1920,1918,1918,1918,1918,1918,1927,1920,1920,2266,821,821,822,822,822,824,824,824,824,824,827,826,826,826,1915,1915,1792,166,165,674,431,551,435),
(NULL,'Druid Feral PVP (0/60/11)',11,0x00020000,796,796,796,796,796,805,805,794,794,794,798,798,798,807,807,803,803,803,1914,1914,801,801,1792,1792,804,808,808,808,808,808,809,1798,1798,1794,1794,1795,1795,1795,1794,1919,1796,1919,1919,1920,1920,1918,1918,1918,1918,1918,1927,1920,2266,1793,1793,1793,1921,1921,1921,799,821,821,822,822,822,824,824,824,824,824,827,166,165,674,431,551,435),
(NULL,'Druid Balance Leveling (58/0/13)',11,0x00000006,762,762,762,762,762,783,783,783,1822,1822,789,789,789,2240,764,792,792,792,792,792,788,2239,2239,2239,1782,790,790,790,1784,1784,793,1912,1912,1912,1785,1913,1913,1786,1786,1786,1923,1787,1924,1924,1924,1928,1928,1928,1785,1785,1926,1786,1786,784,784,784,1782,1782,821,821,822,822,822,826,826,826,822,822,827,1915,1915,176,175,180,431,433,435),
(NULL,'Druid Balance PVP (58/0/13)',11,0x00020000,762,762,762,762,762,1822,1822,763,763,783,2240,764,764,789,789,792,792,792,792,792,788,2239,2239,2239,1782,790,790,790,784,784,793,1912,1912,1912,784,1913,1913,1913,1786,1786,1923,1787,1924,1924,1924,1928,1928,1928,1925,1925,1926,1786,1786,1786,789,1782,1782,1783,1783,821,821,822,822,822,826,826,826,822,822,827,1915,176,175,180,431,433,435),
(NULL,'Druid Restoration AoE (14/0/57)',11,0x00000038,823,823,823,821,821,841,841,826,826,826,1915,1915,827,829,829,829,830,830,830,843,843,843,843,843,831,828,828,828,828,828,825,825,825,825,825,1789,1789,1789,1789,1789,1791,1930,1930,1930,844,1797,1797,1797,1916,1916,1916,1916,1916,1917,1922,1922,1922,2238,2238,2238,2238,2238,1822,1822,783,783,783,789,789,789,2240,172,168,672,435,434,433),
(NULL,'Druid Restoration Single (14/0/57)',11,0x00000018,821,821,823,823,823,826,826,826,824,824,824,824,1915,1915,827,829,829,829,830,830,830,831,828,828,828,828,828,1788,1788,825,825,844,1797,1797,1797,1789,1789,1789,1789,1789,1791,1930,1930,1930,1922,1922,1922,1916,1916,1916,1916,1916,1917,843,843,843,843,2238,2238,2238,2238,2238,1822,1822,783,783,783,789,789,789,2240,891,168,673,435,434,433),
(NULL,'Druid Feral Tanking (0/58/13)',11,0x00000011,796,796,796,796,796,794,794,794,805,805,798,798,798,807,807,803,803,803,801,801,804,1162,799,799,799,808,808,808,808,808,809,1798,1798,1794,1794,1794,2241,2241,2241,1919,1796,1920,1920,1920,1919,1918,1918,1918,1918,1918,2266,1927,802,802,2242,2242,2242,1919,821,821,822,822,822,824,824,824,824,824,827,822,822,162,811,161,433,435,434),
(NULL,'Druid Balance DPS (56/0/15)',11,0x00000012,762,762,762,762,762,783,783,783,1822,1822,2240,789,789,789,764,764,792,792,792,792,792,788,2239,2239,2239,1783,1783,790,790,790,793,1912,1912,1912,1785,1785,1785,1786,1786,1786,1786,1786,1787,1924,1924,1924,1928,1928,1928,1782,1926,1782,1782,784,784,784,822,822,822,822,822,821,821,826,826,826,1915,1915,827,829,829,176,175,180,431,433,435),
(NULL,'Hunter Beast Mastery Leveling (53/18/0)',3,0x00000016,1382,1382,1382,1382,1382,1395,1395,1395,1624,1624,2138,1396,1396,1396,1396,1393,1393,1393,1393,1393,1387,1388,1388,1390,1390,1397,1397,1397,1397,1397,1386,1800,1800,1800,1385,1802,1802,1802,1802,1802,1803,2140,2140,2140,2137,2227,2227,2227,2227,2227,2139,1344,1344,1344,1344,1344,1343,1343,1343,1806,1806,1806,1818,1818,1349,1349,1349,1349,1349,1385,1396,361,354,356,440,439,441),
(NULL,'Hunter PVP (11/53/7)',3,0x00060000,1344,1344,1344,1344,1344,1349,1349,1349,1349,1349,1345,1343,1343,1343,1806,1806,1806,1819,1819,1348,1348,1348,1353,2197,2197,1362,1362,1362,1804,1804,1361,2130,2130,2130,2197,1807,1807,1807,1807,1807,1808,2132,2132,2132,2133,2134,2134,2134,2134,2134,2135,2133,2133,1382,1382,1382,1382,1382,1389,1389,1389,1389,1389,2138,1623,1623,1623,1623,1623,1810,1810,361,351,369,440,439,441),
(NULL,'Hunter Survival DPS (0/15/56)',3,0x00000012,1623,1623,1623,1623,1623,1305,1305,1305,1810,1810,1622,1622,1622,1622,1622,1306,1306,1306,2229,2229,1321,1321,1321,2228,2228,1303,1303,1303,1303,1303,1325,1812,1812,2228,2141,2141,2141,1813,1813,1322,2143,2143,2143,1811,1811,1811,2144,2144,1813,2145,1813,1813,2229,1809,1809,1809,1344,1344,1344,1344,1344,1349,1349,1349,1349,1349,1806,1806,1806,1345,1818,368,366,691,440,439,441),
(NULL,'Mage Frost Leveling (20/0/51)',8,0x00000006,37,37,37,37,37,73,73,73,1649,1649,69,61,61,61,1649,67,67,67,38,38,72,38,741,741,64,68,68,68,1737,1737,71,1738,1738,1738,1738,1740,1740,1853,1853,1738,1741,64,64,62,62,1856,1856,1856,1856,1856,1857,74,74,76,76,76,75,75,75,75,75,81,81,81,1845,1845,2222,2222,2222,2211,1845,331,700,323,445,451,448),
(NULL,'Mage Frost PVP (20/0/51)',8,0x0002000,38,38,38,37,37,65,65,65,73,73,69,61,61,61,73,741,741,67,67,67,72,1736,1736,1736,37,68,68,68,1737,1737,71,1738,1738,1738,1738,1740,1740,1853,1853,1738,1741,2214,2214,37,37,1856,1856,1856,1856,1856,1857,76,76,76,74,74,1650,1650,85,85,85,81,81,81,2211,75,2222,2222,2222,88,88,321,700,323,445,446,447),
(NULL,'Mage Fire Leveling (20/51/0)',8,0x00000006,26,26,26,26,26,34,34,34,34,34,29,23,23,27,27,25,25,25,1639,1639,32,33,33,33,1639,35,35,35,35,35,36,1733,1733,1733,30,1734,1734,1734,30,30,1735,1849,1849,1850,1850,1851,1851,1851,1851,1851,1852,74,74,76,76,76,75,75,75,75,75,81,81,81,1845,1845,2222,2222,2222,1142,1142,324,328,697,445,451,611),
(NULL,'Mage Arcane DPS (57/3/11)',8,0x00000012,76,76,76,74,74,75,75,75,75,75,2211,81,81,81,82,1142,1142,1142,2222,2222,86,77,77,77,77,421,421,421,1725,1725,87,1727,1727,1727,77,1843,1843,1728,1728,1728,2209,2209,2209,2209,2209,1846,1846,1846,1826,1826,1847,1728,1728,2222,1845,1845,1845,62,62,62,38,38,1649,1649,1649,73,73,69,1141,1141,1141,312,328,651,445,451,450),
(NULL,'Paladin Protection Tank (0/53/18)',2,0x00000011,2185,2185,2185,2185,2185,1629,1629,1629,1629,1629,1501,1501,1501,1423,1423,1422,1422,1422,1423,1423,1431,1748,1748,1748,1423,1750,1750,1429,1429,1429,1751,1751,1751,1430,2282,1753,1753,1753,1421,1421,1754,2195,2195,2195,2194,2204,2204,2204,2200,2200,2196,2194,1421,1403,1403,1403,1403,1403,1631,1631,1407,1407,1407,1633,1633,1634,1634,1407,1755,1755,1755,705,702,561,452,455,456),
(NULL,'Paladin Holy SpellPower Focus (51/20/0)',2,0x00000018,1432,1432,1432,1432,1432,1449,1449,1449,1449,1449,1461,1461,1461,1461,1461,1444,1444,1444,1435,1450,1450,1450,1433,1465,1465,1465,1627,1627,1627,1627,1627,1502,1745,1745,1745,1746,1746,1746,1746,1746,2199,2199,2199,2199,2199,2193,2193,2191,2191,1747,2192,1442,1442,1442,1442,1442,1748,1748,1748,1425,1425,2280,1423,1423,1423,1423,1422,1422,1422,2281,2281,196,200,706,452,455,454),
(NULL,'Paladin Holy SpellCrit Focus (51/0/20)',2,0x00000008,1432,1432,1432,1432,1432,1449,1449,1449,1449,1449,1444,1444,1444,1461,1461,1461,1461,1461,1435,1450,1433,1465,1465,1465,1450,1627,1627,1627,1627,1627,1502,1745,1745,1745,1450,1746,1746,1746,1746,1746,2199,2199,2199,2199,2199,2193,2193,2191,2191,1747,2192,1407,1407,1407,1407,1407,1464,1464,1464,1401,1401,1411,1411,1411,1411,1411,1761,1761,1761,1634,1634,196,199,706,452,455,457),
(NULL,'Paladin Fast Leveling (0/10/61)',2,0x00000006,1407,1407,1407,1407,1407,1631,1631,1464,1464,1464,1481,1411,1411,1411,1411,1761,1761,1761,1755,1755,1756,1410,1410,1410,1411,1402,1402,1402,1634,1634,1758,1758,1758,1441,2176,1759,1759,1759,2147,2147,1823,2179,2179,2179,2176,2149,2149,2149,2148,2148,2150,2185,2185,2185,2185,2185,1401,1401,1633,1633,1755,1757,1757,2148,1632,1632,1425,1425,1748,1748,1748,183,703,184,453,455,456),
(NULL,'Paladin PVP Leveling (0/17/54)',2,0x00060000,1407,1407,1407,1407,1407,1631,1631,1464,1464,1464,1481,1411,1411,1411,1411,1761,1761,1761,1634,1634,1756,1410,1410,1410,1411,1402,1402,1402,1757,1757,1758,1758,1758,1441,2176,1759,1759,1759,2147,2147,1823,2179,2179,2179,2176,2149,2149,2149,1401,1401,2150,2185,2185,2185,2185,2185,1632,1632,1425,1425,1748,1748,1748,1501,1501,1501,1423,1423,1521,1521,2148,183,703,198,453,455,452),
(NULL,'Priest Shadow Leveling Build (13/0/58)',5,0x00000006,465,465,465,2027,2027,463,463,463,482,482,501,462,462,462,462,461,461,461,881,881,484,1638,1638,462,481,2267,2267,2267,1781,1781,521,1778,1778,1778,1778,1816,1816,1816,1906,1906,1779,1909,1909,1909,1778,1907,1907,1907,1907,1907,1910,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,481,481,481,481,1777,1777,1777,261,262,708,460,459,462),
(NULL,'Priest Shadow PVP Build (13/0/58)',5,0x00020000,465,465,465,2027,2027,482,482,462,462,462,501,542,542,462,462,461,461,461,881,881,484,541,1638,1638,481,2267,2267,2267,1781,1781,521,1778,1778,1778,1778,1816,1816,1816,1906,1906,1779,1908,1909,1909,1909,1907,1907,1907,1907,1907,1910,1778,481,481,481,481,463,463,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,261,262,708,460,459,462),
(NULL,'Priest Holy Healing (14/57/0)',5,0x00000018,401,401,401,401,401,1181,1181,1181,1181,1181,361,361,361,406,406,406,408,408,408,442,1561,402,402,402,402,402,1766,1766,404,404,404,404,404,1768,1768,1767,1767,1767,1767,1767,1815,1768,1902,1902,1902,1905,1905,1905,1905,1905,1911,1903,1903,1903,1904,1904,1904,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,348,255,251,709,460,463,462),
(NULL,'Priest Discipline Healing (57/14/0)',5,0x00000018,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,343,343,343,341,341,341,348,1201,1201,1201,1201,1201,1771,1771,1772,1772,1772,322,1858,1858,1858,351,1896,1896,1896,2235,2235,1774,1895,1895,1895,1901,1202,1202,1202,1202,1202,1897,1901,1894,1894,1773,1773,1773,401,401,401,401,401,1181,1181,1181,1181,1181,361,361,361,442,255,263,710,460,463,462),
(NULL,'Priest Shadow DPS (13/0/58)',5,0x00000012,465,465,465,2027,2027,482,482,463,463,463,501,462,462,462,462,461,461,461,881,881,484,1777,1777,1777,462,2267,2267,2267,1781,1781,521,1778,1778,1778,1778,1906,1906,1816,1816,1816,1779,1909,1909,1909,1778,1907,1907,1907,1907,1907,1910,483,483,481,481,481,481,481,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,261,262,269,460,459,463),
(NULL,'Priest Shadow Raiding',5,0x00000022,1898,1898,1898,1898,1898,346,346,346,344,344,347,347,347,348,462,462,462,462,462,466,466,482,482,463,463,463,481,481,481,481,481,501,483,483,881,881,461,461,461,484,1638,1638,1777,1777,1777,1781,1781,2267,2267,2267,521,1778,1778,1778,1778,1778,1906,1906,1816,1816,1816,1779,1909,1909,1909,1907,1907,1907,1907,1907,1910,261,262,269,460,459,463),
(NULL,'Rogue Leveling (13/53/5)',4,0x00000006,201,201,221,221,221,1827,1827,181,181,181,221,221,181,181,204,186,186,186,1122,1122,223,242,242,242,242,242,1706,1706,1703,1703,205,1705,1705,1705,1122,1825,1825,1825,1825,1825,1709,2074,2074,2073,2073,2075,2075,2075,2075,2075,2076,1122,1122,2244,2244,2244,2244,2244,270,270,270,270,270,273,273,273,2068,2068,269,269,269,409,398,715,465,468,466),
(NULL,'Rogue PVP (16/0/55)',4,0x00020000,241,241,241,261,261,244,244,244,262,262,1123,1123,1123,247,247,263,263,245,245,245,1701,1701,265,265,284,1713,1713,1713,1702,1702,381,1722,1722,1722,1702,2077,2077,1712,1712,1712,1714,1712,1712,1702,1702,2080,2080,2080,2080,2080,2081,270,270,270,270,270,277,277,277,2068,2068,382,269,269,269,269,269,1700,1700,2079,2079,392,408,405,468,469,464),
(NULL,'Rogue Assassination (51/15/5)',4,0x00000002,270,270,270,270,270,277,277,277,273,273,273,269,269,269,269,269,268,268,268,268,268,682,682,682,280,283,283,283,283,283,281,274,274,1721,1721,1718,1718,1718,2069,2069,2069,1719,1715,1715,1715,2070,2070,2070,2070,2070,2071,221,221,221,221,221,181,181,181,181,181,182,182,182,182,182,2244,2244,2244,2244,2244,406,733,714,465,469,468),
(NULL,'Shaman Enhancement Leveling/DPS (16/55/0)',7,0x00000016,610,610,610,614,614,613,613,613,613,613,617,611,611,611,607,602,602,602,602,602,616,2083,2083,2083,607,1643,1643,1643,1689,1689,1690,1692,1692,1692,901,2249,2054,2054,2055,2055,1693,1691,1691,1691,1689,2057,2057,2057,2057,2057,2058,607,2055,563,563,563,563,563,1645,1645,1645,561,561,561,565,565,565,565,565,1647,1647,231,228,229,476,552,473),
(NULL,'Shaman Enhancement PVP (17/54/0)',7,0x00020000,610,610,610,614,614,605,605,613,613,613,617,613,613,611,611,602,602,602,602,602,616,2083,2083,2083,611,1643,1643,1643,1689,1689,1690,1692,1692,1692,901,2054,2054,2249,2055,2055,1693,1691,1691,1691,2055,2057,2057,2057,2057,2057,2058,2056,2056,563,563,563,563,563,1640,1640,1640,1645,1645,1645,565,565,565,565,565,574,1689,231,229,215,476,552,473),
(NULL,'Shaman Elemental Leveling/DPS (57/14/0)',7,0x00000016,563,563,563,563,563,561,561,561,564,564,574,565,565,565,565,565,1642,1642,1642,564,562,1682,1682,1682,1641,721,721,721,721,721,573,2052,2052,2052,1641,2049,2049,1686,1686,1686,1687,2051,2051,2051,2262,2252,2252,2252,2252,2252,2053,2262,1685,1685,1685,564,564,614,614,614,614,614,613,613,613,613,613,617,611,611,611,226,219,214,475,476,473),
(NULL,'Shaman Elemental PVP (58/13/0)',7,0x00020000,563,563,563,563,563,1640,1640,1640,561,561,574,565,565,565,565,1642,1642,1642,567,567,562,565,1641,1641,561,721,721,721,721,721,573,2052,2052,2052,575,1686,1686,1686,2262,2262,2050,2050,2050,1687,2051,2252,2252,2252,2252,2252,2053,2051,2051,1685,1685,614,614,614,614,614,605,605,613,613,613,617,611,611,611,613,613,220,219,213,475,552,473),
(NULL,'Shaman Restoration (0/16/55)',7,0x00000018,586,586,586,586,586,593,593,593,593,593,582,583,583,583,581,588,588,588,594,594,591,594,594,594,581,592,592,592,592,592,590,2084,587,587,587,1696,1696,1696,1697,1697,1698,2059,2059,2061,2061,2063,2063,2063,2063,2063,2064,2060,2060,2061,581,614,614,614,614,614,613,613,613,613,613,611,611,611,607,607,607,751,737,212,475,473,470),
(NULL,'Warlock Affliction Leveling (56/0/15)',9,0x00000006,1003,1003,1003,1003,1003,1004,1004,1101,1101,1284,1061,1284,1001,1001,1001,1764,1764,1764,1002,1002,1041,1763,1763,1763,1763,1042,1042,1042,1042,1042,1669,1669,1669,1669,1669,1667,1667,1667,1873,1873,1670,2245,1763,1878,1878,1876,1876,1876,1876,1876,2041,1878,1022,1875,1007,1007,944,944,944,944,944,943,943,943,943,943,967,967,967,967,967,755,760,911,482,477,478),
(NULL,'Warlock Demonology Leveling (16/55/0)',9,0x00000006,1883,1883,1223,1223,1223,1242,1242,1242,1224,1224,1282,1226,1671,1671,1671,1262,1262,1262,1262,1262,1281,1227,1227,1261,1261,1244,1244,1244,1244,1244,1880,1263,1263,1263,1680,1673,1673,1673,1673,1673,1672,1882,1882,1882,1680,1885,1885,1885,1885,1885,1886,1884,1884,1884,1680,1003,1003,1003,1003,1003,1101,1101,1284,1284,1004,1001,1001,1001,1004,1007,1007,275,278,760,478,482,479),
(NULL,'Warlock Affliction PVP (54/17/0)',9,0x00020000,1003,1003,1003,1003,1003,1004,1004,1284,1284,1005,1061,1001,1001,1001,1005,1021,1021,1002,1002,1764,1081,1041,2205,2205,1764,1042,1042,1042,1042,1042,1669,1669,1669,1669,1669,1668,1668,1667,1667,1667,1670,2245,1878,1878,1878,1876,1876,1876,1876,1876,2041,1764,1007,1007,1223,1223,1223,1883,1883,1242,1242,1242,1224,1224,1671,1671,1671,1282,1226,1227,1227,911,282,274,477,478,482),
(NULL,'Warlock Destruction DPS (0/13/58)',9,0x00000012,943,943,943,943,943,941,941,941,982,982,967,967,967,967,967,985,985,964,983,983,981,961,961,961,1817,966,966,966,966,966,968,986,986,986,1817,1677,1677,1677,1677,1677,2045,2045,2045,1888,1888,1890,1890,1890,1890,1890,1891,1888,1817,1678,1678,1678,1889,1889,1222,1222,1222,1223,1223,1242,1242,1242,1883,1883,1671,1671,1671,283,273,272,477,478,482),
(NULL,'Warlock Demonology DPS (0/56/15)',9,0x00000012,1223,1223,1223,1883,1883,1225,1225,1225,1242,1242,1671,1671,1671,1282,1226,1262,1262,1262,1262,1262,1261,1261,1227,1227,1242,1244,1244,1244,1244,1244,1880,1263,1263,1263,1283,1673,1673,1673,1673,1673,1672,1884,1884,1884,1283,1885,1885,1885,1885,1885,1886,2261,2261,1882,1882,1882,943,943,943,943,943,944,944,944,944,944,967,967,967,967,967,283,278,272,477,478,482),
(NULL,'Warrior Fury Leveling (18/53/0)',1,0x00000006,157,157,157,157,157,2250,2250,2250,159,159,661,661,661,166,166,1581,1581,1581,1581,1581,165,1657,1657,1657,155,156,156,156,156,156,167,1655,1655,1864,1864,1658,1658,1658,1658,1658,1866,1866,1866,1864,155,2234,2234,2234,2234,2234,1867,155,155,124,124,124,130,130,130,130,130,641,641,662,662,121,121,121,136,136,136,496,490,509,483,488,484),
(NULL,'Warrior PVP Leveling Sword Spec (56/15/0)',1,0x00060000,130,130,130,130,130,641,641,641,126,126,662,662,121,121,121,136,136,136,131,131,123,123,123,123,123,133,134,134,1859,1859,135,1663,1663,1862,1862,2283,1860,1860,1824,1824,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1824,2232,2232,2232,157,157,157,157,157,2250,2250,2250,161,161,160,661,661,661,161,762,489,494,483,485,484),
(NULL,'Warrior PVP Leveling Poleaxe Spec (56/15/0)',1,0x00060000,130,130,130,130,130,641,641,641,126,126,662,662,121,121,121,136,136,136,131,131,132,132,132,132,132,133,134,134,1859,1859,135,1663,1663,1862,1862,2283,1860,1860,1824,1824,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1824,2232,2232,2232,157,157,157,157,157,2250,2250,2250,161,161,160,661,661,661,161,762,489,494,483,485,484),
(NULL,'Warrior PVP Leveling Mace Spec (56/15/0)',1,0x00060000,130,130,130,130,130,641,641,641,126,126,662,662,121,121,121,136,136,136,131,131,125,125,125,125,125,133,134,134,1859,1859,135,1663,1663,1862,1862,2283,1860,1860,1824,1824,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1824,2232,2232,2232,157,157,157,157,157,2250,2250,2250,161,161,160,661,661,661,161,762,489,494,483,485,484),
(NULL,'Warrior Fury DPS (19/52/0)',1,0x00000006,157,157,157,157,157,2250,2250,2250,159,159,166,166,166,154,154,1581,1581,1581,1581,1581,165,1657,1657,1657,155,156,156,156,156,156,167,1655,1655,1864,1864,1658,1658,1658,1658,1658,1659,1866,1866,1866,155,2234,2234,2234,2234,2234,1867,1864,124,124,124,130,130,641,641,641,130,130,662,662,121,121,121,136,136,136,137,496,509,492,484,483,851),
(NULL,'Warrior Arms DPS Sword Spec (54/17/0)',1,0x00000006,130,130,130,130,130,641,641,641,127,127,662,662,121,121,121,136,136,136,2232,2232,133,123,123,123,123,123,1859,1859,2232,137,135,1663,1862,1862,131,1824,1824,1824,2283,131,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1860,1860,157,157,157,157,157,2250,2250,2250,161,161,161,161,161,160,154,1542,1542,500,494,489,484,485,483),
(NULL,'Warrior Arms DPS Poleaxe Spec (54/17/0)',1,0x00000006,130,130,130,130,130,641,641,641,127,127,662,662,121,121,121,136,136,136,2232,2232,133,132,132,132,132,132,1859,1859,2232,137,135,1663,1862,1862,131,1824,1824,1824,2283,131,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1860,1860,157,157,157,157,157,2250,2250,2250,161,161,161,161,161,160,154,1542,1542,500,494,489,484,485,483),
(NULL,'Warrior Arms DPS Mace Spec (54/17/0)',1,0x00000006,130,130,130,130,130,641,641,641,127,127,662,662,121,121,121,136,136,136,2232,2232,133,125,125,125,125,125,1859,1859,2232,137,135,1663,1862,1862,131,1824,1824,1824,2283,131,1661,1662,1662,1662,1664,2231,2231,2231,2231,2231,1863,1664,1860,1860,157,157,157,157,157,2250,2250,2250,161,161,161,161,161,160,154,1542,1542,500,494,489,484,485,483),
(NULL,'Warrior Protection (15/3/53)',1,0x00000011,1601,1601,1601,1601,1601,138,138,138,138,138,140,140,140,140,140,141,141,141,147,147,152,153,146,146,146,702,702,702,702,702,1660,1660,1660,1652,1652,1653,1653,1653,1654,1654,1666,1893,1893,1893,2236,1871,1871,1871,2246,2246,1872,148,2250,2250,2250,130,130,130,130,130,641,641,641,124,124,662,662,121,121,121,144,502,501,492,487,485,851),
(NULL,'Pet Ferocity BM Hunter (Wolf suggested)',-2,0x00000036,2112,2112,2112,2125,2125,2125,2113,2113,2107,2129,2129,2129,2157,2107,2128,2253,2253,2128,2254,2254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(NULL,'Pet Tenacity BM Hunter (Bear suggested)',-3,0x00000001,2116,2116,2116,2173,2173,2117,2277,2117,2122,2163,2163,2122,2172,2237,2123,2255,2255,2258,2258,2123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),
(NULL,'Pet Cunning PvP (Bird of Prey suggested)',-1,0x00220000,2118,2118,2119,2127,2127,2127,2120,2120,2120,2165,2167,2167,2257,2257,2184,2278,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
UNLOCK TABLES;

-- ----------------------------
-- Table structure for `playerbot_saved_data`
-- ----------------------------
DROP TABLE IF EXISTS `playerbot_saved_data`;
CREATE TABLE `playerbot_saved_data` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `combat_order` int(11) unsigned NOT NULL DEFAULT '0',
  `primary_target` int(11) unsigned NOT NULL DEFAULT '0',
  `secondary_target` int(11) unsigned NOT NULL DEFAULT '0',
  `pname` varchar(12) NOT NULL DEFAULT '',
  `sname` varchar(12) NOT NULL DEFAULT '',
  `combat_delay` INT(11) unsigned NOT NULL DEFAULT '0',
  `auto_follow` INT(11) unsigned NOT NULL DEFAULT '1',
  `autoequip` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Persistent Playerbot settings per alt';

-- ----------------------------
-- Table structure for `playerbot_quest_data`
-- ----------------------------
DROP TABLE IF EXISTS `playerbot_quest_data`;
CREATE TABLE `playerbot_quest_data` (
  `autocomplete` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`autocomplete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;