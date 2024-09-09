# Módulos
Módulos são muito úteis no TF, eles são conjuntos de código que podem ser reutilizados em diversos contextos, eles podem ser criados para serem personalizados também, evitando códigos repetitivos.

Um exemplo de utilização seria na criação de um módulo que crie Networks, nele poderíamos incluir a customização do nome da rede ou de suas configurações, através de variáveis.

## Tipos de Módulos

- **Módulos Locais (Child Modules)**: Módulos criados na sua máquina, chamados diretamente dela.

- **Módulos Remotos (Published Modules)**: Módulos salvos nos registrys, onde podemos encontrar módulos oficiais criados pelos próprios provedores Cloud como a AWS, Azure e Google ou então pela própria comunidade.

**Read the Docs**: https://developer.hashicorp.com/terraform/language/modules