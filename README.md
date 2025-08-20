ForoHub - API REST para Foro de Discusión
📋 Descripción
ForoHub es una API REST desarrollada con Java y Spring Boot que simula el funcionamiento de un foro de discusión. Permite a los usuarios crear, listar, actualizar y eliminar tópicos de conversación, implementando un sistema de autenticación mediante JWT (JSON Web Tokens).
✨ Funcionalidades
Características Principales

Gestión de Tópicos: Crear, listar, actualizar y eliminar tópicos
Autenticación JWT: Sistema seguro de autenticación con tokens
Gestión de Usuarios: Registro y validación de usuarios
Base de Datos: Persistencia de datos con MySQL
Validaciones: Validación de datos de entrada
Documentación: Endpoints documentados y probados

Endpoints Principales

GET /topicos - Listar todos los tópicos
POST /topicos - Crear un nuevo tópico (requiere autenticación)
GET /topicos/{id} - Obtener un tópico específico
PUT /topicos/{id} - Actualizar un tópico (requiere autenticación)
DELETE /topicos/{id} - Eliminar un tópico (requiere autenticación)
POST /auth/login - Autenticación de usuario

🛠️ Tecnologías Utilizadas

Java 17+
Spring Boot 3.x
Spring Security (JWT Authentication)
Spring Data JPA
MySQL 8+
Maven
Flyway (Migraciones de BD)
Bean Validation
Lombok

📋 Requisitos Previos

Java JDK 17 o superior
Maven 4+
MySQL 8+
IDE (IntelliJ IDEA recomendado)
Git

🚀 Instalación y Configuración
1. Clonar el repositorio
bashgit clone https://github.com/tu-usuario/forohub.git
cd forohub
2. Configurar la base de datos
Crear una base de datos en MySQL:
sqlCREATE DATABASE forohub;
3. Configurar application.properties
properties# Configuración de la base de datos
spring.datasource.url=jdbc:mysql://localhost:3306/forohub
spring.datasource.username=tu_usuario
spring.datasource.password=tu_contraseña
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# Configuración JPA/Hibernate
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

# Configuración Flyway
spring.flyway.url=jdbc:mysql://localhost:3306/forohub
spring.flyway.user=tu_usuario
spring.flyway.password=tu_contraseña

# JWT Configuration
api.security.token.secret=${JWT_SECRET:mi-clave-secreta}
4. Ejecutar la aplicación
bashmvn spring-boot:run
La aplicación estará disponible en http://localhost:8080
📱 Uso de la API
Autenticación
Para acceder a los endpoints protegidos, primero debes autenticarte:
bashPOST http://localhost:8080/auth/login
Content-Type: application/json

{
    "email": "usuario@ejemplo.com",
    "password": "contraseña"
}
Respuesta:
json{
    "jwt_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
Crear un Tópico
bashPOST http://localhost:8080/topicos
Authorization: Bearer tu_token_aqui
Content-Type: application/json

{
    "titulo": "Mi primer tópico",
    "mensaje": "Este es el contenido del tópico",
    "nombreCurso": "Java Spring Boot",
    "idUsuario": 1
}
📊 Modelo de Datos
Entidad Usuario

ID (Long)
Nombre (String)
Email (String)
Contraseña (String, encriptada)

Entidad Tópico

ID (Long)
Título (String)
Mensaje (String)
Fecha de Creación (LocalDateTime)
Status (Enum: ACTIVO, CERRADO)
Usuario (Relación Many-to-One)
Curso (String)

🔐 Seguridad

Autenticación mediante JWT
Contraseñas encriptadas con BCrypt
Validación de tokens en endpoints protegidos
Validación de entrada de datos

🧪 Testing
Para probar la API puedes usar:

Postman
Insomnia
cURL


Fork el proyecto
Crea una rama para tu feature (git checkout -b feature/AmazingFeature)
Commit tus cambios (git commit -m 'Add some AmazingFeature')
Push a la rama (git push origin feature/AmazingFeature)
Abre un Pull Request

📄 Licencia
Este proyecto está bajo la Licencia MIT - ve el archivo LICENSE.md para detalles
👤 Autor
Tu Nombre

GitHub: JRMYLLA

🙏 Agradecimientos

Alura Latam y a Oracle por el desafío
Comunidad de desarrolladores Java
Spring Boot team por la excelente documentación


⭐ ¡Si este proyecto te ha sido útil, no olvides darle una estrella en GitHub!
