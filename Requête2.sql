/*Q N°13*/

SELECT recettes.nom_recette, ingredient.designation
FROM ingredient
INNER JOIN composer ON composer.id_ingredient=ingredient.id_ingredient
INNER JOIN recettes ON composer.id_recette=recettes.id_recette
WHERE ingredient.designation='poulet';

/*Q N°12*/

SELECT COUNT(id_recette), nom_categorie
FROM recettes
INNER JOIN categorie ON recettes.id_categorie=categorie.id_categorie
GROUP BY nom_categorie;

/*Q N°14*/

SELECT duree_mn - 5, nom_recette
FROM recettes;

SELECT nom_recette
FROM recettes
WHERE recettes.id_recette NOT IN (
    SELECT recettes.id_recette
    FROM recettes
    INNER JOIN composer ON recettes.id_recette = composer.id_recette
    INNER JOIN ingredient ON composer.id_ingredient = ingredient.id_ingredient
    WHERE prix > 2
);

SELECT nom_recette
FROM recettes
WHERE duree_mn = (
    SELECT MIN(duree_mn)
    FROM recettes
);

SELECT nom_recette
FROM recettes
WHERE id_recette NOT IN (
    SELECT id_recette
    FROM composer
);

SELECT designation
FROM ingredient
INNER JOIN composer ON ingredient.id_ingredient = composer.id_ingredient
GROUP BY ingredient.id_ingredient
HAVING COUNT(composer.id_recette) >= 3;

INSERT INTO composer (id_recette, id_ingredient, qte)
VALUES (2, 11, 0.05);

SELECT nom_recette
FROM recettes
INNER JOIN composer ON recettes.id_recette = composer.id_recette
INNER JOIN ingredient ON composer.id_ingredient = ingredient.id_ingredient
WHERE prix = (
SELECT MAX(prix)
FROM ingredient);





