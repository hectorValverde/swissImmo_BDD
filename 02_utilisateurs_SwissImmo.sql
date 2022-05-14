-- ====================================================================
-- Script : 02_utilisateurs_SwissImmo.sql
-- Objet  : Cr�ation des utilisateurs BDD EasyCooking sur SGBD Oracle en Local (HEGLOCAL)
-- =============================================================================================
-- Suppression des r�les, utilisateurs et profil
-- =============================================================================================
-- Suppression des utilisateurs
DROP USER SwissImmo_data CASCADE;
DROP USER SwissImmo_user CASCADE;


-- Suppression des r�les
DROP ROLE role_SwissImmo_data CASCADE;
DROP ROLE role_SwissImmo_user CASCADE;

-- Suppression du profil
DROP PROFILE SwissImmo_profil;


-- =============================================================================================
-- Cr�ation du profil
-- =============================================================================================
CREATE PROFILE SwissImmo_profil LIMIT
       SESSIONS_PER_USER 3
       FAILED_LOGIN_ATTEMPTS 5
       PASSWORD_LOCK_TIME 1/24
	     PASSWORD_LIFE_TIME 180 
	     PASSWORD_REUSE_TIME 180 
	     PASSWORD_REUSE_MAX UNLIMITED
	     PASSWORD_GRACE_TIME 7;


-- =============================================================================================
-- Cr�ation du r�le role_SwissImmo_data (r�le de l'utilisateur propri�taire des objets de la base)
-- =============================================================================================
-- Cr�ation du r�le role_SwissImmo_date
CREATE ROLE role_SwissImmo_data;

-- Droit de se connecter � la BDD
GRANT CONNECT TO role_SwissImmo_data;

-- Droit de cr�er des triggers, s�quence, tables, packages, ...
GRANT RESOURCE TO role_SwissImmo_data;

-- Droit de cr�er des vues
GRANT CREATE VIEW TO role_SwissImmo_data;

-- Droit de cr�er des synonymes
-- GRANT CREATE ANY SYNONYM TO role_SwissImmo_data;



-- ===================================================================================================
-- Cr�ation du r�le role_SwissImmo_user (r�le de l'utilisateur de l'application)
-- ==================================================================================================
-- Cr�ation du r�le role_SwissImmo_user
CREATE ROLE role_SwissImmo_user;

-- Droit de se connecter � la BDD
GRANT ACCESS SESSION TO role_SwissImmo_user;




-- ===================================
-- Cr�ation de l'utilisateur SwissImmo_data (propri�taire des objets de sch�ma de la base)
-- ===================================
CREATE USER SwissImmo_data
       PROFILE SwissImmo_profil
       IDENTIFIED BY SwissImmo_data
       DEFAULT TABLESPACE USERS
       TEMPORARY TABLESPACE TEMP
;
GRANT role_SwissImmo_data TO SwissImmo_data;
ALTER USER SwissImmo_data QUOTA UNLIMITED ON USERS;



--===================================
--Cr�ation de l'utilisateur SwissImmo_user (utilisateur de l'application)
--===================================
CREATE USER SwissImmo_user
       PROFILE SwissImmo_profil
       IDENTIFIED BY SwissImmo_user
;
GRANT role_SwissImmo_user TO SwissImmo_user;
