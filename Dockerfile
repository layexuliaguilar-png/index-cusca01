FROM nginx:alpine
COPY . /usr/share/nginx/html
# Sobrescribe la configuración por defecto de Nginx para que escuche en el puerto $PORT
RUN sed -i 's/listen\(.*\)80;/listen\1'"$PORT"';/' /etc/nginx/conf.d/default.conf
EXPOSE $PORT
CMD ["nginx", "-g", "daemon off;"]
