# Use an official lightweight Nginx image
FROM nginx:alpine

# Copy your HTML file to the default Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080
EXPOSE 8080

# Change Nginx to listen on port 8080 instead of 80
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf

