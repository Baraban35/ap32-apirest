
INSERT INTO Specialite (ref, sigle, intitule) VALUES
('A', 'SISR', 'Solutions d\'Infrastructure Systèmes et Réseaux'),
('B', 'SLAM', 'Solutions Logicielles Applications Métiers'),
('C', NULL, 'Commun');


INSERT INTO Categorie (id, libelle) VALUES
(1, 'Administration, collectivités locales'),
(2, 'Banque, finance, assurance'),
(3, 'Conseil'),
(4, 'Constructeur'),
(5, 'Distributeur informatique'),
(6, 'Editeur informatique'),
(7, 'Enseignement, formation'),
(8, 'Industrie, BTP'),
(9, 'Opérateur télécom'),
(10, 'Services (Hors informatique) : commerce, transport, tourisme, etc'),
(11, 'Société de service et d\'ingénierie informatique'),
(12, 'Autres'),
(13, 'Santé');

INSERT INTO Dept (numero, nom) VALUES
(1, 'Ain'),
(2, 'Aisne'),
(3, 'Allier'),
(4, 'Alpes de Haute Provence'),
(5, 'Hautes Alpes'),
(6, 'Alpes Maritimes'),
(7, 'Ardèche'),
(8, 'Ardennes'),
(9, 'Ariège'),
(10, 'Aube'),
(11, 'Aude'),
(12, 'Aveyron'),
(13, 'Bouche du Rhône'),
(14, 'Calvados'),
(15, 'Cantal'),
(16, 'Charente'),
(17, 'Charente Maritime'),
(18, 'Cher'),
(19, 'Corrèze'),
(20, 'Corse'),
(21, 'Côte d\'Or'),
(22, 'Côte d\'Armor'),
(23, 'Creuse'),
(24, 'Dordogne'),
(25, 'Doubs'),
(26, 'Drôme'),
(27, 'Eure'),
(28, 'Eure et Loire'),
(29, 'Finistère'),
(30, 'Gard'),
(31, 'Haute Garonne'),
(32, 'Gers'),
(33, 'Gironde'),
(34, 'Herault'),
(35, 'Ille et Vilaine'),
(36, 'Indre'),
(37, 'Indre et Loire'),
(38, 'Isère'),
(39, 'Jura'),
(40, 'Landes'),
(41, 'Loir et Cher'),
(42, 'Loire'),
(43, 'Haute Loire'),
(44, 'Loire Atlantique'),
(45, 'Loiret'),
(46, 'Lot'),
(47, 'Lot et Garonne'),
(48, 'Lozère'),
(49, 'Maine et Loire'),
(50, 'Manche'),
(51, 'Marne'),
(52, 'Haute Marne'),
(53, 'Mayenne'),
(54, 'Meurthe et Moselle'),
(55, 'Meuse'),
(56, 'Morbihan'),
(57, 'Moselle'),
(58, 'Nièvre'),
(59, 'Nord'),
(60, 'Oise'),
(61, 'Orne'),
(62, 'Pas de Calais'),
(63, 'Puy de Dôme'),
(64, 'Pyrénées Atlantiques'),
(65, 'Hautes Pyrénées'),
(66, 'Pyrénées Orientales'),
(67, 'Bas Rhin'),
(68, 'Haut Rhin'),
(69, 'Rhône'),
(70, 'Haute Saône'),
(71, 'Saône et Loire'),
(72, 'Sarthe'),
(73, 'Savoie'),
(74, 'Haute Savoie'),
(75, 'Paris'),
(76, 'Seine Maritime'),
(77, 'Seine et Marne'),
(78, 'Yvelyne'),
(79, 'Deux Sèvres'),
(80, 'Somme'),
(81, 'Tarn'),
(82, 'Tarn et Garonne'),
(83, 'Var'),
(84, 'Vaucluse'),
(85, 'Vendée'),
(86, 'Vienne'),
(87, 'Haute Vienne'),
(88, 'Vosges'),
(89, 'Yonne'),
(90, 'Belfort'),
(91, 'Essonne'),
(92, 'Hauts de Seine'),
(93, 'Seine Saint Denis'),
(94, 'Val de Marne'),
(95, 'Val d\'Oise'),
(97, 'Dom Tom');

