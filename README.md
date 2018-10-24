# $$^ZPD

$$^ZPD takes three arguments (string1, string2, delim) and returns the PIECE numbers which are not matching.

For example:

```
YDB>w $$^ZPD("a|b|c","a|bb|c","|")
2
YDB>w $PIECE("a|bb|c","|",2)
bb
```
