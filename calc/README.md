Compilation:
```
yacc -d main.y
lex main.l
gcc lex.yy.c y.tab.c -o calc
```

Run:
```
./calc
2 2 +
2 + 2 = 4
2 2 -
2 - 2 = 0
2 2 /
2 / 2 = 1
2 2 *
2 * 2 = 4
```