INSERT INTO Etudiant (numero, nom, prenom, anneePromo, refSpe) VALUES
(1, 'Batauld', 'Nicolas', 2022, 'B'),
(2, 'Bosson', 'Jeremie', 2022, 'A'),
(3, 'Cormin', 'Freddy', 2022, 'A'),
(4, 'Durand', 'François', 2022, 'B'),
(5, 'Mars', 'Pierre', 2022, 'A'),
(6, 'Guyon', 'Romain', 2022, 'A'),
(7, 'Lagaz', 'Sylvain', 2022, 'B'),
(8, 'Lellican', 'Benoit', 2022, 'A'),
(9, 'Lavent', 'Yannick', 2022, 'A'),
(10, 'Le Beau', 'Sylvain', 2022, 'A'),
(11, 'Le Quemener', 'Mathieu', 2022, 'A'),
(12, 'Thomas', 'Julie', 2022, 'B'),
(13, 'Malescoit', 'Damien', 2022, 'A'),
(14, 'Pagon', 'Anne', 2022, 'B'),
(15, 'Ghilouze', 'Pierre', 2022, 'A'),
(16, 'Repil', 'Gael', 2022, 'B'),
(17, 'Ripollin', 'Mathias', 2022, 'B'),
(18, 'Trevent', 'Alban', 2022, 'A'),
(19, 'Yaun', 'Long', 2022, 'A'),
(20, 'Bousnier', 'Antoine', 2022, 'B'),
(21, 'Boucle', 'Amelie', 2022, 'A'),
(22, 'Bazordon', 'Antony', 2022, 'A'),
(23, 'Birnoist', 'Florent', 2022, 'B'),
(24, 'Ertam', 'Hiba', 2022, 'B'),
(25, 'Barllier', 'Ludovic', 2022, 'B'),
(26, 'Brillat', 'Sylvain', 2022, 'A'),
(27, 'Civat', 'Xavier', 2022, 'A'),
(28, 'Carolin', 'Olivier', 2022, 'A'),
(29, 'Darlot', 'Jean-François', 2022, 'A'),
(30, 'Carmond', 'Jeremy', 2022, 'A'),
(31, 'Hesain', 'Jerôme', 2022, 'A'),
(32, 'Halopon', 'Typhaine', 2022, 'A'),
(33, 'Garoman', 'Nicolas', 2022, 'A'),
(34, 'Imbert', 'Samuel', 2022, 'A'),
(35, 'Jouin', 'Pierre', 2022, 'A'),
(36, 'Leman', 'Jeremy', 2022, 'A'),
(37, 'Le Moing', 'Raphael', 2022, 'A'),
(38, 'Le Vaquert', 'Yannick', 2022, 'A'),
(39, 'Vamin', 'Charly', 2022, 'A'),
(40, 'Leray', 'Axel', 2022, 'A'),
(41, 'Gautier', 'Quentin', 2022, 'A'),
(42, 'Rubin', 'François', 2022, 'A'),
(43, 'Toadim', 'Antoine', 2022, 'A'),
(44, 'Tranchard', 'Romain', 2022, 'A');


