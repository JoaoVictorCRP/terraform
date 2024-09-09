# <span style="color: purple; font-weight:bold"> Comandos do Terraform CLI </span>

## Básicos
`terraform init` => Inicializar um repositório terraform na pasta qual você se encontra no momento

`terraform plan` => Verificar alterações a serem realizadas na infraestrutura com o deploy do código.

`terraform apply` => Realizar deploy.

`terraform apply {nome_do_arquivo}.out` => Realizar deploy baseado no plano de um arquivo de saída.

`terraform plan -out {nome_do_arquivo}.out` => Cria um arquivo de saída para os detalhes da alteração. (Arquivo binário).

`terraform show {nome_do_arquivo}` => Descodificar arquivo binário .out.

`terraform destroy` => Realizar a destruição de um recurso.

`terraform apply auto-approve` => Realiza deploy imeadiato, sem a necessidade de aprovação.

`terraform output` => Visualizar outputs

`terraform output -raw {nome_da_variavel}` => Printa somente o valor da variavel, sem o nome dela. (<span style="color: red; font-weight:bold">Útil para passar valores de variáveis para outros arquivos</span>)

## Visualização do State
`terraform show` => exibir configurações do state *(human-readable)*
<br>

`terraform state` => comando utilizado para alterar o Terraform state, subcomandos podem ser utilizados para realizar tais alterações:
- `list`                => Lista recursos no state
- `mv`                  => Mover um item no state (ou renomear)
- `pull`                => Faz o download de um remote state
- `push`                => Atualizar o remote state utilizando um arquivo de state local
- `replace-provider`    => Alterar o provider no state
- `rm`                  => Remove instances from the state
- `show {recurso}`                => Mostra as informações de um recursos específico no state
<br>

## Atualização de recursos
`terraform import {recurso}.{nome_recurso} {id_recurso}` => Adicionar um recurso no state <span style="color: red">(também é possível adicionar via bloco import)</span>    
exemplo: `terraform import aws_s3_bucket.bucket_3 joaovictor-terraform-commands-3`
<br>

`terraform refresh` => Atualiza o state para verificar mudanças nos recursos feitas diretamente na plataforma do provider. (OBS: o terraform plan já realiza um refresh também).

## Backend dinâmico
Utilizamos o comando `backend-config` para configurar backends dinâmicos. Com isso, podemos configurar localizações de states diferentes para cada ambiente, como pode ver nos arquivos .hcl nesta pasta (backend-dev e backend-prod). 

Para referenciar o arquivo de backend desejado, é só passar na hora de dar um init no CLI. Veja um exemplo:
`terraform init -backend-config=backend-dev.hcl` 

<span style="color: red; font-weight:bold">
Obs</span>: Para configurar um backend dinâmico, o bloco "backend" que fica no bloco "terraform" deve estar vazio.

## Aprendizagem Extra
- Para gerar uma chave ssh no linux, utilize o comando: `ssh-keygen -f {nome_da_chave}`