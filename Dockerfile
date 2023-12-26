# Menggunakan Base Image Ubuntu versi 20.04
FROM ubuntu:20.04

# Menginstall git untuk mengunduh file dari gitHub dan nginx agar dapat menjalankan aplikasi web
RUN apt-get update && \
    apt-get install -y git nginx

# Direktori container
WORKDIR /app

# Unduh file dari GitHub
RUN git clone https://github.com/MuhammadRaihanAssidiqi/CapstoneCloud-195410172.git .

# Menyalin file konfigurasi nginx
COPY nginx.conf /etc/nginx/sites-available/default

# Expose port untuk nginx
EXPOSE 80

# Perintah yang akan dijalankan saat container berjalan
CMD ["nginx", "-g", "daemon off;"]
