# <span style="color: purple; font-weight:bold"> Comandos do Terraform CLI </span>
 
`terraform plan` => Verificar alterações a serem realizadas na infraestrutura com o deploy do código.

`terraform plan -out {nome_do_arquivo}.out` => Cria um arquivo de saída para os detalhes da alteração. (Arquivo binário).

`terraform show {nome_do_arquivo}` => Descodificar arquivo binário .out.

`terraform apply` => Realizar deploy.

`terraform apply {nome_do_arquivo}.out` => Realizar deploy baseado no plano de um arquivo de saída.

`terraform destroy` => Realizar a destruição de um recurso.

`terraform apply auto-approve` => Realiza deploy imeadiato, sem a necessidade de aprovação.