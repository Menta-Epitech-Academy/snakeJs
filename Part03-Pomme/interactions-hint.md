## Exercice 11 : Mangeons les pommes sur la carte

[!HINT]

Voici un exemple de condition pour une pomme de notre tableau. À vous de le faire pour toutes celles qui sont présentes.

```js
// Si les coordonnées de la pomme correspondent à celles de la tête du serpent
if (apple[0] == snake_set[0][0] && apple[1] == snake_set[0][1]) {
  // Alors on l'enlève de la carte
  apple_set.splice(apple_set.indexOf(apple), 1);
  // Et on rajoute une nouvelle pomme !
  apple_set.push([Math.floor(random(0, 39)), Math.floor(random(0, 39))]);

  // Ici sera placé le code qui permettra de rallonger le serpent
}
```

## Exercice 12 : Agrandissons le serpent

> [!HINT]

Regarde la ligne `snake_set.pop()`. Pour l'instant, nous ne récupérons pas ce que l'on enlève du tableau. Il faudrait le stocker dans une variable pour l'utiliser si besoin.
