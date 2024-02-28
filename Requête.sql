

SELECT * FROM recettes ORDER BY duree_mn DESC;
SELECT nom_categorie FROM categorie;
SELECT categorie.nom_categorie FROM categorie;
SELECT recettes.nom_recette, recettes.duree_mn FROM recettes;

SELECT nom_recette, duree_mn, nom_categorie
FROM recettes
INNER JOIN categorie ON recettes.id_categorie=categorie.id_categorie
ORDER BY duree_mn DESC;

SELECT nom_recette, duree_mn, nom_categorie, id_ingredient
FROM recettes
INNER JOIN categorie ON recettes.id_categorie=categorie.id_categorie
INNER JOIN composer ON recettes.id_recette=composer.id_recette;

SELECT ingredient.designation, COUNT(*)
FROM ingredient
INNER JOIN composer ON ingredient.id_ingredient=composer.id_ingredient
WHERE ingredient.id_ingredient=1;

SELECT nom_recette FROM recettes WHERE duree_mn >=30;

SELECT nom_recette FROM recettes WHERE nom_recette LIKE '%salade%';
INSERT INTO recettes (nom_recette, instructions, duree_mn, id_categorie) VALUES ('pâtes carbonara', 'cuire les pâtes à l eau bouillante selon la durée indiquée sur l emballage;
 pendant ce temps émincer un oignon et le faire revenir 5mn avec les lardons; mélanger le tout et agrémenter de crême fraîche et de gruyère rapé',
'15', '3');

UPDATE recettes
SET nom_recette = 'nouveau nom recette'
WHERE id_recette = 3;

INSERT INTO ingredient (designation, um, prix)
VALUES ('poivre', 'cuiller à café', 2.5);

UPDATE ingredient
SET prix=10
WHERE id_ingredient=12;

SELECT ingredient.designation, composer.qte, ingredient.prix
FROM ingredient
INNER JOIN composer ON ingredient.id_ingredient=composer.id_ingredient
INNER JOIN recettes ON composer.id_recette=recettes.id_recette
WHERE recettes.id_recette=5;

SELECT recettes.nom_recette, ingredient.designation
FROM ingredient
INNER JOIN composer ON composer.id_ingredient=ingredient.id_ingredient
INNER JOIN recettes ON composer.id_recette=recettes.id_recette
WHERE ingredient.designation='poulet';

SELECT nom_recette
FROM recettes
WHERE duree_mn = (
    SELECT MIN(duree_mn)
    FROM recettes
);







