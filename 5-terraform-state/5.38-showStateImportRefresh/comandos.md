## Show
`terraform show` => exibir configurações do state *(human-readable)*
<br>

# State
`terraform state` => comando utilizado para alterar o Terraform state, subcomandos podem ser utilizados para realizar tais alterações:
- `list`                => Lista recursos no state
- `mv`                  => Mover um item no state (ou renomear)
- `pull`                => Faz o download de um remote state
- `push`                => Atualizar o remote state utilizando um arquivo de state local
- `replace-provider`    => Alterar o provider no state
- `rm`                  => Remove instances from the state
- `show {recurso}`                => Mostra as informações de um recursos específico no state
<br>


## Import
`terraform import {recurso}.{nome_recurso} {id_recurso}` => Adicionar um recurso no state <span style="color: red">(também é possível adicionar via bloco import)</span>    
exemplo: `terraform import aws_s3_bucket.bucket_3 joaovictor-terraform-commands-3`
<br>

## Refresh
`terraform refresh` => Atualiza o state para verificar mudanças nos recursos feitas diretamente na plataforma do provider. (OBS: o terraform plan já realiza um refresh também).

## Parâmetros do init
`-reconfigure` => Reconfigura o backend, caso haja alguma alteração nele. A ideia por trás deste comando é criar um backend ZERADO.

<span style="color: red; font-weight:bold">
Obs 1</span>: não irá destruir qualquer configuração da última definição do backend

<span style="color: red; font-weight:bold">
Obs 2</span>: Tentará criar novamente todos os recursos já definidos no backend anterior, independente de já estarem criados no provedor. Cuidado!

## Backend-config
Utilizamos este comando para configurar backends dinâmicos. Com isso, podemos configurar localizações de states diferentes para cada ambiente, como pode ver nos arquivos .hcl nesta pasta (backend-dev e backend-prod). 

Para referenciar o arquivo de backend desejado, é só passar na hora de dar um init no CLI. Veja um exemplo:
`terraform init -backend-config=backend-dev.hcl` 

<span style="color: red; font-weight:bold">
Obs</span>: Para configurar um backend dinâmico, o bloco "backend" que fica no bloco "terraform" deve estar vazio.