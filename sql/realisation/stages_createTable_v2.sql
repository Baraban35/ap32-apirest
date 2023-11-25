--
-- Structure de la table Specialite
--

CREATE TABLE Specialite (
  ref char(1) NOT NULL,
  sigle char(4) DEFAULT NULL,
  intitule varchar(60) NOT NULL,
  constraint PK_Specialite PRIMARY KEY (ref)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Bloc
--

CREATE TABLE Bloc (
  code int(2) NOT NULL,
  ref char(2) NOT NULL,
  refSpe char(1),
  intitule varchar(60) NOT NULL,
  constraint PK_Bloc PRIMARY KEY (code),
  constraint FK_Bloc_Specialite FOREIGN KEY (refSpe) REFERENCES Specialite (ref)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Competence
--

CREATE TABLE Competence (
  code int(2) NOT NULL,
  refBloc char(2),
  numeroOrdre int(2) NOT NULL,
  refSpe char(1),
  libelle char(255) DEFAULT NULL,
  constraint PK_Competence PRIMARY KEY (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------------------------------
--
-- Structure de la table Etudiant
--

CREATE TABLE Etudiant (
  numero int(8) NOT NULL AUTO_INCREMENT,
  nom varchar(50) NOT NULL,
  prenom varchar(50) NOT NULL,
  adresse varchar(100) DEFAULT NULL,
  codePostal char(5) DEFAULT NULL,
  ville varchar(100) DEFAULT NULL,
  email varchar(100) NOT NULL,
  mdp char(20) NOT NULL,
  anneePromo int(4) NOT NULL,
  refSpe char(1),
  codeAss varchar(100) DEFAULT NULL,
  nomAss varchar(100) DEFAULT NULL,
  constraint PK_Etudiant PRIMARY KEY (numero),
  constraint FK_Etudiant_Specialite FOREIGN KEY (refSpe) REFERENCES Specialite (ref)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Categorie
--

CREATE TABLE Categorie (
  id int(3) NOT NULL AUTO_INCREMENT,
  libelle varchar(100) NOT NULL,
  constraint PK_Categorie PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Structure de la table Organisation
--

CREATE TABLE Organisation (
  numero int(8) NOT NULL AUTO_INCREMENT,
  nom varchar(100) NOT NULL,
  idCategorie int(3),
  adresse varchar(100) DEFAULT NULL,
  codePostal char(5) DEFAULT NULL,
  ville varchar(100) DEFAULT NULL,
  tel char(10) DEFAULT NULL,
  fax char(10) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  urlSiteWeb varchar(100) DEFAULT NULL,
  constraint PK_Organisation PRIMARY KEY (numero),
  constraint FK_Organisation_Categorie FOREIGN KEY (idCategorie) REFERENCES Categorie (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Contact
--

CREATE TABLE Contact (
  numeroOrganisation int(8),
  id int(8) NOT NULL,
  civilite varchar(3) DEFAULT NULL,
  prenom varchar(50) DEFAULT NULL,
  nom varchar(50) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  tel char(10) DEFAULT NULL,
  fonction varchar(100) DEFAULT NULL,
  constraint PK_Contact PRIMARY KEY (numeroOrganisation, id),
  constraint FK_Contact_Organisation FOREIGN KEY (numeroOrganisation) REFERENCES Organisation (numero)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table PeriodeStage
--

CREATE TABLE PeriodeStage (
  id int(4) NOT NULL AUTO_INCREMENT,
  dateDeb date DEFAULT NULL,
  dateFin date DEFAULT NULL,
  numAnneeForm int(4) DEFAULT NULL,
  constraint PK_PeriodeStage PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Role
--

CREATE TABLE Role (
  id int(2) NOT NULL,
  intitule varchar(50) DEFAULT NULL,
  constraint PK_Role PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table Stage
--

CREATE TABLE Stage (
  id int(8) NOT NULL AUTO_INCREMENT,
  numeroEtudiant int(8) DEFAULT NULL,
  idPeriodeStage int(4) DEFAULT NULL,
  descriptifMission text DEFAULT NULL,
  moyens varchar(255) DEFAULT NULL,
  numeroOrganisation int(8) DEFAULT NULL,
  nvelleDateDebut date DEFAULT NULL,
  nvelleDateFin date DEFAULT NULL,
  constraint PK_Stage PRIMARY KEY (id),
  constraint FK_Stage_Organisation FOREIGN KEY (numeroOrganisation) REFERENCES Organisation (numero),
  constraint FK_Stage_Etudiant FOREIGN KEY (numeroEtudiant) REFERENCES Etudiant (numero),
  constraint FK_Stage_PeriodeStage FOREIGN KEY (idPeriodeStage) REFERENCES PeriodeStage (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Structure de la table JouerRole
--

CREATE TABLE JouerRole (
  idStage int(8) NOT NULL,
  idRole int(2) NOT NULL,
  numeroOrganisation int(8) NOT NULL,
  idContact int(8) DEFAULT NULL,
  constraint PK_JouerRole PRIMARY KEY (idStage, idRole),
  constraint FK_JouerRole_Stage FOREIGN KEY (idStage) REFERENCES Stage (id),
  constraint FK_JouerRole_Role FOREIGN KEY (idRole) REFERENCES `Role` (id),
  constraint FK_JouerRole_Contact FOREIGN KEY(numeroOrganisation, idContact) REFERENCES `Contact`(numeroOrganisation, id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- constraint FK_JouerRole_Contact FOREIGN KEY (idContact) REFERENCES Contact (id)
-- --------------------------------------------------------
--
-- Structure de la table CompetenceStage
--
CREATE TABLE CompetenceStage (
  idStage int(8) NOT NULL,
  codeCompetence int(2) NOT NULL,
  constraint PK_CompetenceStage PRIMARY KEY (idStage, codeCompetence),
  constraint FK_CS_Stage FOREIGN KEY (idStage) REFERENCES Stage (id),
  constraint FK_CS_Competence FOREIGN KEY (codeCompetence) REFERENCES Competence (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
