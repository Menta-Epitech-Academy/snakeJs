# Placer les pommes sur la carte

## Exercice 08 : Stocker les pommes

Dans le corps de la fonction `setup`, vous devez créer une liste appelée `apple_set` qui va contenir les coordonnées de chaque pomme.

::: {.hint path=./Part03-Pomme/dessin_pommes-hint.md section=ex08hint}
:::

## Exercice 09 : Générons les pommes

### Une histoire de boucles...

Nous allons donc devoir faire une boucle `for`, semblable à `forEach`, sauf que cette fois-ci nous allons devoir spécifier **un nombre de fois** au lieu d'une liste, puisque nous n'avons pas encore les éléments de la liste `apple_set` remplie.

Voici la syntaxe à utiliser :

```js
for (i = 0; i < N; i++) {
  ...
}
```

`N` représente le nombre de fois que vous souhaitez exécuter le code dans le corps de la boucle.

Voici un exemple :

```js
for (i = 0; i < 3; i++) {
  console.log(i);
}

// Console :
// 0
// 1
// 2
```

### ...Et un nombre aléatoire

Nous voulons que nos pommes apparaissent n'importe où de manière **aléatoire** sur la carte. Pour ce faire, nous allons devoir utiliser une fonction qui permet de générer des nombres aléatoires dans un intervalle donné : c'est la fonction `random(a, b)` !

Attention, `random(a, b)` génère des nombres **à virgule**, il est donc impératif d'englober son résultat dans `Math.floor(x)`, une fonction qui permet d'obtenir uniquement la partie entière du résultat.

Par exemple, si l'on réalise `Math.floor(3.14)`, la fonction nous renverra `3`.

Générer une paire de coordonnées $x$, $y$ ressemble à ça :


```js
[Math.floor(random(0, 39)), Math.floor(random(0, 39))]
```

Vous avez toutes les clés, avec les informations présentes ci-dessus. Vous devez, dans `setup()`, **pousser** 3 pommes avec des coordonnées aléatoires dans la liste précédemment créée.

::: {.solution path=./Part03-Pomme/dessin_pommes-solution.md section=ex09solve}
:::

## Exercice 10 : Affichons les pommes sur la carte

Votre objectif est d'afficher les pommes sur la carte de manière similaire à ce qui a été fait pour le serpent.

Pensez à changer la couleur des blocs, sinon vous allez confondre le serpent avec les pommes.

::: {.solution path=./Part03-Pomme/dessin_pommes-solution.md section=ex10solve}
:::