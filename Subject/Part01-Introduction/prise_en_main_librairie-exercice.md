# Prise en main de la bibliothèque p5js

Avant de nous atteler à créer un clone du jeu de Snake, essayons tout d'abord  
de prendre en main la bibliothèque p5js !

Une ressource que nous vous recommandons **fortement** d'utiliser est [la  
référence de p5js](https://p5js.org/reference/). Cette page contient toutes les  
fonctions utilisables dans votre code JavaScript, ce qui vous permettra  
d'avancer plus rapidement !

## Exercices 01 : Dessinons un rectangle !

Essayons ensemble de dessiner un rectangle sur le canvas. Voici ce que l'on va chercher à connaître pour le faire :  
- où dessiner le rectangle sur le tableau 🔍  
- la taille de ce rectangle 📏

### Le ***où*** : un système de coordonnées

Pour savoir **où** dessiner quoi que ce soit, la plupart des programmes et bibliothèques informatiques utilisent un système de coordonnées appelé **cartésien**.

Voici un exemple pour que vous compreniez le principe :

![](./static/coordinate-system.png)

- Tout point est exprimé sous la forme $(x, y)$.  
- La coordonnée d'origine $(0, 0)$ correspond au point le plus haut et le plus à gauche de l'écran.  
- Lorsque la partie $x$ augmente, le point avance vers la droite.  
- Lorsque la partie $y$ augmente, le point descend vers le bas.  
- L'image de cochon 🐷 ici présente est encadrée par un rectangle placé en $(30, 10)$.

Si vous n'avez pas très bien compris, n'hésitez pas à demander de l'aide à un encadrant ! 🎓

Regardez [la référence de p5js](https://p5js.org/reference/) pour trouver une fonction qui permet de dessiner un rectangle en $(30, 20)$ et de taille $20$ par $15$ pixels.

Rappelez-vous que le corps de la fonction `draw` sert à placer les instructions nécessaires au dessin.

::: {.hint path=./Part01-Introduction/prise_en_main_librairie-hint.md section=hint01}
:::
::: {.solution path=./Part01-Introduction/prise_en_main_librairie-solution.md section=solution01}
:::


## Exercices 02 : Modifions ce rectangle !

Maintenant que vous avez un rectangle affiché, essayez de :  

- Le remplir de la couleur verte  
- Lui mettre des bordures de couleur bleue

::: {.hint path=./Part01-Introduction/prise_en_main_librairie-hint.md section=hint02}
:::
::: {.solution path=./Part01-Introduction/prise_en_main_librairie-solution.md section=solution02}
:::