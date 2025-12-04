# Базовый образ Nginx (самая легкая версия)
FROM nginx:alpine

# Удаляем стандартную страницу Nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем нашу HTML-страницу
COPY index.html /usr/share/nginx/html/

# Копируем конфигурацию Nginx (если нужно)
COPY nginx.conf /etc/nginx/nginx.conf

# Порт, который слушает Nginx
EXPOSE 80

# Команда для запуска Nginx уже встроена в базовый образ
CMD ["nginx", "-g", "daemon off;"]