# Flask Web Application - Dockerized

## Descripción

Esta aplicación Flask es una plataforma web que presenta un portafolio de servicios y experiencia en el campo de la medicina y la tecnología, especialmente en el ámbito de la inteligencia artificial aplicada a la salud. El proyecto ha sido dockerizado para asegurar portabilidad y consistencia en su ejecución, independientemente del entorno donde se despliegue.

## Características

- **Framework Flask**: Utiliza Flask como backend para servir la aplicación.
- **Diseño Responsive**: Asegura que la aplicación sea visualmente atractiva y funcional en dispositivos de cualquier tamaño.
- **Integración de Bootstrap**: Usa Bootstrap para mejorar la experiencia del usuario (UX) y lograr un diseño moderno y accesible.
- **Docker**: La aplicación ha sido dockerizada para facilitar su despliegue en cualquier entorno con soporte para contenedores Docker.
- **Formulario de Contacto**: Permite a los usuarios enviar mensajes de contacto.
- **Sección de Proyectos Destacados**: Muestra proyectos clave en los que se ha trabajado, con navegación entre las diferentes secciones.

## Estructura de Archivos

```bash
flask-web-app/
│
├── Dockerfile                  # Define la imagen Docker para la aplicación Flask
├── app.py                      # Archivo principal de la aplicación Flask
├── requirements.txt            # Dependencias necesarias para el proyecto
├── templates/
│   ├── base.html               # Plantilla base HTML que otras páginas extienden
│   ├── index.html              # Página principal de la aplicación
├── static/
│   ├── styles.css              # Estilos CSS personalizados
├── .dockerignore               # Archivos que Docker debe ignorar al construir la imagen
└── README.md                   # Este archivo de documentación
```

## Requisitos Previos

Para poder correr este proyecto necesitarás tener instalados los siguientes programas:

- **Docker**: Asegúrate de tener Docker instalado. Puedes verificar la instalación con:
  ```bash
  docker --version
  ```
  
- **Python 3.x**: Aunque la aplicación está dockerizada, si deseas correrla fuera de un contenedor, necesitarás Python instalado.

## Instalación Local sin Docker

Si prefieres ejecutar la aplicación en tu máquina local sin Docker, sigue estos pasos:

1. Clona este repositorio en tu máquina local:
    ```bash
    git clone https://github.com/DiegoLerma/flask-bootstrap.git
    cd flask-bootstrap
    ```

2. Instala las dependencias requeridas:
    ```bash
    pip install -r requirements.txt
    ```

3. Inicia la aplicación:
    ```bash
    python app.py
    ```

4. Visita `http://127.0.0.1:5000` en tu navegador para ver la aplicación.

## Instalación con Docker

### Construcción de la Imagen

1. Clona este repositorio en tu máquina local:
    ```bash
    git clone https://github.com/DiegoLerma/flask-bootstrap.git
    cd flask-web-app
    ```

2. Construye la imagen Docker:
    ```bash
    docker build -t flask-app:1.0.1 .
    ```

### Ejecutar el Contenedor

3. Una vez que la imagen esté construida, ejecuta el contenedor:
    ```bash
    docker run -d -p 5000:5000 flask-app:1.0.1
    ```

4. Abre `http://localhost:5000` en tu navegador para ver la aplicación en funcionamiento.

### Detener y Eliminar el Contenedor

- Para **detener** el contenedor en ejecución:
  ```bash
  docker stop <container_id>
  ```

- Para **eliminar** el contenedor detenido:
  ```bash
  docker rm <container_id>
  ```

- Para **eliminar la imagen**:
  ```bash
  docker rmi flask-app:1.0.1
  ```

## Importancia de Dockerizar Aplicaciones

**Docker** es una herramienta poderosa para la contenedorización de aplicaciones. Aquí algunas de las razones por las cuales es recomendable dockerizar proyectos:

### 1. **Portabilidad**
   - Docker asegura que la aplicación corra de manera consistente en cualquier entorno, ya sea en una máquina local, en un servidor de producción o en la nube. Al encapsular todas las dependencias y configuraciones dentro de un contenedor, no importa el sistema operativo o las versiones de las bibliotecas instaladas en el host.

### 2. **Aislamiento de Dependencias**
   - Cada aplicación puede tener su propio entorno de dependencias, lo que elimina conflictos entre versiones de bibliotecas o herramientas que puedan surgir al ejecutar múltiples proyectos en una misma máquina.

### 3. **Consistencia entre Entornos**
   - Al usar contenedores, las diferencias entre los entornos de desarrollo, pruebas y producción se minimizan, lo que reduce los errores relacionados con "funciona en mi máquina, pero no en el servidor".

### 4. **Escalabilidad**
   - Docker permite escalar aplicaciones fácilmente creando múltiples instancias de contenedores y gestionándolos de manera sencilla. Esto es especialmente útil en entornos de microservicios y despliegues en la nube.

### 5. **Automatización del Despliegue**
   - Docker facilita la integración con herramientas de automatización de despliegue, como Jenkins, CircleCI o GitLab CI/CD, lo que permite hacer implementaciones rápidas y confiables.

### 6. **Eficiencia de Recursos**
   - Los contenedores son ligeros en comparación con las máquinas virtuales, lo que los hace más eficientes en términos de uso de recursos. Docker comparte el kernel del host, lo que ahorra espacio y mejora el rendimiento.

### 7. **Facilidad para Versionar y Compartir Imágenes**
   - Las imágenes de Docker se pueden versionar y compartir fácilmente a través de registros como Docker Hub o registros privados. Esto facilita el trabajo en equipo y el despliegue de versiones específicas de la aplicación.

---

## Buenas Prácticas en Dockerización

1. **Usar imágenes base ligeras**:
   - Utiliza imágenes como `python-slim` o `alpine` para reducir el tamaño de tus contenedores.

2. **Multi-stage builds**:
   - Si tu proyecto necesita compilarse o construirse, usa **multi-stage builds** para tener un proceso de construcción separado y mantener el contenedor final lo más liviano posible.

3. **Evitar el uso de `latest` en producción**:
   - Es mejor usar etiquetas con versiones específicas para tener un mayor control sobre las versiones desplegadas.

4. **Usar archivos `.dockerignore`**:
   - Excluye archivos innecesarios que no deben copiarse al contenedor (como carpetas `node_modules`, `.git`, o archivos `.log`) para reducir el tamaño de la imagen.

---

## Contribución

Si deseas contribuir a este proyecto, siéntete libre de hacer un fork, crear una rama con tu mejora y luego enviar un Pull Request.

---

## Licencia

Este proyecto está bajo la Licencia MIT, por lo que puedes usarlo, modificarlo y distribuirlo libremente bajo los términos de dicha licencia.

---

**Desarrollado por**: Diego Cesar Lerma Torres