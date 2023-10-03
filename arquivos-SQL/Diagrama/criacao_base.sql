-- MySQL Script generated by MySQL Workbench
-- seg 20 mar 2023 00:25:53
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vendas_sucos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vendas_sucos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vendas_sucos` DEFAULT CHARACTER SET utf8mb3 ;
USE `vendas_sucos` ;

-- -----------------------------------------------------
-- Table `vendas_sucos`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas_sucos`.`CLIENTES` (
  `CPF` VARCHAR(11) NOT NULL,
  `NOME` VARCHAR(100) NULL DEFAULT NULL,
  `ENDERECO` VARCHAR(150) NULL DEFAULT NULL,
  `BAIRRO` VARCHAR(50) NULL DEFAULT NULL,
  `CIDADE` VARCHAR(50) NULL DEFAULT NULL,
  `ESTADO` VARCHAR(50) NULL DEFAULT NULL,
  `CEP` VARCHAR(8) NULL DEFAULT NULL,
  `DATA_NASCIMENTO` DATE NULL DEFAULT NULL,
  `IDADE` VARCHAR(45) NULL DEFAULT NULL,
  `SEXO` VARCHAR(1) NULL DEFAULT NULL,
  `LIMITE_CREDITO` FLOAT NULL DEFAULT NULL,
  `VOLUME_COMPRA` FLOAT NULL DEFAULT NULL,
  `PRIMEIRA_COMPRA` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `vendas_sucos`.`VENDEDORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas_sucos`.`VENDEDORES` (
  `MATRICULA` VARCHAR(5) NOT NULL,
  `NOME` VARCHAR(100) NULL DEFAULT NULL,
  `BAIRRO` VARCHAR(50) NULL DEFAULT NULL,
  `COMISSAO` FLOAT NULL DEFAULT NULL,
  `DATA_ADMISSAO` DATE NULL DEFAULT NULL,
  `FERIAS` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`MATRICULA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `vendas_sucos`.`NOTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas_sucos`.`NOTAS` (
  `NUMERO` VARCHAR(5) NOT NULL,
  `DATA_VENDA` DATE NULL DEFAULT NULL,
  `CPF` VARCHAR(11) NULL DEFAULT NULL,
  `MATRICULA` VARCHAR(5) NULL DEFAULT NULL,
  `IMPOSTO` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  INDEX `FK_CLIENTES` (`CPF` ASC) VISIBLE,
  INDEX `FK_VENDEDORES` (`MATRICULA` ASC) VISIBLE,
  CONSTRAINT `FK_CLIENTES`
    FOREIGN KEY (`CPF`)
    REFERENCES `vendas_sucos`.`CLIENTES` (`CPF`),
  CONSTRAINT `FK_VENDEDORES`
    FOREIGN KEY (`MATRICULA`)
    REFERENCES `vendas_sucos`.`VENDEDORES` (`MATRICULA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `vendas_sucos`.`PRODUTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas_sucos`.`PRODUTOS` (
  `CODIGO` VARCHAR(10) NOT NULL,
  `DESCRITOR` VARCHAR(100) NULL DEFAULT NULL,
  `SABOR` VARCHAR(50) NULL DEFAULT NULL,
  `TAMANHO` VARCHAR(50) NULL DEFAULT NULL,
  `EMBALAGEM` VARCHAR(50) NULL DEFAULT NULL,
  `PRECO_LISTA` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `vendas_sucos`.`ITENS_NOTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas_sucos`.`ITENS_NOTAS` (
  `NUMERO` VARCHAR(5) NOT NULL,
  `CODIGO` VARCHAR(10) NOT NULL,
  `QUANTIDADE` INT NULL DEFAULT NULL,
  `PRECO` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`CODIGO`, `NUMERO`),
  INDEX `FK_NOTAS` (`NUMERO` ASC) VISIBLE,
  CONSTRAINT `FK_NOTAS`
    FOREIGN KEY (`NUMERO`)
    REFERENCES `vendas_sucos`.`NOTAS` (`NUMERO`),
  CONSTRAINT `FK_PRODUTOS`
    FOREIGN KEY (`CODIGO`)
    REFERENCES `vendas_sucos`.`PRODUTOS` (`CODIGO`),
  CONSTRAINT `FK_VENDAS`
    FOREIGN KEY (`NUMERO`)
    REFERENCES `vendas_sucos`.`NOTAS` (`NUMERO`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
