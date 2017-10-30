DROP database proteinDB;
CREATE database proteinDB;
USE proteinDB;

DROP TABLE IF EXISTS `protein`;  
CREATE TABLE `protein` (
  `protein_ID` int(11)  NOT NULL AUTO_INCREMENT,
  `protein_name` varchar(45) DEFAULT '0',
  `amino_sequence` mediumtext NOT NULL,
  `localization` varchar(45) DEFAULT '0',
  `mol_weight` varchar(45) DEFAULT '0',
  `gene_loc` varchar(45) DEFAULT '0',
  PRIMARY KEY (`protein_ID`)
  );
  
-- select * from protein;

DROP TABLE IF EXISTS `enzyme`;  
CREATE TABLE `protein` (
  `protein_ID` int(11)  NOT NULL AUTO_INCREMENT,
  `protein_name` varchar(45) DEFAULT '0',
  `amino_sequence` mediumtext NOT NULL,
  `localization` varchar(45) DEFAULT '0',
  `mol_weight` varchar(45) DEFAULT '0',
  `gene_loc` varchar(45) DEFAULT '0',
  PRIMARY KEY (`protein_ID`)
  );
  
  
  
  
  