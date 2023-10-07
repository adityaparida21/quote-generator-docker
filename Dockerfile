# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your website files (HTML, JavaScript, CSS) to the container
COPY index.html .
COPY script.js js/
COPY style.css css/

# Expose port 80 for HTTP
EXPOSE 80

# Start the nginx web server when the container runs
CMD ["nginx", "-g", "daemon off;"]

