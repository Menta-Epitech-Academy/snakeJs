::: {.section-ex04solve}

```js
function keyPressed() {
  if (keyCode == UP_ARROW) {
    snake_direction = "up";
  } else if (keyCode == DOWN_ARROW) {
    snake_direction = "down";
  } else if (keyCode == LEFT_ARROW) {
    snake_direction = "left";
  } else if (keyCode == RIGHT_ARROW) {
    snake_direction = "right";
  }
}
```
:::

::: { .section-ex05solve}

Voici comment parvenir à ce résultat :

```js
next_direction = null;
if (snake_direction == "up") {
    next_direction = [snake_set[0][0], snake_set[0][1] - 1];
} else if (snake_direction == "down") {
    next_direction = [snake_set[0][0], snake_set[0][1] + 1];
} else if (snake_direction == "left") {
    next_direction = [snake_set[0][0] - 1, snake_set[0][1]];
} else if (snake_direction == "right") {
    next_direction = [snake_set[0][0] + 1, snake_set[0][1]];
}
```

Comme vous pouvez le constater, on calcule la nouvelle position de la tête à partir de celle actuelle en utilisant les composants de la coordonnée `snake_set[0]`.
:::
::: { .section-ex06solve}

```js
snake_set.pop();
snake_set.unShift(next_direction);
```
:::
::: { .section-ex07solve}

```js
function keyPressed() {
  if (keyCode == UP_ARROW && snake_direction != "down") {
    snake_direction = "up";
  } else if (keyCode == DOWN_ARROW && snake_direction != "up") {
    snake_direction = "down";
  } else if (keyCode == LEFT_ARROW && snake_direction != "right") {
    snake_direction = "left";
  } else if (keyCode == RIGHT_ARROW && snake_direction != "left") {
    snake_direction = "right";
  }
}
```
:::