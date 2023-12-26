# Gunakan base image Ubuntu
FROM ubuntu:latest

# Install dependencies
RUN apt-get update -y && \
    apt-get install -y git python3 && \
    apt-get install -y git && \
    apt-get clean

# Clone repo dari GitHub
RUN git clone https://github.com/MuhammadRaihanAssidiqi/CapstoneCloud-195410172.git /app

# Set working directory
WORKDIR /app

# Expose port 80
EXPOSE 80

# Perintah untuk menjalankan aplikasi
CMD ["bash", "-c", "echo 'Hello Docker!' > index.html && python3 -m http.server 80"]