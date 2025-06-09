::: {.section-ex08solve}

```js
apple_set = [];
```
:::
::: {.section-ex09solve}

```js
for (i = 0; i < 3; i++) {
  apple_set.push([Math.floor(random(0, 39)), Math.floor(random(0, 39))]);
}
```

:::
::: { .section-ex10solve}

```js
fill(245, 81, 66);
apple_set.forEach((element) => {
  rect(element[0] * 10, element[1] * 10, 10, 10);
});
```
:::