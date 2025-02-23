# Usa una imagen base oficial de Node.js
FROM node:16

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