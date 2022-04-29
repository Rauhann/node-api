FROM node:16.15.0

# Autor do arquivo
LABEL maintainer "Rauhann Chaves (https://github.com/Rauhann)"

# Setando diretorio
WORKDIR /app

# Copiando package para o container
COPY package.json .

# Removendo npm que poderiam existir
RUN npm install nodemon

# Copiando arquivos para container
COPY . .

# Expondo porta da aplicação
EXPOSE 5000
