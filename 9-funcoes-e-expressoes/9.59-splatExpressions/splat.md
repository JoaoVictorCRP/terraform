# Splat

Splat é uma expressão de iteração utilizada no TF, possui uma sintaxe um pouco diferente, não me lembro de ter visto algo semelhante em outras linguagens.

## Sintaxe: For vs Splat
Se `var.list` é uma lista de objetos onde todos tem o atributo `id`, poderiamos iterar por este atributo da seguinte maneira com For:
- `[for o in var.list : o.id]`

O equivalente com *splat* pode ser feito desta forma:
- `var.list[*].id`

<br><br>


**Splats só podem ser utilizados em estruturas de listas, sets ou tuplas, maps ou objetos não!**

**Read The Docs**: [Splat Expressions](https://developer.hashicorp.com/terraform/language/expressions/splat)