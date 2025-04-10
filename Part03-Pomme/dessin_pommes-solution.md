## Exercices 08 : Stocker les pommes

> [!SOLUTION]

```js
apple_set = [];
```
## Exercices 09 : Generons les pommes

> [!SOLUTION]

```js
for (i = 0; i < 3; i++) {
  apple_set.push([Math.floor(random(0, 39)), Math.floor(random(0, 39))]);
}
```

## Exercices 10 : Affichons les pommes sur la carte

> [!SOLUTION]

```js
fill(245, 81, 66);
apple_set.forEach((element) => {
  rect(element[0] * 10, element[1] * 10, 10, 10);
});
```