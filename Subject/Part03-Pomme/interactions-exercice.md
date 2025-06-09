# Gestion des interactions

## Exercice 11 : Mangeons les pommes sur la carte

Maintenant, il est temps de rendre tout cela interactif. Pour ce faire, nous devons vérifier si la tête du serpent (pour rappel, `snake_set[0]`) touche l'une des pommes.

Voici une ébauche d'instructions logiques :

- Pour chaque élément `apple` dans `apple_set` :
  - Vérifier si la composante $x$ de `apple` (`apple[0]`) est égale à la composante $x$ de `snake_set[0]` (`snake_set[0][0]`) **ET**
  - Vérifier si la composante $y$ de `apple` (`apple[1]`) est égale à la composante $y$ de `snake_set[0]` (`snake_set[0][1]`)
  - Si c'est le cas, enlever l'élément (les coordonnées) de la liste et régénérer de nouvelles coordonnées.

À vous de transformer cette ébauche logique en un code utilisable dans la fonction `setup()` de votre programme.

::: {.hint path=./Part03-Pomme/interactions-hint.md section=ex11hint}
:::
::: {.solution path=./Part03-Pomme/interactions-solution.md section=ex11solve}
:::

## Exercice 12 : Agrandissons le serpent

Votre prochain objectif est de faire agrandir le serpent quand une pomme est mangée. Voici comment procéder logiquement :

- Récupérer l'élément renvoyé par la fonction `pop` et le stocker dans une variable `snake_tail`.
- Dans la boucle `forEach` de `apple_set`, si la pomme a été mangée, rajouter `snake_tail` à la liste `snake_set`.

À vous de jouer !

::: {.hint path=./Part03-Pomme/interactions-hint.md section=ex12hint}
:::
::: {.solution path=./Part03-Pomme/interactions-solution.md section=ex12solve}
:::

## Exercice 13 : Si le serpent se mord lui-même

Le dernier « problème » à régler est que le serpent peut se mordre lui-même, mais ce n'est pas très compliqué à régler !

Tout d'abord, il existe une fonction permettant d'arrêter le script. Cette fonction s'appelle `noLoop` ! Nous allons donc pouvoir l'utiliser pour arrêter le jeu dès que le serpent se mord.

Ensuite, il nous suffit de vérifier si la tête du serpent (c'est-à-dire ses coordonnées) correspond à un élément de `snake_set`. Si c'est le cas, cela signifie que le serpent s'est mordu, et il faut donc arrêter le jeu.

Avec l'explication ci-dessus et ce que nous avons vu jusqu'à présent, faites en sorte d'arrêter le jeu si la tête du serpent est à la position de l'un des éléments de son corps.


::: {.solution path=./Part03-Pomme/interactions-solution.md section=ex13solve}
:::

## Bonus : Aller plus loin

Vous avez maintenant un Snake qui est certes basique, mais qui fonctionne très bien ! Rien ne vous empêche cependant de rajouter des fonctionnalités...

Vous pouvez par exemple :

- Faire en sorte d'éviter que les pommes apparaissent sur le serpent.
- Ajouter un système de score, qui compte le nombre de points en fonction de la taille du serpent, de la durée du jeu, du nombre de pommes mangées...
- Rendre le serpent multicolore.
- Ajouter une couleur de fond.
- Faire en sorte que le serpent traverse la zone et reparte au début.
- Utiliser des images pour les blocs au lieu d'utiliser des rectangles.
- Ajouter des sons.
