::: {.section-ex04hint}


Si vous ne savez pas à quoi peut ressembler des conditions, voici un exemple ci-dessous :

```js
if (lives > 0) { // if correspond à si la condition est vraie
  // La condition `lives > 0` est vraie, `lives = 1` par exemple
  ...
} else if (lives == 0) { // else if correspond à sinon si cette condition est vraie
  // La condition `lives == 0` est vraie car `lives = 0`
  ...
} else { // else correspond au sinon, elle sera donc exécutée QUE si toutes les autres comparaisons ont donné `faux`
  ...
}
```
:::

::: {.section-ex05hint}

Voici la première condition, à vous de faire les autres :

``` js
next_direction = null;
if (snake_direction == "up") {
    next_direction = [snake_set[0][0], snake_set[0][1] - 1];
}
```
:::

::: {.section-ex07hint}

On devrait être capable d'aller à droite seulement si la flèche de droite est pressée et que notre serpent ne se déplace pas actuellement à gauche, non ?

:::