# Pipelines
Pipelines são uma série de estágios e tarefas automatizados que são executados em sequência para ganrantir que o código seja compilado, testado e implantado corretamente. Elas são amplamente usadas em CI/CD para automatizar o processo de integração e implantação de software.

## GitLab Pipelines
No GitLab, as pipelines são configuradas usando um arquivo chamado `.gitlab-ci.yml`, que define os estágios e os jobs(etapas) a serem executados. Esse arquivo é colocado no repositório Git, e **o GitLab executa automaticamente as tarefas quando o código é commitado ou alterado.**

## Estrutura da nossa pipeline
- ### 3 Stages:
    - Terraform Validate & Plan
    - Terraform Apply
    - Terrraform Destroy (Esse stage não é comum, obviamente, é mais para realizarmos teste).
