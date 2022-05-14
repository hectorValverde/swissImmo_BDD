-- ====================================================================
-- Script : 01_SwissImmo.sql
-- Objet  : Cr�ation BDD SwissImmo sur SGBD Oracle en Local (HEGLOCAL) 
-- ====================================================================

SET ECHO ON
SET LINESIZE 200
SET PAGESIZE 60

 ----------------- A COMPLETER ----------------------------
-- Cr�ation des utilisateurs en tant que System
SPOOL .\Logs\02_utilisateurs_SwissImmo.log
@.\02_utilisateurs_SwissImmo.sql
SPOOL OFF

-- Connexion � HEGLOCAL en tant que EasyCooking_data (propir�taires des objets de sch�ma)
CONNECT SwissImmo_data/SwissImmo_data@HEGLOCAL

-- Cr�ation des tables
SPOOL .\Logs\03_creation_de_table.log
@.\03_creation_de_table.sql
SPOOL OFF

-- Chargement des donn�es
SPOOL .\Logs\04_insertions_SwissImmo.log
@.\04_insertions_SwissImmo.sql;
SPOOL OFF

-- Cr�ation des vues
SPOOL .\Logs\05_vues_SwissImmo.log
@.\05_vues_SwissImmo.sql
SPOOL OFF

-- Cr�ation des triggers pour les clefs primaires
SPOOL .\Logs\06_triggers_SwissImmo.log
@.\06_triggers_SwissImmo.sql;
SPOOL OFF

-- Cr�ation des packages
SPOOL .\Logs\07_package_SwissImmo.log
@.\07_package_SwissImmo.sql;
SPOOL OFF

-- Connexion � HEGLOCAL en tant que system
CONNECT system/manager@HEGLOCAL

-- Cr�ation des synonymes
SPOOL .\Logs\08_synonymes_SwissImmo.log
@.\08_synonymes_SwissImmo.sql;
SPOOL OFF

SET ECHO OFF

EXIT;
