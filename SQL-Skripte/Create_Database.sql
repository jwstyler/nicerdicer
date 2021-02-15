-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema inf_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inf_project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inf_project` DEFAULT CHARACTER SET utf8 ;
USE `inf_project` ;

-- -----------------------------------------------------
-- Table `inf_project`.`group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inf_project`.`group` (
  `idGroup` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idGroup`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inf_project`.`terms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inf_project`.`terms` (
  `idTerms` INT NOT NULL AUTO_INCREMENT,
  `term` VARCHAR(45) NOT NULL,
  `description` VARCHAR(1000) NOT NULL,
  `idGroup` INT NOT NULL,
  PRIMARY KEY (`idTerms`),
  INDEX `fk_terms_group_idx` (`idGroup` ASC),
  CONSTRAINT `fk_terms_group`
    FOREIGN KEY (`idGroup`)
    REFERENCES `inf_project`.`group` (`idGroup`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inf_project`.`log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inf_project`.`log` (
  `idlog` INT NOT NULL AUTO_INCREMENT,
  `datetime` DATETIME NOT NULL,
  `process` VARCHAR(45) NOT NULL,
  `oldValue` VARCHAR(500) NULL,
  `newValue` VARCHAR(45) NOT NULL,
  `idTerms` INT NULL,
  `idGroup` INT NULL,
  PRIMARY KEY (`idlog`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
