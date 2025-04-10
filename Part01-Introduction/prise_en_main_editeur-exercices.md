# Prise en main de l'éditeur

![éditeur p5js](../static/p5js-editor.png)

L'éditeur est composé de quatre grandes parties :

1. Une barre de menus, qui permet l'exécution et l'arrêt du script en cours  
2. Une zone à gauche qui permet de développer le script actuel  
3. Une zone à droite qui permet de voir le résultat du script en cours d'exécution  
4. Une zone en bas à gauche qui contient une petite console sur laquelle vous  
   pourrez afficher du texte ou des informations avec la fonction `console.log`

Vous avez aussi une case à cocher « Auto-refresh » qui permet de mettre à jour en  
temps réel le côté droit de l'éditeur si vous modifiez le code source, ce qui  
peut s'avérer très pratique durant la réalisation de cette activité. Pensez donc  
à la **cocher** ! ✅

## Fonctions de base

Lorsque vous avez ouvert l'éditeur p5js, vous avez aperçu le code source suivant, à gauche de l'éditeur :

```js
function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
}
```

Décomposons le code précédent ensemble :

- ```js
  function setup() {
    ...
  }
  ```

  Tout d'abord, nous avons une déclaration de fonction — c'est-à-dire que  
  nous informons JavaScript que nous créons une fonction qui n'existe pas  
  encore, appelée `setup`.

  Dans le contexte de p5js, cette fonction est utilisée pour  
  initialiser tout ce qui est **nécessaire** : les variables, d'autres modules  
  complémentaires, ou ici le `canvas` 🎨

  Le `canvas`, ou « tableau » en français, désigne la partie droite de  
  l'éditeur que nous avons présentée préalablement. C'est ici que toutes les  
  opérations graphiques seront dessinées 🖍️

  Les accolades (`{` et `}`) englobent le contenu de la fonction, c’est-à-dire  
  le code qui va être exécuté à chaque fois que la fonction est utilisée.  
  On appelle couramment cette démarcation **le corps de la fonction**.

- ```js
  createCanvas(400, 400);
  ```

  Cette ligne indique à p5js que nous souhaitons **créer** un tableau d'une  
  taille de **400** pixels par **400** pixels.

- ```js
  function draw() {
    ...
  }
  ```

  Nous déclarons ensuite une seconde fonction, appelée `draw`, qui sera appelée  
  par p5js à **intervalle régulière**.

  Le corps de cette fonction contiendra toutes les opérations nécessaires au  
  dessin ; vous pouvez donc dessiner ici des rectangles, des cercles, etc.

- ```js
  background(220);
  ```

  Cette ligne indique à p5js de remplir le tableau avec une couleur grise.  
  Étant donné qu'on a spécifié un seul argument à cette fonction, p5js  
  utilise cette valeur pour les composantes rouge, verte et bleue.
