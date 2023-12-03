# CpfUtilsDio

Esta gem serve para fazer validação e formatação de CPF, utilize e seja feliz :)

## Instação

Adicionar em seu Gemfile

```ruby
gem 'cpf_utils_dio_dio'
```

Para instalar rode o comando abaixo
```shell
bundle install
```

Ou instalar diretamente sem um Gemfile:
```shell
gem install cpf_utils_dio
```

Utilizar a formatação de CPF
```ruby
cpf = "33253375512"
formatado = CpfUtilsDio::formatar(cpf)
# retorno de "332.533.755-12"
```

Utilizar a validação de CPF
```ruby
cpf = "33253375512"
formatado = CpfUtilsDio::cpf_valido?(cpf)
# retorno de false
```