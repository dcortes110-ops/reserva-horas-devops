# Imagen base ligera con Nginx
FROM nginx:alpine

LABEL org.opencontainers.image.title="reserva-horas-web" \
      org.opencontainers.image.description="Sitio estático de reserva de horas médicas (proyecto académico DevOps)" \
      org.opencontainers.image.version="1.0.0"

# Copia del sitio estático al directorio público de Nginx
COPY src/ /usr/share/nginx/html/

# Nginx escucha en el puerto 80 dentro del contenedor
EXPOSE 80

# El proceso de Nginx queda en primer plano (comportamiento por defecto de la imagen)
CMD ["nginx", "-g", "daemon off;"]
