# Gunakan image Python versi terbaru sebagai base image
FROM python:3.9

# Set working directory di dalam container
WORKDIR /code

# Salin file requirements.txt ke dalam container di dalam direktori /code
COPY requirements.txt /code/

# Install dependencies dari requirements.txt menggunakan pip
RUN pip install -r requirements.txt

# Salin seluruh kode aplikasi ke dalam container di dalam direktori /code
COPY . /code/

# Expose port 8000 untuk akses web (opsional, bisa diubah sesuai kebutuhan)
EXPOSE 8000