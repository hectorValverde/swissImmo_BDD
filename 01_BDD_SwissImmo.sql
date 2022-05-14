-- ====================================================================
-- Script : 01_SwissImmo.sql
-- Objet  : Création BDD SwissImmo sur SGBD Oracle en Local (HEGLOCAL) 
-- ====================================================================

SET ECHO ON
SET LINESIZE 200
SET PAGESIZE 60

 ----------------- A COMPLETER ----------------------------
-- Création des utilisateurs en tant que System
SPOOL .\Logs\02_utilisateurs_SwissImmo.log
@.\02_utilisateurs_SwissImmo.sql
SPOOL OFF

-- Connexion à HEGLOCAL en tant que EasyCooking_data (propirétaires des objets de schéma)
CONNECT SwissImmo_data/SwissImmo_data@HEGLOCAL

-- Création des tables
SPOOL .\Logs\03_creation_de_table.log
@.\03_creation_de_table.sql
SPOOL OFF

-- Chargement des données
SPOOL .\Logs\04_insertions_SwissImmo.log
@.\04_insertions_SwissImmo.sql;
SPOOL OFF

-- Création des vues
SPOOL .\Logs\05_vues_SwissImmo.log
@.\05_vues_SwissImmo.sql
SPOOL OFF

-- Création des triggers pour les clefs primaires
SPOOL .\Logs\06_triggers_SwissImmo.log
@.\06_triggers_SwissImmo.sql;
SPOOL OFF

-- Création des packages
SPOOL .\Logs\07_package_SwissImmo.log
@.\07_package_SwissImmo.sql;
SPOOL OFF

-- Connexion à HEGLOCAL en tant que system
CONNECT system/manager@HEGLOCAL

-- Création des synonymes
SPOOL .\Logs\08_synonymes_SwissImmo.log
@.\08_synonymes_SwissImmo.sql;
SPOOL OFF

SET ECHO OFF

EXIT;
