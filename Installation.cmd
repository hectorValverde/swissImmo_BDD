REM Fichier		: Installation.cmd
REM Objet		: Création de la BDD SwissImmo

mkdir .\Logs

REM Lancement du script 01_BDD_SwissImmo.sql dans SQL*PLUS
REM le %1 permet de demander le mot de passe lors du lancement du script
sqlplus SYSTEM/manager@HEGLOCAL @%~dp0\01_BDD_SwissImmo.sql %~dp0
