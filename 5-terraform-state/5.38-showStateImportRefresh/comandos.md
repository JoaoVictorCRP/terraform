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

`terraform import {recurso}.{nome_recurso} {id_recurso}` => Adicionar um recurso no state <span style="color: red">(também é possível adicionar via bloco import)</span>    
exemplo: `terraform import aws_s3_bucket.bucket_3 joaovictor-terraform-commands-3`

<br>

`terraform refresh` => Atualiza o state para verificar mudanças nos recursos feitas diretamente na plataforma do provider. (OBS: o terraform plan já realiza um refresh também).