variable "ports" {
  description = "Portas que serão abertas no Security Group"
  type = map(object({       # Mapa de objetos, onde cada objeto terá o atributo description e cidr_block
    description = string
    cidr_blocks = list(string)
  }))
  default = {
    "22" = {
      description = "Porta de SSH liberada para VPN" # Situação hipotética: liberar porta somente para uma VPN
      cidr_blocks = ["20.15.101.158/32"] # IP da nossa VPN fictícia
    },
    "80" = {
        description = "Porta HTTP"
        cidr_blocks = ["0.0.0.0/0"]
    },
    "433" = {
        description = "Porta HTTPS"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}