## Exercices 01 : Dessinons un rectangle !

> [!SOLUTION] 

```js
function draw() {
  rect(30, 20, 20, 15);
}
```

## Exercices 02 : Modifions ce rectangle !

> [!SOLUTION]

```js
function draw() {
  createCanvas(400, 400);
  background(220);

  stroke(0, 0, 255);      // Couleur de la bordure
  strokeWeight(4);        // Épaisseur de la bordure (4 pixels)
  fill(0, 255, 0);        // Remplissage vert
  rect(30, 20, 20, 15);   // Notre carré
}
```