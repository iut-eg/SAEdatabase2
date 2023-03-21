DROP SCHEMA IF EXISTS decathlon CASCADE;
CREATE SCHEMA decathlon;

CREATE TABLE decathlon.produits (

  nomProduit VARCHAR(50),
  Prix DECIMAL(10,2),
  Rayon VARCHAR(50),
  Genre VARCHAR(50),
  Note DECIMAL(2,1),
  Disponibilite VARCHAR(50),
  Etat VARCHAR(50)
);

INSERT INTO produits (nomProduit, Prix, Rayon, Genre, Note, Disponibilite, Etat)
VALUES
('TshirtRespirant', 15.99, 'Running', 'Homme', 4.5, 'MagasinA', 'Neuf'),
('ChaussuresRunning', 79.99, 'Running', 'Femme', 4.2, 'Magasin B', 'Nouveaute'),
('VesteCoupeVent', 39.99, 'Randonnee', 'Unisexe', 4.7, 'Magasin C', 'Neuf'),
('RaquetteTennis', 29.99, 'Tennis', 'Unisexe', 4.0, 'Magasin A', 'Occasion'),
('VeloVille', 299.99, 'VeloVille', 'Unisexe', 4.8, 'Magasin D', 'Neuf'),
('SacADosRandonnee', 49.99, 'Randonnee', 'Unisexe', 4.5, 'Magasin B', 'Neuf'),
('BallonFootball', 14.99, 'Football', 'Unisexe', 4.0, 'Magasin C', 'Neuf'),
('ShortBain', 12.99, 'Natation', 'Homme', 3.8, 'Magasin A', 'Occasion'),
('TenteCamping', 199.99, 'Camping', 'Unisexe', 4.6, 'Magasin D', 'Neuf');



CREATE TABLE decathlon.clients (
    idClient INT ,
    nom_du_client VARCHAR(50) ,
    pays VARCHAR(50) ,
    type VARCHAR(50) ,
    nombre_achats INT ,
    PRIMARY KEY (idClient)
);

INSERT INTO clients (idClient, nom_du_client, pays, type, nombre_achats) VALUES
    (176, 'Durand_SARL', 'France', 'Entreprise', 12),
    (528, 'Smith_&_Co', 'USA', 'Entreprise', 8),
    (929, 'Garcia_SA', 'Espagne', 'Entreprise', 15),
    (240, 'Chen_Hong', 'Chine', 'Particulier', 3),
    (791, 'Kim_Lee', 'Coree_du_Sud', 'Particulier', 5),
    (410, 'Jansen_BV', 'Pays_Bas', 'Entreprise', 20),
    (219, 'Martinez_SA', 'Argentine', 'Entreprise', 7),
    (605, 'Nguyen_Thi', 'Vietnam', 'Particulier', 2),
    (619, 'Santos_SAS', 'Bresil', 'Entreprise', 10),
    (358, 'Gupta_Pvt_Ltd', 'Inde', 'Entreprise', 18),
    (177, 'Bianchi_SRL', 'Italie', 'Entreprise', 9),
    (444, 'Lee_Jin', 'Japon', 'Particulier', 4),
    (876, 'Schmidt_GmbH', 'Allemagne', 'Entreprise', 22),
    (835, 'Kowalski_SP_Z_O_O', 'Pologne', 'Entreprise', 14),
    (610, 'Fernandez_SA', 'Mexique', 'Entreprise', 11),
    (421, 'Chang_Mei', 'Taiwan', 'Particulier', 6),
    (925, 'Leclercq', 'France', 'Particulier', 5),
    (432, 'Garcin', 'France', 'Particulier', 3),
    (129, 'Dupont', 'France', 'Particulier', 2),
    (780, 'Pierre', 'France', 'Particulier', 4),
    (821, 'Martin', 'France', 'Particulier', 1),
    (763, 'Francois', 'France', 'Particulier', 7),
    (919, 'Michel_SA', 'France', 'Entreprise', 8),
    (406, 'Dubois', 'France', 'Particulier', 6),
    (637, 'Girard', 'France', 'Particulier', 2),
    (991, 'Moreau_SAS', 'France', 'Entreprise', 10),
    (141, 'Lefevre', 'France', 'Particulier', 3),
    (775, 'Faure', 'France', 'Particulier', 4);
