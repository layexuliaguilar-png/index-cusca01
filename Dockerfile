# Usar la imagen oficial y ligera de Nginx
FROM nginx:alpine

# Copiar todos los archivos del repositorio a la carpeta pública de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 (el estándar para HTTP)
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
