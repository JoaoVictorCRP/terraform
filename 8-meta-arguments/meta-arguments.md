# Meta Arguments
São parametros que podemos adicionar a qualquer bloco de resource ou module, estes parâmetros irão moldar como o TF controla aquele bloco.

## Tipos de Meta Arguments

### Resource
- `depends_on` => Força a dependência a um outro bloco, isso evitará falhas relacionadas a ordem de execução dos módulos.

- `count` => Permite criar múltiplas cópias de um mesmo recurso. Ou seja, se um bloco incluir um argumento count cujo valor é um valor N, então o TF irá criar N instâncias.

- `for_each` => Funciona de maneira semelhante ao count, no entanto, trabalha usando sets (ou hash-tables) para atribuir valores diferentes a cada um dos indíces.

- `provider` => Utilizado em ocasiões onde precisaremos de mais de um bloco de provider para diferentes recursos. Na AWS por exemplo, pra cada região devemos escrever um provider para cada região, então se quiser ter recursos em regiões distintas, você deve usar este meta-argument. 

- `lifecycle` => Permite definir padrões do ciclo de vida de recurso, isto é, como ele vai reagir de acordo com certar mudanças no state, destruição ou criação de outros recursos associados a ele, dentre outras coisas. Veja alguns parâmetros:
    - `create_before_destroy` => Quando o recurso que possui este parâmetro como True for destruído, um novo recurso com as exatas mesmas configurações será criado em seu lugar (muito útil para recursos críticos).

    - `prevent_destroy` => Impede a destruição do recrusos, o que previne erros na automatização ou acidentes.

    - `ignore_changes` => Ignora mudanças realizadas no console da plataforma de cloud computing, ficando somente as definições escritas em código TF.

    - `replace_triggered_by` => Refaz o recurso quando qualquer item referenciado como gatilho mudar.



### Module
- `depends_on` => Força a dependência a um outro bloco, isso evitará falhas relacionadas a ordem de execução dos módulos.

- `count` => Permite criar múltiplas cópias de um mesmo recurso. 

- `for_each` => Funciona de maneira semelhante ao count, no entanto, trabalha usando sets(listas) ou maps(key-value) para atribuir valores diferentes a cada um dos indíces.

- `providers` => No módulo, você pode estar utilizando multiplos providers para um só bloco. Isso pode ser usado quando é necessário migrar um recurso de uma região para outra, ou passar algum dado entre as regiões.

## Anotações
- Um bloco de recurso ou módulo não pode ter ambos `count` e `for_each`, ou você coloca um ou coloca outro.
    - O `count` deve ser utilizado quando a diferença entra cada índice do recurso é mínima.

    - Já o `for_each` é utilizado para casos onde a diferença é um pouco mais complexa.

- Para diferenciar cada indice de recurso criado pelo `count`, use a referenciação `${count.index}`

- Para referenciar indices de um `for each` utilize a chave do índice correspondente.

## Read the Docs
- [Depends_on](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on)

- [Count](https://developer.hashicorp.com/terraform/language/meta-arguments/count)

- [For_each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)

- [Provider](https://developer.hashicorp.com/terraform/language/meta-arguments/resource-provider)

- [Lifecycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)