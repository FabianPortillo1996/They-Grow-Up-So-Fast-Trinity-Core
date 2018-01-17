DELETE FROM `pool_template` WHERE `entry`=101196;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES(101196,1,"GPLP - Pool Misiones Diarias - 29035 ");


UPDATE `quest_template` SET `ExclusiveGroup`=29035 WHERE `id`=29035;
UPDATE `quest_template` SET `ExclusiveGroup`=29035 WHERE `id`=29040;
UPDATE `quest_template` SET `ExclusiveGroup`=29035 WHERE `id`=29038;
UPDATE `quest_template` SET `ExclusiveGroup`=29035 WHERE `id`=29037;


DELETE FROM `pool_quest` WHERE `pool_entry`=101196 ;
INSERT INTO `pool_quest` VALUES(29035,101196,'Antojos de cachorro');
INSERT INTO `pool_quest` VALUES(29040,101196,'El primer juguete del cachorro');
INSERT INTO `pool_quest` VALUES(29038,101196,'Práctica de caza');
INSERT INTO `pool_quest` VALUES(29037,101196,'Tomar prestado de los Nevada');


DELETE FROM `creature_queststarter` WHERE `id`=51677;
INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES(51677,29035);
INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES(51677,29040);
INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES(51677,29038);
INSERT INTO `creature_queststarter` (`id`,`quest`) VALUES(51677,29037);


DELETE FROM `creature_questender` WHERE `id`=51677;
INSERT INTO `creature_questender` (`id`,`quest`) VALUES(51677,29035);
INSERT INTO `creature_questender` (`id`,`quest`) VALUES(51677,29040);
INSERT INTO `creature_questender` (`id`,`quest`) VALUES(51677,29038);
INSERT INTO `creature_questender` (`id`,`quest`) VALUES(51677,29037);

UPDATE ``creature_template` SET `ScriptName`='npc_winterspring_cub' WHERE `entry`=51677;