INSERT INTO Organisation (numero, nom, idCategorie, adresse, codePostal, ville, numeroDept, tel, fax, email, urlSiteWeb) VALUES
(1, 'Rectorat de Rennes', 1, '96 rue d''Antrain', '35000', 'Rennes', 35, '02 23 21 77 77', NULL, NULL, NULL),
(2, 'IRISA', 7, 'Campus de Beaulieu', '35042', 'Rennes Cedex', 35, '02 99 84 71 00', '02 99 84 71 71',  NULL, 'www.irisa.fr'),
(3, 'SOLLEIL', NULL, '3 rue de la Carrière', '35920', 'Rennes', 35, '02 99 14 40 70', '', 'solleil@solleil.fr', 'www.solleil.fr'),
(4, 'Lycée Victor et Hélène Basch', 7, '15 avenue Charles Tillon', '35000', 'Rennes', 35, '0299544443', NULL, '', 'lidf.homeip.net'),
(5, 'Lycée professionnel Coëtlogon', 7, 'Rue Antoine Joly - BP 18307', '35083', 'Rennes Cedex', 35, '02 99 54 62 62', NULL, NULL, NULL),
(6, 'Informatique Tech Service', 5, 'ZI du Dressère', '56150', 'Baud', 56, '02 97 51 80 20', '02 97 51 87 83', NULL, NULL),
(7, 'JET PRINT''S 35', 5, '8 rue de la Garenne', '35135', 'Chantepie', 35, '06 60 70 25 28', '08 25 14 62 61', NULL, 'www.jetprints35.fr'),
(8, 'SIB - Syndicat Interhospitalier de Bretagne', 12, '4 rue du Professeur Jean Pecker', '35000', 'Rennes', 35, '02 99 54 75 10', '02 99 54 75 09', NULL, 'www.sib.fr'),
(9, 'CFP - Brest', 7, '15 Place Sanquer', '29200', 'Brest', 29, '02 98 44 29 33', '02 99 44 51 10', NULL, 'www.cfp29.org'),
(10, 'AGI Informatique', 5, '332 rue de Nantes', '35200', 'Rennes', 35, '02 99 50 70 39', '02 9932 04 16', NULL, NULL),
(11, 'France Télécom - Orange Business Services', 1, '9, rue du Chêne germain', '35512', 'Cesson-Sévigné', 35, '02 23 28 30 30', NULL, NULL, 'www.orange-business.com'),
(12, 'DRE Bretagne', 1, '10, rue Maurice Fabre CS 96515', '35065', 'Rennes cedex', 35, '02 99 33 45 55', '02 99 33 44 33', 'DRE-Bretagne@developpement-durable.gouv.fr', 'www.bretagne.equipement.gouv.fr'),
(13, 'Ecole des Métiers de l&#039;Environnement', 7, 'Campus de Ker Lann - Boulevard Robert Schumann', '35170', 'Bruz', 35, '02 99 05 88 00', '02 99 05 88 09', NULL,'www.ecole-eme.com'),
(14, 'BSH Constructions et Rénovations', 8, '5, venelle des Anglais', '22450', 'La Roche Derrien', 22, NULL, NULL, NULL, NULL),
(15, 'Poste - DSI', 1, '11, rue Vaneau - BP 13282', '35032', 'Rennes cedex', NULL, NULL, NULL, NULL, NULL),
(16, 'Lenerrant', 8, 'ZI du Placis', '35230', 'Bourgbarré', 35, '02.99.00.45.00', '02.99.00.40.02', NULL, NULL),
(17, 'AT & MIS', 5, '40 rue du Bignon', '35135', 'Chantepie', 35, '02 99 86 30 37', NULL, NULL, NULL),
(18, 'CAF Ille et Vilaine', 1, 'Cours des Alliés', '35028', 'Rennes Cedex 9', 35, '02 99 29 19 54', '02 99 30 54 71', NULL, 'www.caf.fr'),
(19, 'Lycée-Collège Saint-Pierre', 7, '16, rue Saint-Pierre', '22015', 'Saint-Brieuc', 22, '02 96 68 58 00', NULL, NULL, NULL),
(20, 'Clinique de la Porte de l''Orient', 13, '3 rue Robert de la Croix', '56100', 'Lorient', 56, '02 97 64 81 54', '02 97 64 81 10', NULL, NULL),
(21, 'SDI', 2, 'Parc de Beaujardin', '35410', 'Chateaugiron', 35, '0299372450', NULL, NULL, 'www.sdi-info.com'),
(22, 'Wizdeo', 12, '18 rue de la Rigourdière', '35510', 'Cesson-Sévigné', 35, '02 99 83 44 71', NULL, NULL, 'www.wizdeo.com'),
(23, 'Correspondance France-Chine', 12, '3 rue Lécuyer', '75018', 'Paris', 75, '01 55 28 60 35', NULL, NULL, 'infoschinefrance.com'),
(25, 'Ecole de Reconversion Professionnelle Jean Janvier', 7, '11 rue Edouard Vaillant', '35000', 'Rennes', 35, NULL, '02 99 59 14 47', NULL, 'www.erp.rennes.emac.org'),
(26, 'Clinique La Sagesse', 13, '4 place Saint-Guénolé - CS 44345', '35043', 'Rennes', 35, '02 99 85 75 75', '02 99 85 76 00', NULL, NULL),
(27, 'Groupe CPA - Cliniques Privées Associées', 13, '10 Boulevard de la Boutière', '35760', 'Saint-Grégoire', 35, '02 99 23 93 41', NULL, NULL, NULL),
(28, 'Kit-PC', 5, '4 rue Belle-Ile', '35760', 'Saint-Grégoire', 35, '02 23 25 01 95', '02 23 25 01 89', NULL, 'www.kit-pc.fr'),
(29, 'Centre Médecine Physique Réadaptation ND Lourdes', 13, '54 rue Saint-Hélier', '35000', 'Rennes', 35, '02 99 29 50 99', NULL, NULL, NULL),
(30, 'Chambre d''Agriculture', 1, 'Rue Le Lannov - CS 14226', '35042', 'Rennes Cedex', 35, '02 23 48 23 23', '02 23 48 23 25', NULL, 'www.sinagri.com'),
(31, 'ICNS', 5, '48 rue de Lorient', '35000', 'Rennes', 35, '02 99 33 72 52', NULL, NULL, 'www.icns.fr'),
(32, 'Mairie de Bourgbarré', 1, '1 rue des Sports', '35150', 'Bourgbarré', 35, '02 99 57 66 96', '02 99 57 70 60', 'mairie@bourgbarre.fr', 'www.bourgbarre.fr'),
(33, 'Point P Bretagne', 8, '23 Boulevard de la Haie des Cognets', '35136', 'Saint-Jacques de la Lande', 35, '02 99 65 20 20', '02 99 65 20 16', NULL, 'www.groupe.pointp.fr'),
(34, 'Logidis Comptoirs Modernes Carrefour', 11, 'ZAC des Cormiers', '35650', 'Le Rheu', 35, NULL, '02 99 14 76 79', NULL, NULL),
(35, 'Digital DC Système', 11, 'Bâtiment B - Rue Pierre de maupertuis', '35170', 'Bruz', 35, '02 99 57 90 74', NULL, NULL, NULL),
(36, 'Société Quincaillerie Boschat', 8, 'Route de Plancoët - BP 347', '22403', 'Lamballe Cedex', 22, NULL, NULL, NULL, NULL),
(37, 'Stade Rennais', 12, 'La Piverdière CS 53909', '35039', 'Rennes', 35, NULL, NULL, NULL, 'www.staderennais.com');

