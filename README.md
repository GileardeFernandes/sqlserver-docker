<p align="center">
  <a href="https://www.pixeon.com" target="blank"><img src="https://www.pixeon.com/wp-content/themes/pixeon2018/img/new/logo-pixeon.png"/></a>
</p>

## SQL SERVER NO DOCKER COM WSL2

Nesse tutorial vamos criar um container docker no WLS2, utlizando um docker-compose 
para subir nosso sevirço, também vamos executar um script que fará a impotação um dump 
da base smartqa no nosso container.

#### Requisitos mínimos

* Windows 10 Home ou Professional 
  - Versão 1903 ou superior para sistemas x64, com Build 18362 ou superior.
  - Versão 2004 ou superior para sistemas ARM64, com Build 19041 ou superior.

* Windows 11 Home ou Professional
  - Versão 22000 ou superior.

Com os requisitos atendidos, vamos instalar o WSL2 e docker
seguindo os passos desse tutorial: https://github.com/codeedu/wsl2-docker-quickstart#docker-engine-docker-nativo-diretamente-instalado-no-wsl2

### Com nosso ambiente pronto, vamos iniciar nosso container docker.

* Faça clone do repositório na sua máquina.
* Na pasta raiz do projeto execute o seguinte o seguinte comando no bash:
 
 ``` bash
docker-compose up -d
```
o comando a cima utiliza o docker-compose para subir um serviço contendo nosso container sqlserver,
o up inicia a execução do nosso arquivo docker-compose, o -d executa o comando e libera o terminal,
sem o -d, o terminal ficaria preso no processo e quando saisemos ele mataria nosso serviço.

