# Usar la imagen oficial de Nginx, que es un servidor web ligero
FROM nginx:alpine

# Copiar todos los archivos de tu repositorio a la carpeta pública de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80 (el puerto por defecto de Nginx)
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
