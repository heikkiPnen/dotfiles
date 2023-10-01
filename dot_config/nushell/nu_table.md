## Table 
### Sarakkeet
|Komento      | Kuvaus               |
--------------------------------------
|`select`     |Osa sarakkeista tauluna  |
|`get`        |Sarakkeen arvot listana|
|`move`       |Siirrä sarakketta    |
|`sort-by`    |Lajittele sarakkeen (sarakkaiden) mukaan|
|`reject`     |Poista sarake |
|`rename`     |Uuudelleen nimeä|
|`edit`       |Editoi saraketta|
|`insert`     |Lisää sarake|
|`group-by`   |Luo uusi sarake olemassaolevista sarakkeista|
|`embed`      |Luo uusi sarake |

### Rivit
|Komento      | Kuvaus               |
--------------------------------------
|`prepend`    |Lisää rivi alkuun |
|`append`     |Lisää rivi loppuun |
|`nth --skip` |Poista rivi |
|`nth`        |Hae rivit |
|`range`      |Palauta joukko rivejä |
|`first`      |Palauta rivejä alusta |
|`last`       |Palauta rivejä lopusta|
|`where`     |Palauta rivejä ehdon mukaan|

### Taulu 
|Komento            | Kuvaus                |
---------------------------------------------
|`pivot`            |Transponoi |
|`reverse`          |Vaihda järjestys |
|`count`            |Rivien lkm |
|`count --column`   |Sarakkeiden lkm |

### Literals
|Komento            | Kuvaus                |
---------------------------------------------
|`` |

### Muunna mjonot tauluiksi
|Komento            | Kuvaus                |
---------------------------------------------
|`read, split column`|Create column data from strings|
|`split row`        |Luo rivi merkkijonosta |
|`from *`           |Luo tunnettu rakenne mjonosta|

### Esimerkkejä

```
 rg -c Pyörä| lines | split column ":" nimi lkm | sort-by lkm|get nimi.0
```

[Lähde:](https://github.com/nushell/nushell/issues/903)

