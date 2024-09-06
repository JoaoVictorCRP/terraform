# Local State
O arquivo `.tfstate` é um dos mais importantes em um projeto terraform, é graças a ele que o terraform sabe qual recursos ele está gerindo e quais alteracões ele deve fazer, ou não, quando damos um novo `terraform apply`.

É por conta do `.tfstate` que o terraform é idempotente, isto é, podendo realizar varias operações de apply sem ficar criando varios recursos um em cima do outro, e sim utilizando um já existente.