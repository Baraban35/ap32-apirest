
INSERT INTO Specialite (ref, sigle, intitule) VALUES
('A', 'SISR', 'Solutions d\'Infrastructure Systèmes et Réseaux'),
('B', 'SLAM', 'Solutions Logicielles Applications Métiers'),
('C', NULL, 'Commun');

INSERT INTO Bloc (code, ref, refSpe, intitule) VALUES
(1, 'B1', 'C', 'Support et mise à disposition des services informatiques'),
(2, 'B2', 'A', 'Administration des systèmes et des réseaux'),
(3, 'B2', 'B', 'Conception et développement d\'applications'),
(4, 'B3', 'A', 'Cybersécurité des services informatiques'),
(5, 'B3', 'B', 'Cybersécurité des services informatiques'),
(6, 'B3', 'C', 'Cybersécurité des services informatiques');

INSERT INTO Competence (code, refBloc, numeroOrdre, refSpe,libelle) VALUES
(1, 'B1', 1, 'C', 'Gérer le patrimoine informatique'),
(2, 'B1', 2, 'C', 'Répondre aux incidents et aux demandes d’assistance et d’évolution'),
(3, 'B1', 3, 'C', 'Développer la présence en ligne de l’organisation'),
(4, 'B1', 4, 'C', 'Travailler en mode projet'),
(5, 'B1', 5, 'C', 'Mettre à disposition des utilisateurs un service informatique (orienté utilisateurs)'),
(6, 'B1', 6, 'C', 'Organiser son développement professionnel'),
(7, 'B2', 1, 'A', 'Concevoir une solution d\'infrastructure réseau'),
(8, 'B2', 2, 'A', 'Installer, tester et déployer une solution d\'infrastructure réseau'),
(9, 'B2', 3, 'A', 'Exploiter, dépanner et superviser une solution d\'infrastructure réseau'),
(10, 'B2', 1, 'B', 'Concevoir et développer une solution applicative'),
(11, 'B2', 2, 'B', 'Assurer la maintenance corrective ou évolutive d\'une solution applicative'),
(12, 'B2', 3, 'B', 'Gérer les données'),
(13, 'B3', 1, 'C', 'Protéger les données à caractère personnel'),
(14, 'B3', 2, 'C', 'Préserver l\'identité numérique de l’organisation'),
(15, 'B3', 3, 'C', 'Sécuriser les équipements et les usages des utilisateurs'),
(16, 'B3', 4, 'C', 'Garantir la disponibilité, l\'intégrité et la confidentialité des services informatiques et des données de l’organisation face aux cyberattaques'),
(17, 'B3', 5, 'A', 'Assurer la cybersécurité d\'une infrastructure réseau'),
(18, 'B3', 5, 'B', 'Assurer la cybersécurité d\'une solution applicative et de son développement');

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

