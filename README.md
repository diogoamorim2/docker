#### Configuração de ambiente local: Linux ####

1) Install Docker

2) Installl docker-compose

3) Cadastrar sua SSH-KEY no github para que a clonagem seja via ssh

Gerando container aos projetos da Profiti

4) clone o repositório do docker dos projetos:
    https://github.com/lschedel/docker.git

5) entre na pasta e execute boot.sh para iniciar a instalação:
cs docker && ./boot.sh

##### Configuração de ambiente local: Windows ####

1) Install WSL 2 e setar com dist default

2) Install Docker

3) clone o repositório do docker dos projetos:
    https://github.com/lschedel/docker.git

4) entre na pasta e execute boot.sh para iniciar a instalação:
    cs docker && ./setup.bat

#### Observações ####

PS: Para acessar o projeto no navegador, digite "localhost:port", sendo a porta do projeto que quer acessar que consta no arquivo .env do diretorio docker, ou digitante:

docker ps 
Isso listará todos os containers criados e suas informações completas, onde é possível identificar a porta de cada container.

docker ps --format "{{.Names}}: {{.Ports}}"
O mesmo comando, mas especificando para apresentar apenas o nome e a porta
