# Provisioners

No Terraform, os provisioners são os blocos de código usados para executar scripts em um recurso imediatamente após a criação dele. Eles são utilizados, por exemplo, para realizar ações de configuração ou inicialização dentro de uma instância, como instalar software, configurar arquivos ou atualizar drives.

Em suma, é o mesmo que o User Data do AWS, mas como um bloco de recurso.

## <span style="color: red; font-weight:bold"> Atenção </span>
- O Terraform recomenda usar o Provisioners apenas como um último recurso, uma vez que com o uso do provisioners, o TF não fará um controle ideal do state, devido a potenciais alterações aplicadas à VM.

- Não confunda PROVISIONER com PROVIDER.

- Provisioners são executados na ordem sequencial do código (os que estão nas primeiras linhas serão executados primeiro)

<br>

**Read the Docs:** https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax