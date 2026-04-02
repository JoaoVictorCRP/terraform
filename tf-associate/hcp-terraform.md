# HCP Terraform (Ou Terraform Cloud)

- O HCP Terraform é a plataforma SaaS da HashiCorp que garante uma execução gerenciada e facilitada de projetos Terraform.

## Principais Diferenciais

- **Ambiente de execução**: Enquanto a versão local do Terraform roda na sua própria máquina (ou em pipelines de CI/CD), **o HCP Terraform te garante um ambiente estável para execução remota de alterações na Infraestrutura**.

- **Gerenciamento de estado**: Na versão open source, você precisa configurar manualmente o backend remoto, em um bucket S3 por exemplo. Isto não é necessário na versão Cloud, que gerencia automaticamente o gerenciamento do estado para você, incluindo versionamente, histórico de mudanças e lock.

- **Controle de acessos**: A versão cloud garante um controle fino de acessos em modelo RBAC, o que permite dar permissões granulares para usuário e equipes. É possível por exemplo, limitá-los de efetuar mudanças em determinado ambiente ou recurso.

- **Definição de variáveis**: Também é possível definir as variáveis e seus valores diretamente no painel do Terraform HCP. Por este meio, você também pode definir variáveis sensíveis como write-only e rotacioná-las facilmente.

## Como funciona?

- Para conectar uma base de código terraform, basta criar um workspace no painel e conectar o repositório onde o código está hospedado. O Terraform HCP irá monitorar o repositório e executar os planos de acordo com as mudanças feitas no código.

- O Terraform HCP também suporta a execução manual de planos, o que é útil para testar mudanças ou executar planos em branches específicas.

# Terraform Enterprise

- A HashiCorp também oferece uma versão on-premises do HCP Terraform, chamada Terraform Enterprise.

- A principal diferença entre as duas é que a versão Entreprise é instalada e gerenciada pela própria organização, enquanto a versão Cloud é gerenciada pela HashiCorp. 

- A versão Enterprise é ideal para empresas que possuem requisitos de segurança e conformidade rigorosos, ou que desejam ter controle total sobre seus dados e infraestrutura.