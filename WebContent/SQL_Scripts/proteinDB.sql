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
  
  CREATE TABLE IF NOT EXISTS `Disease` (
  `dis_id` varchar (25),
  `name` varchar(25),
   `type` varchar(25),
    `prognosis` varchar(25),
     `treatment` varchar(25),
      `assoc_gene` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Pathogenicity` (
  `dis_id` varchar (25),
  `prot_id` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Cofactor` (
  `prot_id` varchar (25),
  `ligand_id` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Ligand` (
  `ligand_id` varchar (25),
  `mol_weight` varchar(25),
   `class` varchar(25),
    `polarity` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Substrate` (
  `prot_id` varchar (25),
  `kinetics_id` varchar(25),
   `ligand_id` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Protein` (
  `prot_id` varchar (25),
  `name` varchar(25),
   `pl` varchar(25),
    `family` varchar(25),
     `localization` varchar(25),
     `gene_loc` varchar(25),
      `size` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `Amino Acid` (
  `letter_code` varchar (25),
  `tri_letter_code` varchar(25),
   `polarity` varchar(25),
    `charge` varchar(25),
     `n_pka` varchar(25),
      `r_pka` varchar(25),
      `c_pka` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

CREATE TABLE IF NOT EXISTS `kinetics_prof` (
  `kinetics_id` varchar (25),
  `Vmax` varchar(25),
   `km` varchar(25),
    `kcat` varchar(25),
     `treatment` varchar(25),
      `assoc_gene` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;


CREATE TABLE IF NOT EXISTS `PDBfile` (
  `id` varchar (25),
  `filepath` varchar(25),
   `size` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;


CREATE TABLE IF NOT EXISTS `3D_rep` (
  `pdb_id` varchar (25),
      `prot_id` varchar(25)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;
  
  
  
  
  
