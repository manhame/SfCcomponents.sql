
DELETE FROM recettes
INNER join composer ON composer.id_recette=recettes.id_recette
WHERE id_recette=2;

SELECT SUM(qte*prix)
FROM composer
INNER JOIN recettes ON recettes.id_recette=composer.id_recette
INNER JOIN ingredient ON composer.id_ingredient=ingredient.id_ingredient
WHERE id_recette=5;

SELECT COUNT(id_recette)
FROM recettes
INNER JOIN categorie ON categorie.id_categorie=recettes.id_categorie
GROUP BY nom_categorie;