CREATE DATABASE IF NOT EXISTS BDSTAGES;
-- création compte userStages ayant tous les droits sur les données de la BD

CREATE USER 'userStages'@'localhost' IDENTIFIED BY 'secret';
GRANT USAGE ON *.* TO 'userStages'@'localhost' ;
GRANT SELECT , INSERT , UPDATE , DELETE ON BDSTAGES.* TO 'userStages'@'localhost';
