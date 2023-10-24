#!/bin/sh

# Aguarda um breve período para garantir que o processo principal tenha iniciado
sleep 5

# Diretório onde você deseja verificar a existência do Gemfile.lock
diretorio="/app"

# Verifica se o Gemfile.lock existe no diretório
if [ -e "$diretorio/Gemfile.lock" ];
then
  bundle install
  rails db:create
  rails db:migrate
  rails db:seed
  echo "Já existe um Gemfile.lock no diretório. Comando bundle install executado."
else
  echo "Nenhum Gemfile.lock encontrado. Criando um novo projeto Rails..."
  
  # Crie um novo projeto Rails
  rails new .
  bundle install
  
  echo "Novo projeto Rails foi criado em $diretorio."
fi

# Subindo o servidor do rails
exec bundle exec rails s -p 3000 -b 0.0.0.0

# Obtém o PID do processo principal
MAIN_PID=$(ps aux | grep '[r]ails s -p 3000 -b 0.0.0.0' | awk '{print $2}')

# Limpa o PID
echo "Limpando PID: $MAIN_PID"
rm -f /app/tmp/pids/server.pid

# Executa o comando principal (a aplicação Rails)
exec "$@"
