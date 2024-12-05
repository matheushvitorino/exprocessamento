# Use uma imagem base do Python
FROM python:3.10-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo de dependências para o container
COPY requirements.txt requirements.txt

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código do aplicativo para o container
COPY . .
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf


# Define a porta que o Flask usará
EXPOSE 5000

# Comando para rodar o aplicativo
CMD ["python", "app.py"]
