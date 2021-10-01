# POC SPRING DOCKER

Poc com o objetivo de aplicar o desenvolvimento ( em java | spring )  
utilizando docker.


### Requisitos

* docker >= 20.10.8
* docker-compose >= 1.29.2

### Aplicação
| Método  | Path |
| ------------- | ------------- |
| GET  | http://localhost:8080/hello  |

### Comandos

#### Subir o container com a aplicação
```shell
$ docker-compose up --build -d
```

#### Parar | Remover o container
```shell
$ docker-compose down --remove-orphans -v --rmi local
```

#### Testar Aplicação
```shell
$ curl http://localhost:8080/hello
```