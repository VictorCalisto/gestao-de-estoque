FROM python:3.13.0a1-bookworm

# Atualizar os pacotes e instalar as dependências
# RUN apt-get update -y
# RUN apt-get install -y curl gpg
# RUN apk add postgresql-dev gcc musl-dev


# Atualizar os pacotes e instalar as dependências
RUN apt-get update -y
RUN apt-get install -y curl gpg libpq-dev gcc libc6-dev libffi-dev
RUN pip install --upgrade pip
RUN apt-get install sqlite3

# Define o diretório de trabalho no contêiner
WORKDIR /python

# Copia os arquivos de requisitos para o contêiner
COPY pg_config /usr/local/bin
COPY . /python
RUN chmod +x /usr/local/bin/pg_config


# Instala as dependências
RUN pip install -r requirements.txt

# Expõe a porta que o app usa
EXPOSE 5000

WORKDIR /python/py

CMD ["sh", "-c", "sleep infinity"]


