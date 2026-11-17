# Imagen base oficial de Nginx Alpine (ligera y segura)
FROM nginx:alpine

# Etiquetas de metadatos del proyecto
LABEL maintainer="Equipo DevOps VitalSalud <devops@vitalsalud.cl>"
LABEL description="Contenedor Web Nginx para Servidor de Reserva de Horas Médicas"
LABEL version="1.0.0"

# Copiar archivos estáticos de la aplicación a la ruta predeterminada de Nginx
COPY src/ /usr/share/nginx/html/

# Exponer el puerto estándar HTTP
EXPOSE 80

# Ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
