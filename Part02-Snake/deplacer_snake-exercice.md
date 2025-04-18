# Faisons déplacer le serpent

C'est bien beau de dessiner un serpent, mais si ce dernier ne bouge pas, ce n'est alors pas un jeu ! 

Nous allons ajouter une fonction `keyPressed` qui, à chaque fois qu'elle est appelée, indique au script qu'une touche a été pressée :

```js
function keyPressed() {
  ...
}
```

Dans cette fonction, vous avez accès à la variable `keyCode` auquel vous pouvez vérifier sa valeur pour savoir quelle touche a été pressée.

Nous allons tout d'abord déclarer une nouvelle variable dans la fonction `setup` qui va nous permettre de savoir dans quelle direction le serpent doit se déplacer à chaque fois, si l'on n'appuie sur aucune touche :

```js
snake_set = ...;
snake_direction = "up";
```

Comme vous l'aurez compris, `snake_direction` peut contenir `up` (haut), `down` (bas), `left` (gauche) ou `right` (droite). Pour le moment, cette variable ne change pas de valeur, mais nous allons tout de suite faire en sorte que ce soit le cas !

Pour vous aider, nous vous avons fait un petit tableau pour vous aider à savoir quelles constantes sont à comparer avec `keyCode` :

 `keyCode`     | Valeur à assigner à `snake_direction` | Direction
---------------|---------------------------------------|-----------
 `LEFT_ARROW`  | `"left"`                              | Gauche
 `RIGHT_ARROW` | `"right"`                             | Droite
 `UP_ARROW`    | `"up"`                                | Haut
 `DOWN_ARROW`  | `"down"`                              | Bas

## Exercices 04 : Capturons les touches pour le déplacement

Votre objectif dans cet exercice est de compléter la fonction `keyPressed()` pour cela il vous faudra réaliser les conditions nécessaires pour pouvoir changer la valeur de la variable `snake_direction` à chaque fois qu'une touche de direction est pressée.

Vous pouvez ensuite tester si votre code fonctionne en écrivant juste en dessous `console.log(snake_direction)` dans le corps de la fonction. Si, dans la console, une ligne s'affiche à chaque fois que vous appuyez sur les touches de direction **et** que la touche correspond à ce qui est affiché dans la console, vous avez réussi !

::: {.hint path=./Part02-Snake/deplacer_snake-hint.md section=ex04hint}
:::
::: {.solution path=./Part02-Snake/deplacer_snake-solution.md section=ex04solve}
::: 

## Exercices 05 : Déterminons où le serpent doit se déplacer 

La prochaine étape consiste à faire bouger, selon la direction à laquelle le joueur souhaite se déplacer, la tête du serpent.

Mais, avant de commencer à voir comment cela peut fonctionner, nous voulons que le déplacement de notre serpent se fasse à intervalles réguliers, toutes les 2 secondes par exemple.

Pour ce faire, nous disposons de la fonction `setInterval` que nous pouvons utiliser dans la fonction `setup` de cette manière-là :

```js
setInterval(() => {
  // notre code sera ici.
}, 250);
```
Comme vous pouvez l'observer, on utilise une fonction comme corps du code qui va s'exécuter périodiquement, et l'on spécifie que ce code doit s'exécuter tous les `250` millisecondes.

Maintenant que nous savons où nous allons travailler, c'est encore une fois une question de comparaisons avec `snake_direction` et de petits calculs avec la tête actuelle du serpent, mais voici un petit schéma pour vous aider : 

![](./static/snake-next-movement-help.png)

- Le `[0]` correspond au premier élément de la liste de `snake_set`, soit la tête du serpent
- Les `x - 1`, `x + 1`, `y - 1` et `y + 1` réfèrent aux coordonnées **relatives** aux coordonnées du serpent. Par exemple, `x - 1` signifie réellement `[snake_set[0][0] - 1, snake_set[0][1]]`

Avec ce que nous venons de voir, votre objectif va être de réaliser une condition qui, en fonction de la direction stockée dans `snake_direction`, va calculer la prochaine position de la tête du serpent et la stocker dans une variable `next_direction`.

::: {.hint path=./Part02-Snake/deplacer_snake-hint.md section=ex05hint}
:::
::: {.solution path=./Part02-Snake/deplacer_snake-solution.md section=ex05solve}
:::

## Exercices 06 : Faire déplacer le serpent

Maintenant, nous savons où doit se déplacer le serpent à la prochaine intervalle ! Il ne nous reste plus qu'à le faire se déplacer. Pour ce faire, il va falloir d'abord enlever le dernier élément de la liste `snake_set`, puis ajouter le nouvel élément au début (c'est-à-dire à l'index `0`) la position de la nouvelle tête.

Il existe deux fonctions associées aux listes en JavaScript pour réaliser ce que l'on souhaite faire :

- `pop` : cette fonction permet d'enlever le dernier élément de la liste et le renvoie à l'utilisateur (ce sera très utile vers la fin... !)
- `unshift(élément)` : cette fonction permet d'ajouter l'élément spécifié en début de liste

Votre objectif est de réaliser ce qui a été décrit ci-dessus sur la liste `snake_set`.

Une fois cela effectué, vous devriez voir votre serpent s'allonger. Pas de panique, il vous suffit de rajouter `clear(255)` au début du corps de la fonction `draw` pour régler ce problème !

::: {.solution path=./Part02-Snake/deplacer_snake-solution.md section=ex06solve}
:::

## Exercices 07 : Empêcher le serpent de se déplacer sur lui-même

Vous l'aurez peut-être remarqué, mais le serpent peut passer sur lui-même lorsque l'on lui donne une direction opposée à celle à laquelle il avance !

Par exemple, vous pouvez aller vers la droite... puis vers la gauche ! Un vrai serpent acrobate, mais ce n'est pas ce que l'on veut.

Encore une fois, ce n'est qu'une histoire de conditions ! Il suffirait juste de stocker la direction prise par le serpent, ou « acceptée » si vous préférez, et de vérifier ensuite dans le code où l'on assigne une direction à partir d'une touche, si la dernière direction acceptée est à l'opposé de la direction prise par le serpent !

Il existe en JavaScript un opérateur `&&` qui permet de vérifier plusieurs conditions dans un seul `if`.

Votre objectif est de modifier les conditions d'acquisition des touches pour empêcher le serpent de faire un demi-tour complet en une fois.

::: {.hint path=./Part02-Snake/deplacer_snake-hint.md section=ex07hint}
:::
::: {.solution path=./Part02-Snake/deplacer_snake-solution.md section=ex07solve}
:::
