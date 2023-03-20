DROP SCHEMA IF EXISTS decathlon CASCADE;
CREATE SCHEMA decathlon;

CREATE TABLE decathlon.produits (

  nomProduit VARCHAR(255),
  Prix DECIMAL(10,2),
  Rayon VARCHAR(255),
  Genre VARCHAR(255),
  Note DECIMAL(2,1),
  Disponibilite VARCHAR(255),
  Etat VARCHAR(255)
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
