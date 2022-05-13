DROP TABLE si_personne CASCADE CONSTRAINT;
DROP TABLE si_contratLocation CASCADE CONSTRAINT;
DROP TABLE si_contratVente CASCADE CONSTRAINT;
DROP TABLE si_bienImmobilier CASCADE CONSTRAINT;
DROP TABLE si_visite CASCADE CONSTRAINT;


-- ====================================================
-- Table : si_personnes 
   -- Cette table va stocker les attributs des personnes
   -- Une personne peut �tre : utilisateur, admin
   -- Un utilsateur peut �tre : un acheteur, vendeur ou bien locataire
-- ====================================================
CREATE  TABLE si_personne(
       per_nb        NUMBER(8)    NOT NULL CONSTRAINT pk_si_personne PRIMARY KEY, 
       per_nom       VARCHAR(30), 
       per_prenom    VARCHAR(30),
       per_email     VARCHAR(50), 
       per_telephone NUMBER(12)
);

-- ====================================================
-- Table : si_contratLocation
   -- Cette table va stocker les diff�rents attributs d'un contrat de location
   -- les attributs conL_locataire et conL_proprietaire feront r�f�rence � une personne existante dans la bdd
-- ====================================================
CREATE TABLE si_contratLocation(
       conL_nb                    NUMBER(8) NOT NULL CONSTRAINT pk_si_contratLocation PRIMARY KEY,
       conL_locataire             NUMBER(8) NOT NULL CONSTRAINT fk_si_CL_si_personne1     REFERENCES si_personne(per_nb),
       conL_proprietaire          NUMBER(8) NOT NULL CONSTRAINT fk_si_CL_si_personne2  REFERENCES si_personne(per_nb),
       conL_dateEntree            DATE,
       conL_prixLoyer             NUMBER(6) 
);

-- ====================================================
-- Table : si_contratVente
   -- Cette table va stcoker les diff�rents attributs d'un contrat de vente, le principe est sensable � la tanble pr�c�dente
-- ====================================================
CREATE TABLE si_contratVente(
       conV_nb                    NUMBER(8) NOT NULL CONSTRAINT pk_si_contratVente PRIMARY KEY, 
       conV_proprietaire          NUMBER(8) NOT NULL CONSTRAINT fk_si_CV_si_personne1 REFERENCES si_personne(per_nb),
       conV_acheteur              NUMBER(8) NOT NULL CONSTRAINT fk_si_CV_si_personne2 REFERENCES si_personne(per_nb),
       conV_dateAchat             DATE, 
       conV_prix                  NUMBER(8),
       conV_bien                  NUMBER(8) NOT NULL CONSTRAINT fk_si_CV_si_bienImmobilier REFERENCES si_bienImmobilier(bi_nb)
);

-- ====================================================
-- Table : si_bienImmobilier
   -- Cette table va stocker les attributs d'un bien immobilier pr�sent dans la plateforme
   
-- ====================================================
CREATE TABLE si_bienImmobilier(
       bi_nb            NUMBER(8) NOT NULL CONSTRAINT pk_si_bienImmobilier PRIMARY KEY,
       bi_nbPieces      NUMBER(2),
       bi_npa           NUMBER(10), 
       bi_ville         VARCHAR2(30),
       bi_adresse       VARCHAR2(50),
       bi_type          VARCHAR2(20)
);

-- ====================================================
-- Table : si_visite
   -- Cette table va stocker les informations concernant la visite d'un bien
   -- Dans cette table on retrouve la date et l'eheure prevue pour la visite ainsi qu'une r�f�rence � la personne qui a reserv� la viiste en question
   -- Le bien est aussi r�f�renc� gr�ce � une cl� �trang�re. 
-- ====================================================

CREATE TABLE si_visite(
       vi_nb            NUMBER(8) NOT NULL CONSTRAINT pk_si_visite PRIMARY KEY,
       vi_date          DATE,
       vi_heure         VARCHAR2(5),
       vi_personne      NUMBER(8) NOT NULL CONSTRAINT fk_si_visite_personne REFERENCES si_personne(per_nb),
       vi_bien          NUMBER(8) NOT NULL CONSTRAINT fk_si_visite_bien     REFERENCES si_bienImmobilier(bi_nb)
);