INSERT INTO Contact (id, numeroOrganisation, civilite, prenom, nom, email, tel, fonction) VALUES
(1, 1, 'Madame', 'Françoise', 'Badouin', NULL, NULL, NULL),
(2, 2, 'Monsieur', 'Didier', 'Marin', 'didier.marin@irisa.fr', '0299112233', 'Responsable des moyens informatiques'),
(3, 2, 'Monsieur', 'Christophe', 'Guillon', 'christophe.guillon@irisa.fr', '0299445566', ''),
(4, 2, 'Monsieur', 'François', 'Gourbet', 'Francois.Gourbet@irisa.fr', '0299778899', ''),
(5, 2, 'Madame', 'Isabelle', 'Locaffon', 'Isabelle.Locaffon@irisa.fr', '0299001122', ''),
(6, 4, 'Monsieur', 'Jean-Pierre', 'Laurent', '', '', 'Proviseur'),
(7, 4, 'Monsieur', 'Frédérick', 'Masson', '', '', 'Administrateur réseau'),
(8, 5, 'Monsieur', 'Didier', 'Carmon', NULL, NULL, NULL),
(9, 6, 'Monsieur', 'Franck', 'Gilton', NULL, '02 97 51 80 20', 'Gérant'),
(10, 7, 'Monsieur', 'Grégory', 'Mourtin', 'gregory@jetprint35.fr', '0299334455', 'Gérant'),
(11, 8, 'Madame', 'Mireille', 'Baurand', NULL, '0299667788', 'Responsable support technique'),
(12, 8, 'Monsieur', 'Florent', 'Coupeur', NULL, '0299990011', 'Technicien'),
(13, 2, 'Monsieur', 'Michel', 'Tarmini', 'michel.tarmini@irisa.fr', NULL, NULL),
(15, 9, 'Monsieur', 'Philippe', 'Kermarrec', 'philippe.kermarrec@cfp29.org', '0298223344', 'Responsable informatique'),
(16, 10, 'Madame', 'Marcelline', 'Hochet', NULL, NULL, 'Gérante'),
(17, 10, 'Monsieur', 'Johann', 'Rondin', NULL, NULL, NULL),
(18, 1, 'Monsieur', 'Gabriel', 'Plougoulen', 'gabriel.plougoulen@ac-rennes.fr', '0297556677', 'Responsable service informatique Vannes Pontivy'),
(19, 4, 'Monsieur', 'Simon', 'Jacoupy', 'simon.jacoupy@ac-rennes.fr', NULL, 'Chef de travaux'),
(20, 11, 'Monsieur', 'Stéphane', 'Merlin', 'stephane.merlin@orange-ftgroup.com', '0299889900', 'Directeur sécurité client'),
(21, 11, 'Monsieur', 'Franck', 'Marchand', NULL, '0223112233', NULL),
(22, 12, 'Monsieur', 'Jean-Marie', 'Le Guen', NULL, NULL, 'Chef du Centre Support Mutualisé'),
(23, 12, 'Monsieur', 'Erwan', 'Renat', 'erwan.renat@developpement-durable.gouv.fr', '0223445566', 'Responsable Pôle Suivi projets et développement'),
(24, 15, 'Monsieur', 'Thierry', 'Lanceur', NULL, NULL, 'Responsable exploitation des services centraux'),
(25, 16, 'Monsieur', 'Bernard', 'Fixot', 'bfixot-lenerrant@groupesit.com', NULL, 'Responsable d\'affaires'),
(26, 17, 'Monsieur', 'Paul', 'Evain', NULL, NULL, 'Responsable entreprise'),
(27, 17, 'Monsieur', 'Yannick', 'Bertrand', NULL, NULL, NULL),
(28, 18, 'Monsieur', 'Loïc', 'Ravaudin', NULL, '0299778899', NULL),
(29, 19, 'Monsieur', 'Marc', 'Quéromès', NULL, NULL, 'Directeur groupe scolaire'),
(30, 20, 'Monsieur', 'Stéphane', 'Morel', 'stephane.morel@clinique.mutualite56.fr', NULL, 'Responsable informatique'),
(31, 22, 'Monsieur', 'Corentin', 'Renaudon', NULL, NULL, 'Responsable R&D'),
(32, 23, 'Monsieur', 'Yong', 'Pang', NULL, NULL, 'Secrétaire de l\'association'),
(33, 25, 'Madame', 'Isabelle', 'Fickinger', 'isabelle.fickinger@ac-rennes.fr', '0299112233', 'Administrateur réseau'),
(34, 26, 'Monsieur', 'Siméon', 'Caron', 'scaron@mfiv.fr', '0299445566', NULL),
(35, 27, 'Monsieur', 'Nathan', 'Clarisse', NULL, NULL, 'Ingénieur réseau et système'),
(36, 28, 'Monsieur', 'Michel', 'Le Métayer', NULL, NULL, NULL),
(37, 29, 'Monsieur', 'Pierrick', 'Bellamy', 'bellamy@centrempr-ndl.com', '0299778899', 'Responsable informatique'),
(38, 30, 'Monsieur', 'Pierre-Yves', 'Mahieu', 'direction@ille-et-vilaine.chambagri.fr', NULL, 'Directeur'),
(39, 30, 'Madame', 'Clémentine', 'Quinio', 'clementine.quinio@ille-et-vilaine.chambagri.fr', NULL, 'Chargée de mission informatique'),
(40, 31, 'Monsieur', 'Gilles', 'Noghera', NULL, NULL, NULL),
(41, 32, 'Madame', 'Liliane', 'Cambont', NULL, NULL, 'Directrice générale des services'),
(42, 32, 'Monsieur', 'Pierre-Yves', 'Louaguen', NULL, NULL, 'Adjoint au développement économique'),
(43, 33, 'Monsieur', 'Dominique', 'Ramonis', 'dominique.ramonis@saint-gobain.com', NULL, 'Responsable informatique'),
(44, 34, 'Monsieur', 'Patrick', 'Aussant', 'patrick.aussant@carrefour.com', NULL, 'Responsable de service région ouest'),
(45, 2, 'Monsieur', 'Bernard', 'Decouty', 'Bernard.Decouty@irisa.fr', NULL, NULL),
(46, 3, 'Monsieur', 'Ewen', 'Lévêque', NULL, NULL, NULL),
(47, 13, 'Monsieur', 'Vincent', 'Tandon', 'vincenttandon@ecole-eme.com', NULL, NULL),
(48, 14, 'Monsieur', 'Stéphane', 'Berthelot', NULL, NULL, NULL),
(49, 35, 'Monsieur', 'Régine', 'Bollet', NULL, NULL, 'Gérant société'),
(50, 8, 'Madame', 'Anne', 'Le Guen', NULL, NULL, NULL),
(51, 5, 'Madame', 'Isabelle', 'Lepetit', NULL, NULL, 'Proviseur');

