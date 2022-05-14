-- ====================================================================
-- Script : 06_triggers_SwissImmo.sql
-- Objet  : Création des triggers SwissImmo sur SGBD Oracle en Local (HEGLOCAL) 
-- ====================================================================

-- ====================================================
-- Trigger Personne
-- ====================================================
DROP SEQUENCE sq_personne;
CREATE SEQUENCE sq_personne MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 2;

CREATE OR REPLACE TRIGGER tr_personne
       BEFORE INSERT ON si_personne
       FOR EACH ROW
BEGIN
  SELECT sq_personne.nextval INTO :new.per_nb FROM dual;
END;
/
ALTER TRIGGER tr_personne ENABLE;
/
-- ====================================================
-- Trigger contrat de location
-- ====================================================
DROP SEQUENCE sq_contrat_loc;
CREATE SEQUENCE sq_contrat_loc MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 3;

CREATE OR REPLACE TRIGGER tr_contrat_loc
       BEFORE INSERT ON si_contratLocation
       FOR EACH ROW
BEGIN
  SELECT sq_contrat_loc.nextval INTO :new.conL_nb FROM dual;
END;
/
ALTER TRIGGER tr_contrat_loc ENABLE;
/

-- ====================================================
-- Trigger contrat de vente
-- ====================================================
DROP SEQUENCE sq_contrat_ven;
CREATE SEQUENCE sq_contrat_ven MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 2;

CREATE OR REPLACE TRIGGER tr_contrat_ven
       BEFORE INSERT ON si_contratVente
       FOR EACH ROW
BEGIN
  SELECT sq_contrat_ven.nextval INTO :new.conV_nb FROM dual;
END; 
/
ALTER TRIGGER tr_contrat_ven ENABLE;
/

-- ====================================================
-- Trigger biens immobiliers
-- ====================================================
DROP SEQUENCE sq_bienImmo;
CREATE SEQUENCE sq_bienImmo MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 23;

CREATE OR REPLACE TRIGGER tr_bienImmo
       BEFORE INSERT ON si_bienImmobilier
       FOR EACH ROW
BEGIN
  SELECT sq_bienImmo.Nextval INTO :new.bi_nb FROM dual;
END;
/
ALTER TRIGGER tr_bienImmo ENABLE;
/
-- ====================================================
-- Trigger visites
-- ====================================================
DROP SEQUENCE sq_visites;
CREATE SEQUENCE sq_visites MINVALUE 1 NOMAXVALUE INCREMENT BY 1 START WITH 2;

CREATE OR REPLACE TRIGGER tr_visite
       BEFORE INSERT ON si_visite
       FOR EACH ROW
BEGIN
  SELECT sq_visites.nextval INTO :new.vi_nb FROM dual;
END; 
/
ALTER TRIGGER tr_visite ENABLE; 
/ 

















