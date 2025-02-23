# Usa una versión compatible de Node.js (v20)
FROM node:20

# Configura el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instalar la versión más reciente de npm
RUN npm install -g npm@latest

# Instalar las dependencias de Node.js
RUN npm install

# Exponer el puerto de Botpress
EXPOSE 3000

# Comando para iniciar Botpress
CMD ["npm", "start"]