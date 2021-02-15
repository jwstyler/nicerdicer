use inf_project;

DELIMITER $$
CREATE TRIGGER `logging_terms`
AFTER INSERT
ON `terms`
FOR EACH ROW
BEGIN
 INSERT INTO `log` (`datetime`, `process`, `newValue`, `idTerms`)
 VALUES(now(), "Insert", NEW.`term`, NEW.`idTerms`);
END$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `logging_group`
AFTER INSERT
ON `group`
FOR EACH ROW
BEGIN
 INSERT INTO `log` (`datetime`, `process`, `newValue`, `idGroup`)
 VALUES(now(), "Insert", NEW.`name`, NEW.`idGroup`);
END$$
DELIMITER ;