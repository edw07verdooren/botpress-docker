# Usa la imagen oficial de Node.js como base
FROM node:16-alpine

# Instala dependencias del sistema
RUN apk add --no-cache bash git

# Crea y establece el directorio de trabajo
WORKDIR /app

# Clona Botpress desde el repositorio oficial
RUN git clone https://github.com/botpress/botpress.git .

# Instala dependencias de Node.js
RUN npm install

# Expone el puerto 3000, que es el predeterminado de Botpress
EXPOSE 3000

# Inicia la aplicación Botpress
CMD ["npm", "start"]
