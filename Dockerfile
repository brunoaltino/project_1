# 1. Define a imagem base (usamos a rocker, que é o padrão ouro para R).
FROM rocker/tidyverse:4.3.0

# 2. Instala dependências do sistema necessárias para pacotes de nuvem e bancos de dados.
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && rm -rf /var/lib/apt/lists/*

# 3. Instala os pacotes específicos para Engenharia de Dados.
RUN R -e "install.packages(c('sparklyr', 'bigrquery', 'httr2', 'pointblank'), repos='https://cloud.r-project.org/')"

# 4. Cria uma pasta dentro do container para o projeto.
WORKDIR /app

# 5. Copia os scripts R da máquina para dentro do container.
COPY . /app

# 6. Comando para rodar o script principal.
CMD ["Rscript", "scripts_r/ingestao_olist.R"]
