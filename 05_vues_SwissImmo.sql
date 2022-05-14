-- ===========================================================================================
--  Script: 05_vues_SwissImmo.sql 
--  Objet : Création des vues schéma de la base SwissImmo
--  Objectif : créer des vues et tester l'interrogation et la mise-à-jour à travers ces vues. 
-- ============================================================================================
-- ====================================================
-- Création des VUES
-- ====================================================


-- ============================================================================================
-- Vue d'affichage des biens immobiliers
-- ============================================================================================
CREATE OR REPLACE VIEW vw_biens (Nombre_de_pieces, Code_postal, Ville, Adresse, Type_de_bien) AS
       SELECT bi_nbPieces, bi_npa, bi_ville, bi_adresse, bi_type
       FROM si_bienImmobilier
       ORDER BY bi_npa;
       
SELECT * FROM vw_biens;
GRANT SELECT, INSERT, UPDATE, DELETE ON vw_biens TO SwissImmo_user;
-- ===================================================================================================
-- Vue d'affichage des utilisateurs (personnes figurant dans la BDD)
-- ===================================================================================================
CREATE OR REPLACE VIEW vw_utilisateurs (Nom, Prenom, Email, Telephone) AS
       SELECT per_nom, per_prenom, per_email, per_telephone
       FROM si_personne
       ORDER BY per_nom, per_prenom;

SELECT * FROM vw_utilisateurs;
GRANT SELECT, INSERT, UPDATE, DELETE ON vw_utilisateurs TO SwissImmo_user;
-- =====================================================================================================
-- Vue d'affichage des visites des biens prevues :
                   -- + Jour, Heure, Personne, Adresse du bien
-- =====================================================================================================
CREATE OR REPLACE VIEW vw_visites (Jour, Heure, Personne, Adresse_du_bien) AS
       SELECT vi_date, vi_heure, per_nom ||' '||per_prenom, bi_adresse
       FROM si_visite
       INNER JOIN si_personne ON si_personne.per_nb = vi_personne
       INNER JOIN si_bienImmobilier ON si_bienImmobilier.bi_Nb = vi_bien
       ORDER BY vi_date;

SELECT * FROM vw_visites;
GRANT SELECT, INSERT, UPDATE, DELETE ON vw_visites TO SwissImmo_user;
-- =========================================================================================================
-- Vue d'affichage des contrats de locations et des biens concernés
-- =========================================================================================================
CREATE OR REPLACE VIEW vw_contrats_location (Locataire, proprietaire, Date_de_debut, Prix_du_loyer) AS
       SELECT LOC.per_nom ||' '||LOC.per_prenom , PRO.per_nom||' '||PRO.per_prenom, conL_dateEntree, conL_prixLoyer ||' CHF'
       FROM si_contratLocation 
       JOIN si_personne LOC ON LOC.per_nb = conL_locataire
       JOIN si_personne PRO ON PRO.per_nb = conL_proprietaire
       ORDER BY conL_dateEntree;
       
SELECT * FROM vw_contrats_location;
GRANT SELECT, INSERT, UPDATE, DELETE ON vw_contrats_location TO SwissImmo_user;

-- ============================================================================================================
-- Vue d'affichage des contrats de vente et des biens concernés
-- ============================================================================================================
CREATE OR REPLACE VIEW vw_contrats_vente (Acheteur, Vendeur, Date_achat, Prix_achat, Adresse, Code_postal, Ville, Type_de_bien  ) AS
       SELECT ACH.per_nom ||' '||ACH.per_prenom , VEN.per_nom||' '||VEN.per_prenom, conV_dateAchat, conV_prix||' CHF', bi_adresse, bi_npa, bi_ville, bi_type 
       FROM si_contratVente
       JOIN si_personne ACH ON ACH.per_nb = conV_acheteur
       JOIN si_personne VEN ON VEN.per_nb = conV_vendeur
       JOIN si_bienImmobilier ON bi_nb = conV_bien
       ORDER BY conV_dateAchat, conV_prix;
       
SELECT * FROM vw_contrats_vente;
GRANT SELECT, INSERT, UPDATE, DELETE ON vw_contrats_vente TO SwissImmo_user;


