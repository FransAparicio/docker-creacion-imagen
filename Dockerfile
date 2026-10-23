#Imagen base de Node.js
FROM node:24-alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY package*.json ./

# Este comando instala las dependencias de la aplicación en produccion
RUN npm install

# Copiar el resto de los archivos de la aplicación al contenedor (como ser el codigo fuente, archivos de configuración, etc.)
COPY . .

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "src/index.js"]