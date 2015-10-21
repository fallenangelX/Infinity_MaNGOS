DELETE FROM `command` WHERE name='maze';
INSERT INTO `command` VALUES ('maze', '3', 'Syntax: .maze #COMMAND #PARAMETER\r\n\r\nCommands:\r\n0: Initialize maze (Parameter: Maze width, e.g. \".maze 0 9\" to create a maze 9 x 9 boxes wide.)\r\n1: Generate maze (Parameter: StartCellX StartCellY, e.g. \".maze 1 1\" to start generating the maze at box position [1:1]. Zero and even numbers are NOT allowed.)\r\n2: Place maze (Parameter: SmallBoxes HeightLevel, e.g. \".maze 2 true 4\" to place a maze at your current position with small boxes and 4 additional boxes on top of each maze box.)\r\n3: Remove your last placed maze (e.g. \".maze 3\")\r\n4: Delete all cached maze data (e.g. \".maze 4\", \"Initialize maze\" will do this automatically.)');

DELETE FROM `gameobject_template` WHERE entry BETWEEN 600000 AND 600008;
INSERT INTO `gameobject_template` VALUES ('600000', '5', '31', 'Simple Wood (2)', '', '', '', '0', '0', '1.6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600001', '5', '31', 'Simple Wood (4)', '', '', '', '0', '0', '3.2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600002', '5', '6737', 'Fire symbol wood (4)', '', '', '', '0', '0', '3.2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600003', '5', '8994', 'Beer symbol wood (4)', '', '', '', '0', '0', '3.2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600004', '2', '9069', 'Labyrinth Chest', '', '', '', '0', '0', '1.5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600005', '3', '9069', 'Labyrinth Winner Chest', '', '', '', '0', '0', '1.5', '0', '0', '0', '0', '0', '0', '57', '14', '86400', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600006', '5', '31', 'Einfaches Holz (8)', '', '', '', '0', '0', '6.4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600007', '5', '6737', 'Fire symbol wood (8)', '', '', '', '0', '0', '6.4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `gameobject_template` VALUES ('600008', '5', '8994', 'Beer symbol wood (8)', '', '', '', '0', '0', '6.4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
