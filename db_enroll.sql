-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_enroll
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_enroll
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_enroll` DEFAULT CHARACTER SET utf8 ;
USE `db_enroll` ;

-- -----------------------------------------------------
-- Table `db_enroll`.`programs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`programs` (
  `program_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `section` VARCHAR(45) NULL,
  PRIMARY KEY (`program_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_enroll`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `programs_program_id` INT NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ) ,
  INDEX `fk_students_programs1_idx` (`programs_program_id` ) ,
  CONSTRAINT `fk_students_programs1`
    FOREIGN KEY (`programs_program_id`)
    REFERENCES `db_enroll`.`programs` (`program_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_enroll`.`subjects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`subjects` (
  `subject_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `code` VARCHAR(6) NOT NULL,
  `units` INT NOT NULL,
  PRIMARY KEY (`subject_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_enroll`.`enrollment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`enrollment` (
  `subject_subject_id` INT NOT NULL,
  `students_student_id` INT NOT NULL,
  `date_enrolled` DATE NULL,
  `grade` DECIMAL(3,2) NULL,
  PRIMARY KEY (`subject_subject_id`, `students_student_id`),
  INDEX `fk_subject_has_students_students1_idx` (`students_student_id` ) ,
  INDEX `fk_subject_has_students_subject_idx` (`subject_subject_id` ) ,
  CONSTRAINT `fk_subject_has_students_subject`
    FOREIGN KEY (`subject_subject_id`)
    REFERENCES `db_enroll`.`subjects` (`subject_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_subject_has_students_students1`
    FOREIGN KEY (`students_student_id`)
    REFERENCES `db_enroll`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_enroll`.`sections`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`sections` (
  `section_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `program_id` INT NOT NULL,
  PRIMARY KEY (`section_id`),
  INDEX `fk_sections_programs1_idx` (`program_id` ) ,
  CONSTRAINT `fk_sections_programs1`
    FOREIGN KEY (`program_id`)
    REFERENCES `db_enroll`.`programs` (`program_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_enroll`.`sections_has_students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_enroll`.`sections_has_students` (
  `sections_section_id` INT NOT NULL,
  `students_student_id` INT NOT NULL,
  PRIMARY KEY (`sections_section_id`, `students_student_id`),
  INDEX `fk_sections_has_students_students1_idx` (`students_student_id` ) ,
  INDEX `fk_sections_has_students_sections1_idx` (`sections_section_id` ) ,
  CONSTRAINT `fk_sections_has_students_sections1`
    FOREIGN KEY (`sections_section_id`)
    REFERENCES `db_enroll`.`sections` (`section_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sections_has_students_students1`
    FOREIGN KEY (`students_student_id`)
    REFERENCES `db_enroll`.`students` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
