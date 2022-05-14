create or replace package package_SwissImmo is

  PROCEDURE prc_GetBienImmo (i_bien IN NUMBER, i_date IN si_visite.vi_date%TYPE, i_heure IN si_visite.vi_heure%TYPE, i_personne IN si_visite.vi_nb%TYPE);
  PROCEDURE prc_setVisite(i_date IN si_visite.vi_date%TYPE, i_heure IN si_visite.vi_heure%TYPE, i_nom IN si_personne.per_nom%TYPE, i_prenom IN si_personne.per_prenom%TYPE, i_bien IN si_bienImmobilier.bi_nb%TYPE);

end package_SwissImmo;
/
create or replace package body package_SwissImmo is


  
  PROCEDURE prc_GetBienImmo (i_bien IN NUMBER, i_date IN si_visite.vi_date%TYPE, i_heure IN si_visite.vi_heure%TYPE, i_personne IN si_visite.vi_nb%TYPE) IS
    v_bien          si_bienImmobilier%ROWTYPE;
    BEGIN
      SELECT * INTO v_bien FROM si_bienImmobilier WHERE i_bien = si_bienImmobilier.bi_nb;
      dbms_output.put_line('Vous avez r�serv� une visite pour le bien � l adresse '||v_bien.bi_adresse||' '||v_bien.bi_npa||' � '||v_bien.bi_ville);
      INSERT INTO si_visite VALUES (sq_visites.nextval, i_date, i_heure, i_personne, i_bien);
      COMMIT;
  END prc_GetBienImmo;
  
  /*
  PROCEDURE prc_create_visite (i_bien IN NUMBER) IS 
    v_bien           si_bienImmobilier%ROWTYPE;
    BEGIN
      
      INSERT INTO si_visite VALUES (sq_visites, )
  */
  /*
       Dans cette proc�dure l'id�e serait que la personne qui souhaite r�server une visite, puisse le faire uniquement si la plage est disponible. 
       Dans l'id�al, le nom et pr�nom de la personne devrait �tre r�cup�r� automatiquement mais aussi le bien en question. 
       Etant donn� que n'ai pas reussi � faire en sorte que ces �l�ments n�cessaires � la cr�ation d'une entr�e visite soient r�cup�r�s automatiquements
       Cette proc�dure demande � la personne de saisir son nom et pr�nom et le N� du bien qu'elle souhaite visiter, dans ce cas le n� lui sera affich� 
       et il correspondra � l'ID du bien. 
       
       Peut-�tre qu'au moment de lier la BDD au prototype du projet cette recup�ration automatique pourra se faire, dans ce cas, je modifierais cette proc�dure. 
       
       Egalement, la date et heure pourraient �tre r�cup�r�s depuis la saisie dans un DataTimePicker. Cela apporterait une solution aussi au probl�me suivant :
       "Et s'il existe une visite � 11h00 et qu'une personne cr�� une visite � 11h01 ?"
       La proc�dure validerait ce choix mais dans la logique cela ne devrait pas �tre fait
       Probablement, le DataTimePicker me permettra de proposer des choix d'heures � intervalle de 30 minutes par exemple. 
  */
  
  PROCEDURE prc_setVisite(i_date IN si_visite.vi_date%TYPE, i_heure IN si_visite.vi_heure%TYPE, i_nom IN si_personne.per_nom%TYPE, i_prenom IN si_personne.per_prenom%TYPE
                      , i_bien IN si_bienImmobilier.bi_nb%TYPE) IS
            v_visite         si_visite%ROWTYPE;
            v_personne       si_personne.per_nb%TYPE;
            BEGIN
            SELECT per_nb INTO v_personne FROM si_personne WHERE lower(si_personne.per_nom) = lower(i_nom) AND lower(si_personne.per_prenom) = lower(i_prenom);
            SELECT * INTO v_visite FROM si_visite WHERE vi_nb = i_bien AND vi_heure = i_heure AND vi_date = i_date;
            dbms_output.put_line('Cette plage horaire n est pas disponible pour ce bien, veuillez choisir un autre moment');
            
            EXCEPTION WHEN NO_DATA_FOUND THEN 
               package_SwissImmo.prc_GetBienImmo(i_bien, i_date, i_heure, v_personne);
               
                     
            END prc_setVisite;
          
end package_SwissImmo;
/
