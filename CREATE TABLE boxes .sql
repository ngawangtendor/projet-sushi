CREATE TABLE boxes (
    box_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    nb_pieces DECIMAL (5,2) NOT NULL,
    prix INT NOT NULL,
    nom_image VARCHAR(255)
);

CREATE TABLE saveurs(
    saveur_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE aliments(
    aliment_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE aliments_boxes(
    fk_box_id INT NOT NULL REFERENCES boxes (box_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    fk_aliment_id INT NOT NULL REFERENCES aliments (aliment_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (fk_box_id, fk_aliment_id),
    quantite INT NOT NULL
);

CREATE TABLE saveurs_boxes(
    fk_box_id INT NOT NULL REFERENCES boxes (box_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    fk_saveur_id INT NOT NULL REFERENCES saveurs (saveur_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (fk_box_id, fk_saveur_id)
);

INSERT INTO aliments(aliment_id, nom) VALUES
(4, 'California Saumon Avocat'),
(6, 'Sushi Saumon'),
(8, 'Spring Avocat Cheese'),
(10, 'California pacific'),
(12, 'Edamame/Salade de chou'),
(15, 'Maki Salmon Roll'),
(17, 'Spring Saumon Avocat'),
(19, 'Maki Cheese Avocat'),
(34, 'Sushi Thon'),
(36, 'California Thon Avocat'),
(39, 'Edamame / Salade de chou'),
(43, 'California Thon Cuit Avocat'),
(47, 'Sando Chicken Katsu'),
(53, 'Sando Salmon Aburi'),
(60, 'Maki Salmon'),
(67, 'California Crevette'),
(70, 'California Chicken Katsu'),
(75, 'Spring tataki Saumon'),
(77, 'Signature Dragon Roll'),
(79, 'California French Touch'),
(81, 'California French salmon'),
(83, 'California Yellowtail Ponzu'),
(86, 'Signature Rock''n Roll'),
(89, 'California Pacific'),
(91, 'Sushi Salmon'),
(93, 'Sushi Saumon Tsukudani');



INSERT INTO boxes(box_id, nom_image, nb_pieces, nom, prix) VALUES
(1, 'tasty-blend', 12, 'Tasty Blend', 12.5),
(2, 'amateur-mix', 18, 'Amateur Mix', 15.9),
(3, 'salmon-original', 11, 'Saumon Original', 12.5),
(4, 'salmon-lovers', 18, 'Salmon Lovers', 15.9),
(5, 'salmon-classic', 10, 'Salmon Classic', 15.9),
(6, 'master-mix', 12, 'Master Mix', 15.9),
(7, 'sunrise', 18, 'Sunrise', 15.9),
(8, 'sando-box-chicken-katsu', 13, 'Sando Box Chicken Katsu', 15.9),
(9, 'sando-box-salmon-aburi', 13, 'Sando Box Salmon Aburi', 15.9),
(10, 'super-salmon', 24, 'Super Salmon', 19.9),
(11, 'california-dream', 24, 'California Dream', 19.9),
(12, 'gourmet-mix', 22, 'Gourmet Mix', 24.5),
(13, 'fresh-mix', 22, 'Fresh Mix', 24.5);