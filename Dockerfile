# Imagen base para Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de la carpeta local al contenedor
COPY ./svelte /app

# Instala las dependencias del proyecto
RUN npm install

# Compila los archivos Svelte
RUN npm run build

# Expone el puerto 5000 para la aplicación
EXPOSE 5000

# Comando de inicio para ejecutar la aplicación
CMD ["npm", "run", "start"]