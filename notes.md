# <span style="color: purple; font-weight:bold"> Comandos do Terraform CLI </span>

`terraform init` => Inicializar um repositório terraform na pasta qual você se encontra no momento

`terraform plan` => Verificar alterações a serem realizadas na infraestrutura com o deploy do código.

`terraform plan -out {nome_do_arquivo}.out` => Cria um arquivo de saída para os detalhes da alteração. (Arquivo binário).

`terraform show {nome_do_arquivo}` => Descodificar arquivo binário .out.

`terraform apply` => Realizar deploy.

`terraform apply {nome_do_arquivo}.out` => Realizar deploy baseado no plano de um arquivo de saída.

`terraform destroy` => Realizar a destruição de um recurso.

`terraform apply auto-approve` => Realiza deploy imeadiato, sem a necessidade de aprovação.

`terraform output` => Visualizar outputs

`terraform output -raw {nome_da_variavel}` => Printa somente o valor da variavel, sem o nome dela. (<span style="color: red; font-weight:bold">Útil para passar valores de variáveis para outros arquivos</span>)

## Aprendizagem Extra
- Para gerar uma chave ssh no linux, utilize o comando: `ssh-keygen -f {nome_da_chave}`