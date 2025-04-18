::: {.section-ex11solve}

```js
apple_set.forEach((element) => {
  if (element[0] == snake_set[0][0] && element[1] == snake_set[0][1]) {
    apple_set.splice(apple_set.indexOf(element), 1);
    apple_set.push([Math.floor(random(0, 39)), Math.floor(random(0, 39))]);
  }
});

```
:::
::: {.section-ex12solve}

```js
snake_tail = snake_set.pop();
snake_set.unshift(next_direction);

snake_accepted_direction = snake_direction;

apple_set.forEach((element) => {
  if (element[0] == snake_set[0][0] && element[1] == snake_set[0][1]) {
    apple_set.splice(apple_set.indexOf(element), 1);
    apple_set.push([Math.floor(random(0, 39)), Math.floor(random(0, 39))]);
    snake_set.push(snake_tail);
  }
});

```
:::
::: {.section-ex13solve}

```js
snake_set.forEach((snake_part) => {
  if (next_direction[0] == snake_part[0] && next_direction[1] == snake_part[1]) {
    noLoop();
  }
})
```

:::