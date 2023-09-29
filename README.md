# protheus-docker

Tutorial: https://www.youtube.com/watch?v=wcMU0pqfZWA

Arquivos necessarios: https://drive.google.com/drive/folders/1XzxgZrCf4l79nsoCWI-9ykMUS3T37FzM?usp=sharing

# Binarios

-   Copie o arquivo tar.gz renomeando para APPSERVER.TAR.GZ do appserver para docker/totvs-appserver-docker.

-   Copie o arquivo tar.gz renomeando para DBACCESS.TAR.GZ do dbaccess para docker/totvs-dbaccess-docker.

# Ambiente

Crie uma copia do arquivo env-example com o nome .env

Descompacte o arquivo "protheus12.zip" dentro do diretorio "docker" ou modifique as variaveis de ambiente no arquivo .env

## Webapp

Adicione a flag:

[WEBAPP]
port=5433

Adicione o webapp.so na pasta build

# Execucao

docker-compose up -d

# Problemas e Soluções

-   Problema: Erro na execução de scripts no Windows

Solução:

> Sempre salvar os aquivos .sh com end of line LF.

-   Problema: Falha ao conectar ao banco

Solução:

> Verificar versão do arquivo /opt/microsoft/msodbcsql17/lib64/libmsodbcsql dentro do container dbaccess

> caso divergente da versão no docker/totvs-dbaccess-docker/build/odbc.ini corrigir e subir container novamente

-   Problema: Versão de appserver/dbaccess

Solução:

> Baixar a versão mais recente dos binarios linux substituindo o nome do arquivo.tar.gz no Dockerfile de cada container
