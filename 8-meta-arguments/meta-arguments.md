# Meta Arguments
São parametros que podemos adicionar a qualquer bloco de resource ou module, estes parâmetros irão moldar como o TF controla aquele bloco.

## Tipos de Meta Arguments

### Resource
- `depends_on` => Força a dependência a um outro bloco, isso evitará falhas relacionadas a ordem de execução dos módulos.

- `count` => Permite criar múltiplas cópias de um mesmo recurso. Ou seja, se um bloco incluir um argumento count cujo valor é um valor N, então o TF irá criar N instâncias.

- `for_each` => 

- `provider` =>

- `lifecycle` =>

### Module
- `depends_on` => Força a dependência a um outro bloco, isso evitará falhas relacionadas a ordem de execução dos módulos.

- `count` => Permite criar múltiplas cópias de um mesmo recurso. 

- `for_each` =>

- `provider` =>

## Anotações
- Um bloco de recurso ou módulo não pode ter ambos `count` e `for_each`, ou você coloca um ou coloca outro.
    - O `count` deve ser utilizado quando a diferença entra cada índice do recurso é mínima.

    - Já o `for_each` é utilizado para casos onde a diferença é um pouco mais complexa.

- Para diferenciar cada indice de recurso criado pelo `count`, use a referenciação `${count.index}`

## Read the Docs
- [Depends_on](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on)

- [Count](https://developer.hashicorp.com/terraform/language/meta-arguments/count)

- [For_each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)

- [Provider](https://developer.hashicorp.com/terraform/language/meta-arguments/resource-provider)

- [Lifecycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)