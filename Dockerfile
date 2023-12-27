# Gunakan base image Nginx
FROM nginx:latest

# Install Git
RUN apt-get update && \
    apt-get install -y git

# Pilih direktori kerja
WORKDIR /usr/share/nginx/html

# Hapus semua file dan direktori yang ada di direktori kerja
RUN rm -rf /usr/share/nginx/html/*

# Clone repositori Git ke dalam direktori kerja
RUN git clone https://github.com/MuhammadRaihanAssidiqi/CapstoneCloud-195410172.git .

# Ekspos port 80 untuk Nginx
EXPOSE 80

# CMD untuk memulai Nginx dalam mode daemon
CMD ["nginx", "-g", "daemon off;"]
