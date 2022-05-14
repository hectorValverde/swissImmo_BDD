-- ====================================================================
-- Script : 04_insertions_SwissImmo
-- Objet  : Insertions de données sur les tables SwissImmo
-- ====================================================================
-- ====================================================
-- Insertion Table : si_personne
-- ====================================================
INSERT INTO si_personne VALUES (1, 'Denguir', 'Sarah', 'denguir@gmail.com', '078456487');
INSERT INTO si_personne VALUES (2, 'Locher', 'Larissa', 'locherl8@gmail.com', '0764759960');
INSERT INTO si_personne VALUES (3, 'Gonzales', 'Ana', 'gonana@gmail.com', '0764769962');
INSERT INTO si_personne VALUES (4, 'Bradic', 'Maya', 'brcmay@gmail.com','0764759963');
INSERT INTO si_personne VALUES (5, 'Veiga', 'Laure', 'lauveiga@gmail.com', '0764756860');
INSERT INTO si_personne VALUES (6, 'Burni', 'Jorimar', 'joburni@gmail.com', '0776159960');
INSERT INTO si_personne VALUES (7, 'Lopez', 'Lena', 'lopezlenagmail.com', '0794758860');
INSERT INTO si_personne VALUES (8, 'Romero', 'Lisa', 'romerosa@gmail.com', '0776759900');
INSERT INTO si_personne VALUES (9, 'Dowks', 'Rose', 'dowrose@gmail.com', '0764755522');
INSERT INTO si_personne VALUES (10, 'Carrion', 'Lucie', 'lucarrion@gmail.com', '0764755130');
INSERT INTO si_personne VALUES (11, 'Karls', 'Ken', 'karlsken@hotmail.com', '0773281632');
INSERT INTO si_personne VALUES (12, 'Pannatier', 'Frank', 'panfrank@hotmail.com', '0783281682');
INSERT INTO si_personne VALUES (13, 'Commun', 'Luisito', 'communicaluisito@hotmail.com', '0773281010');
INSERT INTO si_personne VALUES (14, 'Dupont', 'William', 'dupontwily@hotmail.com', '0788881632');
INSERT INTO si_personne VALUES (15, 'Salento', 'Rafael', 'salentoraf@hotmail.com', '0773282222');
INSERT INTO si_personne VALUES (16, 'Hendrix', 'Kamel', 'kamelhendrix@hotmail.com', '0773280002');
INSERT INTO si_personne VALUES (17, 'Lorenz', 'Hermann', 'lorenzherm@hotmail.com', '0777771632');
INSERT INTO si_personne VALUES (18, 'Frey', 'Karim', 'freykarim@hotmail.com', '0773331630');
INSERT INTO si_personne VALUES (19, 'Vals', 'Manuel', 'valsmanu@hotmail.com', '0773281414');
INSERT INTO si_personne VALUES (20, 'Macron', 'leo', 'marcleo@hotmail.com', '0766151632');
INSERT INTO si_personne VALUES (21, 'Schneider', 'Martine', 'schmart@gmail.com', '0773285656');
INSERT INTO si_personne VALUES (22, 'Lemas', 'Pascale', 'lemapascal@gmail.com', '0775542012');

-- SELECT * FROM si_personne;

COMMIT;

-- ====================================================
-- Insertion Table : si_contratLocation
-- ====================================================
INSERT INTO si_contratLocation VALUES (1, 1, 1, '10.04.2020', 1500);
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();
INSERT INTO si_contratLocation VALUES ();

-- SELECT * FROM si_contratLocation ;

COMMIT;

-- ====================================================
-- Insertion Table : si_bienImmobilier
-- ====================================================

INSERT INTO si_bienImmobilier VALUES (1, 6, 1220, 'Geneve', 'Grange Lévrier 14', 'Appartement');
INSERT INTO si_bienImmobilier VALUES (2, 5, 1219, 'Genève', 'Chemin de l’Ecu 17', 'Apparemment');
INSERT INTO si_bienImmobilier VALUES (3, 4, 1214, 'Genève', 'Route de Peney 18', 'Appartement');
INSERT INTO si_bienImmobilier VALUES (4, 5, 1202, 'Genève', 'Rue du Lac 2', 'Appartement');
INSERT INTO si_bienImmobilier VALUES (5, 7, 1205, 'Genève', 'Rue de la Jonction 20', 'Appartement');
INSERT INTO si_bienImmobilier VALUES (6, 1, 1201, 'Genève', 'Rue de Bâle 22', 'Studio');
INSERT INTO si_bienImmobilier VALUES (7, 1, 1219, 'Genève', 'Rue Champ d’anier 15', 'Studio');
INSERT INTO si_bienImmobilier VALUES (8, 1, 1209, 'Genève', 'Rue de Colladon 28', 'Studio');
INSERT INTO si_bienImmobilier VALUES (9, 1, 1216, 'Genève', 'Rue des Papillons 4', 'Studio');
INSERT INTO si_bienImmobilier VALUES (10, 10, 1202, 'Genève', 'Rue de Lausanne 14', 'Villa');
INSERT INTO si_bienImmobilier VALUES (11, 9, 1216, 'Genève', 'Chemin des Corbières 8', 'Villa');
INSERT INTO si_bienImmobilier VALUES (12, 8, 1212, 'Genève', 'Boulevard des Philosophes 10', 'Villa');
INSERT INTO si_bienImmobilier VALUES (13, 10, 1217, 'Genève', 'Route de Champ Fréchets 15', 'Villa');
INSERT INTO si_bienImmobilier VALUES (14, 9, 1211, 'Genève', 'Route de Saint-Jean 2', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (15, 7, 1211, 'Genève', 'Route de Montbrillant 12', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (16, 6, 1204, 'Genève', 'Route des Nations 6', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (17, 8, 1216, 'Genève', 'Route de Palexpo 14', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (18, 7, 1214, 'Genève', 'Rue de Croisette 3', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (19, 10, 1213, 'Genève', 'Rue du Grand-Lancy 20', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (20, 10, 1200, 'Genève', 'Rue de Lyon 10', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (21, 15, 1207, 'Genève' ,'Rue du 31 décembre 32', 'Chalet');
INSERT INTO si_bienImmobilier VALUES (22, 14, 1207,'Genève', 'Rue des Vollandes 24', 'Chalet');

-- SELECT * FROM si_bienImmobilier;

COMMIT;

-- ====================================================
-- Insertion Table : si_visite 
-- ====================================================
CREATE SEQUENCE sq_visite MINVALUE 1 NOMAXVALUE INCREMENT BY 1;
INSERT INTO si_visite VALUES (sq_visite.nextval , '10.05.2022', '11h00', 1, 1 ); -- Ce qui revient à dire : la personne 1 visite le bien 1 à telle date et heure.
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visib te.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );
INSERT INTO si_visite VALUES (sq_visite.nextval, );

-- SELECT * FROM si_visite;

COMMIT;
