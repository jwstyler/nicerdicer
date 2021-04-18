-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema filmverwaltung
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema filmverwaltung
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `filmverwaltung` DEFAULT CHARACTER SET utf8 ;
USE `filmverwaltung` ;

-- -----------------------------------------------------
-- Table `filmverwaltung`.`filmstudio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmverwaltung`.`filmstudio` (
  `idFilmstudio` INT NOT NULL AUTO_INCREMENT,
  `filmstudio` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`idFilmstudio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`filmtitel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmverwaltung`.`filmtitel` (
  `idFilmtitel` INT NOT NULL AUTO_INCREMENT,
  `filmtitel` VARCHAR(500) NOT NULL,
  `launchDate` DATE NOT NULL,
  `idFilmstudio` INT NOT NULL,
  PRIMARY KEY (`idFilmtitel`),
  INDEX `fk_filmtitel_filmstudios_idx` (`idFilmstudio` ASC),
  CONSTRAINT `fk_filmtitel_filmstudios`
    FOREIGN KEY (`idFilmstudio`)
    REFERENCES `filmverwaltung`.`filmstudio` (`idFilmstudio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmverwaltung`.`country` (
  `idCountry` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`idCountry`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`schauspieler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmverwaltung`.`schauspieler` (
  `idSchauspieler` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(500) NOT NULL,
  `lastname` VARCHAR(500) NOT NULL,
  `country_idCountry` INT NOT NULL,
  PRIMARY KEY (`idSchauspieler`),
  INDEX `fk_schauspieler_country1_idx` (`country_idCountry` ASC),
  CONSTRAINT `fk_schauspieler_country1`
    FOREIGN KEY (`country_idCountry`)
    REFERENCES `filmverwaltung`.`country` (`idCountry`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `filmverwaltung`.`filmtitel_has_schauspieler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `filmverwaltung`.`filmtitel_has_schauspieler` (
  `idFilmtitel` INT NOT NULL,
  `idSchauspieler` INT NOT NULL,
  PRIMARY KEY (`idFilmtitel`, `idSchauspieler`),
  INDEX `fk_filmtitel_has_schauspieler_schauspieler1_idx` (`idSchauspieler` ASC),
  INDEX `fk_filmtitel_has_schauspieler_filmtitel1_idx` (`idFilmtitel` ASC),
  CONSTRAINT `fk_filmtitel_has_schauspieler_filmtitel1`
    FOREIGN KEY (`idFilmtitel`)
    REFERENCES `filmverwaltung`.`filmtitel` (`idFilmtitel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filmtitel_has_schauspieler_schauspieler1`
    FOREIGN KEY (`idSchauspieler`)
    REFERENCES `filmverwaltung`.`schauspieler` (`idSchauspieler`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

ALTER TABLE `filmtitel` AUTO_INCREMENT = 3000;