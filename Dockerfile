FROM python:3.12.4-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de dependencias
COPY requirements.txt /app/

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación
COPY . /app

# Expone el puerto 5000 (que es el que usa Flask por defecto)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
