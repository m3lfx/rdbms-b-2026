-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_1b
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_1b
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_1b` DEFAULT CHARACTER SET utf8 ;
USE `db_1b` ;

-- -----------------------------------------------------
-- Table `db_1b`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_1b`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `address` VARCHAR(255) NOT NULL,
  `barangay` VARCHAR(45) NULL,
  `city` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_1b`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_1b`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `date_ordered` DATE NOT NULL,
  `date_delivered` DATE NOT NULL,
  `status` ENUM('processing', 'delivered', 'canceled') NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_customers_idx` (`customer_id`) ,
  CONSTRAINT `fk_orders_customers`
    FOREIGN KEY (`customer_id`)
    REFERENCES `db_1b`.`customers` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_1b`.`brands`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_1b`.`brands` (
  `brand_id` INT NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(45) NULL,
  PRIMARY KEY (`brand_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_1b`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_1b`.`products` (
  `product_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `price` DECIMAL NULL,
  `quantity` INT NULL,
  `productscol` VARCHAR(45) NOT NULL,
  `brands_brand_id` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_products_brands1_idx` (`brands_brand_id`),
  CONSTRAINT `fk_products_brands1`
    FOREIGN KEY (`brands_brand_id`)
    REFERENCES `db_1b`.`brands` (`brand_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_1b`.`products_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_1b`.`products_orders` (
  `product_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`product_id`, `order_id`),
  INDEX `fk_products_has_orders_orders1_idx` (`order_id` ),
  INDEX `fk_products_has_orders_products1_idx` (`product_id` ),
  CONSTRAINT `fk_products_has_orders_products1`
    FOREIGN KEY (`product_id`)
    REFERENCES `db_1b`.`products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_has_orders_orders1`
    FOREIGN KEY (`order_id`)
    REFERENCES `db_1b`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