INSERT INTO Etudiant (numero, nom, prenom, email, anneePromo, refSpe, mdp, adresse, codePostal, ville) VALUES
(1, 'Batauld', 'Nicolas', 'nicolas.batauld@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(2, 'Bosson', 'Jeremie', 'jeremie.bosson@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(3, 'Cormin', 'Freddy', 'freddy.cormin@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(4, 'Durand', 'François', 'françois.durand@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(5, 'Mars', 'Pierre', 'pierre.mars@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(6, 'Guyon', 'Romain', 'romain.guyon@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(7, 'Lagaz', 'Sylvain', 'sylvain.lagaz@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(8, 'Lellican', 'Benoit', 'benoit.lellican@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(9, 'Lavent', 'Yannick', 'yannick.lavent@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(10, 'Le Beau', 'Sylvain', 'sylvain.le-beau@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(11, 'Le Quemener', 'Mathieu', 'mathieu.le-quemener@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(12, 'Thomas', 'Julie', 'julie.thomas@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(13, 'Malescoit', 'Damien', 'damien.malescoit@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(14, 'Pagon', 'Anne', 'anne.pagon@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(15, 'Ghilouze', 'Pierre', 'pierre.ghilouze@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(16, 'Repil', 'Gael', 'gael.repil@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(17, 'Ripollin', 'Mathias', 'mathias.ripollin@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(18, 'Trevent', 'Alban', 'alban.trevent@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(19, 'Yaun', 'Long', 'long.yaun@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(20, 'Bousnier', 'Antoine', 'antoine.bousnier@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(21, 'Boucle', 'Amelie', 'amelie.boucle@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(22, 'Bazordon', 'Antony', 'antony.bazordon@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(23, 'Birnoist', 'Florent', 'florent.birnoist@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(24, 'Ertam', 'Hiba', 'hiba.ertam@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(25, 'Barllier', 'Ludovic', 'ludovic.barllier@lycee-basch.fr', 2022, 'B', 'passe', '', '', ''),
(26, 'Brillat', 'Sylvain', 'sylvain.brillat@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(27, 'Civat', 'Xavier', 'xavier.civat@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(28, 'Carolin', 'Olivier', 'olivier.carolin@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(29, 'Darlot', 'Jean-François', 'jean-françois.darlot@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(30, 'Carmond', 'Jeremy', 'jeremy.carmond@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(31, 'Hesain', 'Jerôme', 'jerôme.hesain@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(32, 'Halopon', 'Typhaine', 'typhaine.halopon@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(33, 'Garoman', 'Nicolas', 'nicolas.garoman@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(34, 'Imbert', 'Samuel', 'samuel.imbert@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(35, 'Jouin', 'Pierre', 'pierre.jouin@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(36, 'Leman', 'Jeremy', 'jeremy.leman@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(37, 'Le Moing', 'Raphael', 'raphael.le-moing@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(38, 'Le Vaquert', 'Yannick', 'yannick.le-vaquert@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(39, 'Vamin', 'Charly', 'charly.vamin@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(40, 'Leray', 'Axel', 'axel.leray@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(41, 'Gautier', 'Quentin', 'quentin.gautier@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(42, 'Rubin', 'François', 'françois.rubin@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(43, 'Toadim', 'Antoine', 'antoine.toadim@lycee-basch.fr', 2022, 'A', 'passe', '', '', ''),
(44, 'Tranchard', 'Romain', 'romain.tranchard@lycee-basch.fr', 2022, 'A', 'passe', '', '', '');

INSERT INTO Organisation (numero, nom, idCategorie, adresse, codePostal, ville, tel, fax, email, urlSiteWeb) VALUES
(1, 'Rectorat de Rennes', 1, '96rue d''Antrain', '35000', 'Rennes', '0223217777', NULL, NULL, NULL),
(2, 'IRISA', 7, 'Campus de Beaulieu', '35042', 'Rennes Cedex', '0299847100', '0299847171',  NULL, 'www.irisa.fr'),
(3, 'SOLLEIL', NULL, '3 rue de la Carrière', '35920', 'Rennes', '0299144070', '', 'solleil@solleil.fr', 'www.solleil.fr'),
(4, 'Lycée Victor et Hélène Basch', 7, '15avenue Charles Tillon', '35000', 'Rennes', '0299544443', NULL, '', 'lidf.homeip.net'),
(5, 'Lycée professionnel Coëtlogon', 7, 'Rue Antoine Joly - BP 18307', '35083', 'Rennes Cedex', '0299546262', NULL, NULL, NULL),
(6, 'Informatique Tech Service', 5, 'ZI du Dressère', '56150', 'Baud', '0297518020', '0297518783', NULL, NULL),
(7, 'JET PRINT''S 35', 5, '8 rue de la Garenne', '35135', 'Chantepie', '0660702528', '0825146261', NULL, 'www.jetprints35.fr'),
(8, 'SIB - Syndicat Interhospitalier de Bretagne', 12, '4 rue du Professeur Jean Pecker', '35000', 'Rennes', '0299547510', '0299547509', NULL, 'www.sib.fr'),
(9, 'CFP - Brest', 7, '15Place Sanquer', '29200', 'Brest', '0298442933', '0299445110', NULL, 'www.cfp29.org'),
(10, 'AGI Informatique', 5, '332rue de Nantes', '35200', 'Rennes', '0299507039', '0299320416', NULL, NULL),
(11, 'France Télécom - Orange Business Services', 1, '9, rue du Chêne germain', '35512', 'Cesson-Sévigné', '0223283030', NULL, NULL, 'www.orange-business.com'),
(12, 'DRE Bretagne', 1, '10, rue Maurice Fabre CS 96515', '35065', 'Rennes cedex', '0299334555', '0299334433', 'DRE-Bretagne@developpement-durable.gouv.fr', 'www.bretagne.equipement.gouv.fr'),
(13, 'Ecole des Métiers de l\'Environnement', 7, 'Campus de Ker Lann - Boulevard Robert Schumann', '35170', 'Bruz', '0299058800', '0299058809', NULL,'www.ecole-eme.com'),
(14, 'BSH Constructions et Rénovations', 8, '5, venelle des Anglais', '22450', 'La Roche Derrien', NULL, NULL, NULL, NULL),
(15, 'Poste - DSI', 1, '11, rue Vaneau - BP 13282', '35032', 'Rennes cedex', NULL, NULL, NULL, NULL),
(16, 'Lenerrant', 8, 'ZI du Placis', '35230', 'Bourgbarré', '0299004500', '0299004002', NULL, NULL),
(17, 'AT & MIS', 5, '40rue du Bignon', '35135', 'Chantepie', '0299863037', NULL, NULL, NULL),
(18, 'CAF Ille et Vilaine', 1, 'Cours des Alliés', '35028', 'Rennes Cedex 9', '0299291954', '0299305471', NULL, 'www.caf.fr'),
(19, 'Lycée-Collège Saint-Pierre', 7, '16, rue Saint-Pierre', '22015', 'Saint-Brieuc', '0296685800', NULL, NULL, NULL),
(20, 'Clinique de la Porte de l''Orient', 13, '3 rue Robert de la Croix', '56100', 'Lorient', '0297648154', '0297648110', NULL, NULL),
(21, 'SDI', 2, 'Parc de Beaujardin', '35410', 'Chateaugiron', '0299372450', NULL, NULL, 'www.sdi-info.com'),
(22, 'Wizdeo', 12, '18rue de la Rigourdière', '35510', 'Cesson-Sévigné', '0299834471', NULL, NULL, 'www.wizdeo.com'),
(23, 'Correspondance France-Chine', 12, '3 rue Lécuyer', '75018', 'Paris', '0155286035', NULL, NULL, 'infoschinefrance.com'),
(25, 'Ecole de Reconversion Professionnelle Jean Janvier', 7, '11rue Edouard Vaillant', '35000', 'Rennes', NULL, '0299591447', NULL, 'www.erp.rennes.emac.org'),
(26, 'Clinique La Sagesse', 13, '4 place Saint-Guénolé - CS 44345', '35043', 'Rennes', '0299857575', '0299857600', NULL, NULL),
(27, 'Groupe CPA - Cliniques Privées Associées', 13, '10Boulevard de la Boutière', '35760', 'Saint-Grégoire', '0299239341', NULL, NULL, NULL),
(28, 'Kit-PC', 5, '4 rue Belle-Ile', '35760', 'Saint-Grégoire', '0223250195', '0223250189', NULL, 'www.kit-pc.fr'),
(29, 'Centre Médecine Physique Réadaptation ND Lourdes', 13, '54rue Saint-Hélier', '35000', 'Rennes', '0299295099', NULL, NULL, NULL),
(30, 'Chambre d''Agriculture', 1, 'Rue Le Lannov - CS 14226', '35042', 'Rennes Cedex', '0223482323', '0223482325', NULL, 'www.sinagri.com'),
(31, 'ICNS', 5, '48rue de Lorient', '35000', 'Rennes', '0299337252', NULL, NULL, 'www.icns.fr'),
(32, 'Mairie de Bourgbarré', 1, '1 rue des Sports', '35150', 'Bourgbarré', '0299576696', '0299577060', 'mairie@bourgbarre.fr', 'www.bourgbarre.fr'),
(33, 'Point P Bretagne', 8, '23Boulevard de la Haie des Cognets', '35136', 'Saint-Jacques de la Lande', '0299652020', '0299652016', NULL, 'www.groupe.pointp.fr'),
(34, 'Logidis Comptoirs Modernes Carrefour', 11, 'ZAC des Cormiers', '35650', 'Le Rheu', NULL, '0299147679', NULL, NULL),
(35, 'Digital DC Système', 11, 'Bâtiment B - Rue Pierre de maupertuis', '35170', 'Bruz', '0299579074', NULL, NULL, NULL),
(36, 'Société Quincaillerie Boschat', 8, 'Route de Plancoët - BP 347', '22403', 'Lamballe Cedex', NULL, NULL, NULL, NULL),
(37, 'Stade Rennais', 12, 'La Piverdière CS 53909', '35039', 'Rennes', NULL, NULL, NULL, 'www.staderennais.com');

INSERT INTO Contact (numeroOrganisation, id, civilite, prenom, nom, email, tel, fonction) VALUES
(1, 1, 'Mme', 'Françoise', 'Bédouin', NULL, NULL, NULL),
(1, 2, 'M.', 'Gilbert', 'Plougoulen', 'gilbert.plougoulen@ac-rennes.fr', '0297556677', 'Responsable service informatique Vannes Pontivy'),
(2, 1, 'M.', 'Didier', 'Morin', 'didier.morin@irisa.fr', '0299112233', 'Responsable des moyens informatiques'),
(2, 2, 'M.', 'Christophe', 'Guilloux', 'christophe.guilloux@irisa.fr', '0299445566', ''),
(2, 3, 'M.', 'François', 'Gerbert', 'Francois.Gerbert@irisa.fr', '0299778899', ''),
(2, 4, 'Mme', 'Isabelle', 'Locaffrette', 'Isabelle.Locafrette@irisa.fr', '0299001122', ''),
(2, 5, 'M.', 'Michel', 'Tournois', 'michel.tournois@irisa.fr', NULL, NULL),
(2, 6, 'M.', 'Bertrand', 'Decouty', 'Bertrand.Decouty@irisa.fr', NULL, NULL),
(3, 1, 'M.', 'Ewen', 'Lévêque', NULL, NULL, NULL),
(4, 1, 'M.', 'Jean-Pierre', 'Monlaurent', '', '', 'Proviseur'),
(4, 2, 'M.', 'Frédérick', 'Lemasson', '', '', 'Administrateur réseau'),
(4, 3, 'M.', 'Stéphane', 'Jacoupy', 'stephane.jacoupy@ac-rennes.fr', NULL, 'Chef de travaux'),
(5, 1, 'M.', 'Didier', 'Cholet', NULL, NULL, NULL),
(5, 2, 'Mme', 'Isabelle', 'Legrand', NULL, NULL, 'Proviseur'),
(6, 1, 'M.', 'Franck', 'Gilanton', NULL, '0297518020', 'Gérant'),
(7, 1, 'M.', 'Grégory', 'Martin', 'gregory@jetprint35.fr', '0299334455', 'Gérant'),
(8, 1, 'Mme', 'Mireille', 'Bauron', NULL, '0299667788', 'Responsable support technique'),
(8, 2, 'M.', 'Florent', 'Le Coupeur', NULL, '0299990011', 'Technicien'),
(8, 3, 'Mme', 'Anne-Gaëlle', 'Le Guen', NULL, NULL, NULL),
(9, 1, 'M.', 'Gaël', 'Kermarrec', 'gael.kermarrec@cfp29.org', '0298223344', 'Responsable informatique'),
(10, 1, 'Mme', 'Marc', 'Huchet', NULL, NULL, 'Gérante'),
(10, 2, 'M.', 'Johann', 'Radin', NULL, NULL, NULL),
(11, 1, 'M.', 'Stéphane', 'Merle', 'stephane.lemerle@orange-ftgroup.com', '0299889900', 'Directeur sécurité client'),
(11, 2, 'M.', 'Franck', 'Michaud', NULL, '0223112233', NULL),
(12, 1, 'M.', 'Jean-Louis', 'Le Guen', NULL, NULL, 'Chef du Centre Support Mutualisé'),
(12, 2, 'M.', 'Pascal', 'Renat', 'pascal.renat@developpement-durable.gouv.fr', '0223445566', 'Responsable Pôle Suivi projets et développement'),
(13, 1, 'M.', 'Vincent', 'Mandon', 'vincentmandon@ecole-eme.com', NULL, NULL),
(14, 1, 'M.', 'Stéphane', 'Bertelle', NULL, NULL, NULL),
(15, 1, 'M.', 'Than', 'Lancevee', NULL, NULL, 'Responsable de l&#039;exploitation des services centraux'),
(16, 1, 'M.', 'Bertrand', 'Fixot', 'bfixot-lenerrant@groupesit.com', NULL, 'Responsable d&#039;affaires'),
(17, 1, 'M.', 'Loïc', 'Evain', NULL, NULL, 'Responsable entreprise'),
(17, 2, 'M.', 'Yann', 'Bertrand', NULL, NULL, NULL),
(18, 1, 'M.', 'Loïc', 'Ravaudet', NULL, '0299778899', NULL),
(19, 1, 'M.', 'Yvon', 'Quéromès', NULL, NULL, 'Directeur groupe scolaire'),
(20, 1, 'M.', 'Stéphane', 'Michel', 'stephane.michel@clinique.mutualite56.fr', NULL, 'Responsable informatique'),
(22, 1, 'M.', 'Laurent', 'Renaudon', NULL, NULL, 'Responsable R&D'),
(23, 1, 'M.', 'Yong', 'Peng', NULL, NULL, 'Secrétaire de l&#039;association'),
(25, 1, 'Mme', 'Sandra', 'Fickinger', 'sandra.fickinger@ac-rennes.fr', '0299112233', 'Administrateur réseau'),
(26, 1, 'M.', 'Stéphane', 'Caron', 'scaron@mfiv.fr', '0299445566', NULL),
(27, 1, 'M.', 'Cyrille', 'Clarisse', NULL, NULL, 'Ingénieur réseau et système'),
(28, 1, 'M.', 'Mickaël', 'Le Métayer', NULL, NULL, NULL),
(29, 1, 'M.', 'Olivier', 'Bellamy', 'bellamy@centrempr-ndl.com', '0299778899', 'Responsable informatique'),
(30, 1, 'M.', 'Pierre-Yves', 'Mahieu', 'direction@ille-et-vilaine.chambagri.fr', NULL, 'Directeur'),
(30, 2, 'Mme', 'Clotilde', 'Quinio', 'clotilde.quinio@ille-et-vilaine.chambagri.fr', NULL, 'Chargée de mission informatique'),
(31, 1, 'M.', 'Gilles', 'Nogherotto', NULL, NULL, NULL),
(32, 1, 'Mme', 'Aline', 'Combot', NULL, NULL, 'Directrice générale des services'),
(32, 2, 'M.', 'Pierre-Yves', 'Louapre', NULL, NULL, 'Adjoint au développement économique'),
(33, 1, 'M.', 'Dominique', 'Rault', 'dominique.rault@saint-gobain.com', NULL, 'Responsable informatique'),
(34, 1, 'M.', 'Philippe', 'Aussant', 'philippe.aussant@carrefour.com', NULL, 'Responsable de service région ouest'),
(35, 1, 'M.', 'Edouard', 'Collet', NULL, NULL, 'Gérant société')
;

INSERT INTO PeriodeStage (id, dateDeb, dateFin, numAnneeForm) VALUES
(1, '2021-05-24', '2021-07-02', 1),
(2, '2022-01-03', '2022-02-04', 2),
(3, '2022-05-23', '2022-07-01', 1),
(4, '2023-01-09', '2023-02-17', 2),
(5, '2023-05-22', '2023-06-30', 1);

INSERT INTO Role (id, intitule) VALUES
(1, 'Responsable de stage'),
(2, 'Tuteur de stage');

INSERT INTO Stage (id, numeroEtudiant, idPeriodeStage, descriptifMission, moyens, numeroOrganisation) VALUES
(1, 1, 2, 'Mise en place d\'un service VoIP sous Astérisk', NULL, 5),
(2, 2, 1, 'Dépannage sur site, mise en place du réseau dans différentes PME', NULL, 6),
(3, 4, 1, 'Maintenance systèmes informatiques, installation téléphonie VoIP', NULL, 7),
(4, 12, 1, 'Installation et configuration de nouveaux PCs dans le parc, intégrés dans le réseau du SIB et dans le réseau WiFI', NULL, 8),
(5, 12, 2, 'Etudier, proposer et tester des solutions de sauvegarde des données des postes de travail.', NULL, 2),
(6, 14, 2, 'Mise en place d\'un serveur Linux pour hébergement des sites Web et intranet du centre de formation + sécurisation (système de backup, onduleur)', NULL, 9),
(7, 16, 2, NULL, NULL, 10),
(8, 16, 1, 'Déploiement de réseaux dans des établissements scolaires', NULL, 1),
(9, 17, 2, NULL, NULL, 4),
(10, 4, 3, 'Migration de base Access vers PostgreSql - Développement d\'une application Web de suivi des plages d\'adresses IP à intégrer dans l\'infocentre', 'XHTML/CSS - PHP/PostgreSql', 12),
(11, 31, 3, 'Maintenance réseau, installation de serveur web', NULL, 13),
(12, 32, 3, 'Développement d\'évolutions complémentaires d\'une application de gestion de devis.', 'Access VB.Net', 14),
(13, 34, 3, 'Développement d\'unités d\'aide au reporting', 'PHP/MySQL', 15),
(14, 36, 3, 'Maintenance, assemblage d\'ordinateurs portables, fixes et serveurs', NULL, 17),
(15, 37, 3, 'Développement d\'une application web \"Situation agent\" dans l\'intranet', 'XHTML/CSS - PHP/MySql', 18),
(16, 39, 3, 'Développement d\'une application web \"Situation agent\" dans l\'intranet', 'XHTML/CSS - PHP/MySql', 18),
(17, 38, 3, 'Maintenance informatique, administration réseau', NULL, 19),
(18, 41, 3, 'Participation à la réalisation d\'une application de gestion des rendez-vous', 'XHTML/CSS - PHP/MySql - Prototype', 20),
(19, 43, 3, 'Rendre dynamique le site web de l\'association', 'XHTML/CSS - PHP/MySql', 23),
(20, 24, 3, 'Réalisation d\'une application permettant de consulter l\'inventaire informatique de l\'ERP', NULL, 25),
(21, 29, 3, 'Maintenance, assemblage d\'ordinateurs', NULL, 28),
(22, 30, 3, 'Installation postes, dépannage micros et imprimantes, gestion parc informatique sur GLPI, administration réseau', NULL, 30),
(23, 33, 3, 'Evolution du site internet de l\'entreprise (création Boutique en ligne) et création d\'un site vitrine pour un client', 'XHTML/CSS - PHP/MySql', 31),
(24, 7, 3, 'Réalisation d\'une application Access d\'un logiciel de suivi des articles par sites des clients', 'Access', 3),
(25, 42, 3, 'Création de la partie administration du site http://www.toota.fr en c# et ASP.Net sous Visual Studio 2005', 'ASP.net', 35),
(26, 3, 4, 'Etude et réalisation d\'une application web dans un environnement lamp avec framework CakePhp pour gérer des habilitations', 'XHTML/CSS - PHP/MySql - CakePhp', 11),
(27, 4, 4, 'Réécriture d\'une application de gestion de marchés public en environnement Web', 'XHTML/CSS - PHP/PostgreSql', 12),
(28, 31, 4, 'Développement et intégration d\'un module de gestion de mails pour une application sous Magic Edevelopper', 'VB6 - Magic Edevelopper', 3),
(29, 32, 4, 'Réalisation et intégration du module d\'évaluation des formations dans l\'intranet du SIB', 'Java - SQL Server', 8),
(30, 34, 4, 'Etude et réalisation d\'une application de gestion des interventions de dépannage et contrôle sur les chaudières', 'VB 2005 - Access', 16),
(31, 36, 4, 'Développement d\'une application web de réservation de salles de visio-conférence interfacée avec un agenda électronique', 'PHP', 2),
(32, 37, 4, 'Etude et réalisation d\'une application web de gestion des marchés publics à procédure adaptée', 'XHTML/CSS - PHP/PostgreSql', 12),
(33, 38, 4, 'Adjonction de modules de consultation d\'annuaire au sein d\'un portail intranet', 'ASP.Net VB SQL Server', 36),
(34, 41, 4, 'Maintenance corrective d\'un intranet, puis évolutive en étudiant et réalisant un module de suivi médical des joueurs', 'XHTML/CSS - PHP/MySql', 37),
(35, 42, 4, 'Développement d\'évolutions d\'une plateforme de gestion/découpe de vidéos pour Internet', 'PHP/JavaScript/MySQL Eclipse-CakePHP', 22),
(36, 24, 4, 'Intégration d\'un logiciel de gestion de parc GLPI-OCSNG', NULL, 26),
(38, 29, 4, 'Mise en place d\'un nouveau domaine dans un réseau avec liaison VPN et d\'un service de messagerie', NULL, 29),
(40, 33, 4, 'Installation et configuration de modems / routeurs ADSL', NULL, 5),
(41, 7, 4, 'Etude d\'une solution de gestion de parc informatique', NULL, 32),
(42, 39, 4, 'Migration XP pour PC et portables via SMS', NULL, 33),
(43, 40, 4, 'Recherche et mise en place d\'un utilitaire de gestion de sauvegarde des données sous W2003 Server', NULL, 34)
;

INSERT INTO Stage (id, numeroEtudiant, idPeriodeStage, descriptifMission, moyens, numeroOrganisation, nvelleDateDebut, nvelleDateFin) VALUES
(37, 27, 4, 'Installation et configuration points d\'accès wifi', NULL, 27, '2023-01-16', '2023-02-24'),
(39, 30, 4, 'Développement d\'une application web \"Gestion tickets\"', 'XHTML/CSS - PHP/MySql', 20, NULL, '2022-07-24'),
(44, 44, 4, 'Migration windows 10 pour PC et portables', 35, NULL, '2023-01-16', NULL)
;

INSERT INTO JouerRole (idStage, numeroOrganisation, idContact, idRole) VALUES
(1, 5, 1, 1),
(1, 5, 1, 2),
(40, 5, 1, 2),
(2, 6, 1, 1),
(3, 7, 1, 1),
(4, 8, 1, 1),
(4, 8, 2, 2),
(5, 2, 5, 1),
(6, 9, 1, 1),
(6, 9, 1, 2),
(7, 10, 1, 1),
(7, 10, 2, 2),
(8, 1, 2, 2),
(9, 4, 3, 1),
(26, 11, 1, 1),
(26, 11, 2, 2),
(10, 12, 1, 1),
(27, 12, 1, 1),
(32, 12, 1, 1),
(10, 12, 2, 2),
(27, 12, 2, 2),
(32, 12, 2, 2),
(13, 15, 1, 1),
(30, 16, 1, 1),
(14, 17, 1, 1),
(14, 17, 2, 2),
(15, 18, 1, 1),
(15, 18, 1, 2),
(16, 18, 1, 1),
(16, 18, 1, 2),
(17, 19, 1, 1),
(18, 20, 1, 1),
(18, 20, 1, 2),
(35, 22, 1, 1),
(19, 23, 1, 1),
(20, 25, 1, 1),
(20, 25, 1, 2),
(36, 26, 1, 1),
(37, 27, 1, 2),
(21, 28, 1, 1),
(38, 29, 1, 1),
(22, 30, 1, 1),
(22, 30, 2, 2),
(23, 31, 1, 1),
(41, 32, 1, 1),
(41, 32, 2, 2),
(42, 33, 1, 1),
(43, 34, 1, 1),
(31, 2, 6, 2),
(24, 3, 1, 1),
(11, 13, 1, 1),
(12, 14, 1, 1),
(25, 35, 1, 1),
(25, 35, 1, 2),
(29, 8, 3, 2),
(40, 5, 2, 1);

INSERT INTO CompetenceStage (idStage, codeCompetence) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 10),
(1, 11),
(1, 12),
(1, 18),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 17);
