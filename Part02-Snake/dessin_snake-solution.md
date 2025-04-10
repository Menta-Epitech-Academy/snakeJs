## Exercice 03 : dessinons notre liste

> [!SOLUTION] 

Voici comment procéder, toujours depuis la fonction `draw` :

```js
snake_set.forEach((element) => {
  rect(element[0] * 10, element[1] * 10, 10, 10);
});
```