INSERT INTO Periodestage (id, dateDeb, dateFin, numAnneeForm) VALUES
(1, '2021-05-24', '2021-07-02', 1),
(2, '2022-01-03', '2022-02-04', 2),
(3, '2022-05-23', '2022-07-01', 1),
(4, '2023-01-09', '2023-02-17', 2);

INSERT INTO Role (id, intitule) VALUES
(1, 'Responsable de stage'),
(2, 'Tuteur de stage');

INSERT INTO Stage (id, numeroEtudiant, idPeriodeStage, libelle, theme, annee, numeroOrganisation) VALUES
(1, 1, 2, 'Mise en place d\'un service VoIP sous Astérisk', NULL, 2022, 5),
(2, 2, 1, 'Dépannage sur site, mise en place du réseau dans différentes PME', NULL, 2021, 6),
(3, 4, 1, 'Maintenance systèmes informatiques, installation téléphonie VoIP', NULL, 2021, 7),
(4, 12, 1, 'Installation et configuration de nouveaux PCs dans le parc, intégrés dans le réseau du SIB et dans le réseau WiFI', NULL, 2021, 8),
(5, 12, 2, 'Etudier, proposer et tester des solutions de sauvegarde des données des postes de travail.', NULL, 2022, 2),
(6, 14, 2, 'Mise en place d\'un serveur Linux pour hébergement des sites Web et intranet du centre de formation + sécurisation (système de backup, onduleur)', NULL, 2022, 9),
(7, 16, 2, NULL, NULL, 2022, 10),
(8, 16, 1, 'Déploiement de réseaux dans des établissements scolaires', NULL, 2021, 1),
(9, 17, 2, NULL, NULL, 2022, 4),
(10, 4, 3, 'Migration de base Access vers PostgreSql - Développement d\'une application Web de suivi des plages d\'adresses IP à intégrer dans l\'infocentre', 'XHTML/CSS - PHP/PostgreSql', 2022, 12),
(11, 31, 3, 'Maintenance réseau, installation de serveur web', NULL, 2022, 13),
(12, 32, 3, 'Développement d\'évolutions complémentaires d\'une application de gestion de devis.', 'Access VB.Net', 2022, 14),
(13, 34, 3, 'Développement d\'unités d\'aide au reporting', 'PHP/MySQL', 2022, 15),
(14, 36, 3, 'Maintenance, assemblage d\'ordinateurs portables, fixes et serveurs', NULL, 2022, 17),
(15, 37, 3, 'Développement d\'une application web \"Situation agent\" dans l\'intranet', 'XHTML/CSS - PHP/MySql', 2022, 18),
(16, 39, 3, 'Développement d\'une application web \"Situation agent\" dans l\'intranet', 'XHTML/CSS - PHP/MySql', 2022, 18),
(17, 38, 3, 'Maintenance informatique, administration réseau', NULL, 2022, 19),
(18, 41, 3, 'Participation à la réalisation d\'une application de gestion des rendez-vous', 'XHTML/CSS - PHP/MySql - Prototype', 2022, 20),
(19, 43, 3, 'Rendre dynamique le site web de l\'association', 'XHTML/CSS - PHP/MySql', 2022, 23),
(20, 24, 3, 'Réalisation d\'une application permettant de consulter l\'inventaire informatique de l\'ERP', NULL, 2022, 25),
(21, 29, 3, 'Maintenance, assemblage d\'ordinateurs', NULL, 2022, 28),
(22, 30, 3, 'Installation postes, dépannage micros et imprimantes, gestion parc informatique sur GLPI, administration réseau', NULL, 2022, 30),
(23, 33, 3, 'Evolution du site internet de l\'entreprise (création Boutique en ligne) et création d\'un site vitrine pour un client', 'XHTML/CSS - PHP/MySql', 2022, 31),
(24, 7, 3, 'Réalisation d\'une applicztion Access d&quot;un logiciel de suivi des articles par sites des clients', 'Access', 2022, 3),
(25, 42, 3, 'Création de la partie administration du site http://www.toota.fr en c# et ASP.Net sous Visual Studio 2005', 'ASP.net', 2022, 35),
(26, 3, 4, 'Etude et réalisation d\'une application web dans un environnement lamp avec framework CakePhp pour gérer des habilitations', 'XHTML/CSS - PHP/MySql - CakePhp', 2019, 11),
(27, 4, 4, 'Réécriture d\'une application de gestion de marchés public en environnement Web', 'XHTML/CSS - PHP/PostgreSql', 2019, 12),
(28, 31, 4, 'Développement et intégration d\'un module de gestion de mails pour une application sous Magic Edevelopper', 'VB6 - &#039;Magic Edevelopper&#039;', 2019, 3),
(29, 32, 4, 'Réalisation et intégration du module d\'évaluation des formations dans l\'intranet du SIB', 'Java - SQL Server', 2019, 8),
(30, 34, 4, 'Etude et réalisation d\'une application de gestion des interventions de dépannage et contrôle sur les chaudières', 'VB 2005 - Access', 2019, 16),
(31, 36, 4, 'Développement d\'une application web de réservation de salles de visio-conférence interfacée avec un agenda électronique', 'PHP', 2019, 2),
(32, 37, 4, 'Etude et réalisation d\'une application web de gestion des marchés publics à procédure adaptée', 'XHTML/CSS - PHP/PostgreSql', 2019, 12),
(33, 38, 4, 'Adjonction de modules de consultation d\'annuaire au sein d\'un portail intranet', 'ASP.Net VB SQL Server', 2019, 36),
(34, 41, 4, 'Maintenance corrective d\'un intranet, puis évolutive en étudiant et réalisant un module de suivi médical des joueurs', 'XHTML/CSS - PHP/MySql', 2019, 37),
(35, 42, 4, 'Développement d\'évolutions d\'une plateforme de gestion/découpe de vidéos pour Internet', 'PHP/JavaScript/MySQL Eclipse-CakePHP', 2019, 22),
(36, 24, 4, 'Intégration d\'un logiciel de gestion de parc GLPI-OCSNG', NULL, 2019, 26),
(37, 27, 4, NULL, NULL, 2019, 27),
(38, 29, 4, 'Mise en place d\'un nouveau domaine dans un réseau avec liaison VPN et d\'un service de messagerie', '', 2019, 29),
(39, 30, 4, NULL, NULL, 2019, 20),
(40, 33, 4, 'Installation et configuration de modems / routeurs ADSL', NULL, 2019, 5),
(41, 7, 4, 'Etude d\'une solution de gestion de parc informatique', NULL, 2019, 32),
(42, 39, 4, 'Migration XP pour PC et portables via SMS', NULL, 2019, 33),
(43, 40, 4, 'Recherche et mise en place d\'un utilitaire de gestion de sauvegarde des données sous W2003 Server', NULL, 2019, 34),
(44, 44, 4, NULL, NULL, 2019, 35);


INSERT INTO Jouerrole (idStage, idContact, idRole) VALUES
(1, 8, 1),
(1, 8, 2),
(40, 8, 2),
(2, 9, 1),
(3, 10, 1),
(4, 11, 1),
(4, 12, 2),
(5, 13, 1),
(6, 15, 1),
(6, 15, 2),
(7, 16, 1),
(7, 17, 2),
(8, 18, 2),
(9, 19, 1),
(26, 20, 1),
(26, 21, 2),
(10, 22, 1),
(27, 22, 1),
(32, 22, 1),
(10, 23, 2),
(27, 23, 2),
(32, 23, 2),
(13, 24, 1),
(30, 25, 1),
(14, 26, 1),
(14, 27, 2),
(15, 28, 1),
(15, 28, 2),
(16, 28, 1),
(16, 28, 2),
(17, 29, 1),
(18, 30, 1),
(18, 30, 2),
(35, 31, 1),
(19, 32, 1),
(20, 33, 1),
(20, 33, 2),
(36, 34, 1),
(37, 35, 2),
(21, 36, 1),
(38, 37, 1),
(22, 38, 1),
(22, 39, 2),
(23, 40, 1),
(41, 41, 1),
(41, 42, 2),
(42, 43, 1),
(43, 44, 1),
(31, 45, 2),
(24, 46, 1),
(11, 47, 1),
(12, 48, 1),
(25, 49, 1),
(25, 49, 2),
(29, 50, 2),
(40, 51, 1);
