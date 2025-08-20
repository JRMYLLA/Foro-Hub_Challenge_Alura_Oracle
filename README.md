# ForoHub - API REST para Foro de Discusión

## 📋 Descripción
ForoHub es una API REST desarrollada con Java y Spring Boot que simula el funcionamiento de un foro de discusión. Permite a los usuarios crear, listar, actualizar y eliminar tópicos de conversación, implementando un sistema de autenticación mediante JWT (JSON Web Tokens).

## ✨ Funcionalidades
**Características Principales**
- Gestión de Tópicos: Crear, listar, actualizar y eliminar tópicos
- Autenticación JWT: Sistema seguro de autenticación con tokens
- Gestión de Usuarios: Registro y validación de usuarios
- Base de Datos: Persistencia de datos con PostgreSQL
- Validaciones: Validación de datos de entrada
- Documentación: Endpoints documentados y probados

**Endpoints Principales**
- GET /topicos - Listar todos los tópicos
- POST /topicos - Crear un nuevo tópico (requiere autenticación)
- GET /topicos/{id} - Obtener un tópico específico
- PUT /topicos/{id} - Actualizar un tópico (requiere autenticación)
- DELETE /topicos/{id} - Eliminar un tópico (requiere autenticación)
- POST /auth/login - Autenticación de usuario

## 🛠️ Tecnologías Utilizadas
- Java 17+
- Spring Boot 3.x
- Spring Security (JWT Authentication)
- Spring Data JPA
- PostgreSQL 15+ (Base de datos relacional avanzada)
- Maven
- Flyway (Migraciones de BD)
- Bean Validation
- Lombok

## 📋 Requisitos Previos
- Java JDK 17 o superior
- Maven 4+
- PostgreSQL 15+ (Asegúrate de tenerlo instalado y configurado)
- IDE (IntelliJ IDEA recomendado)
- Git

## 🚀 Instalación y Configuración

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/tu-usuario/forohub.git
   cd forohub
   ```

2. **Configurar la base de datos PostgreSQL**
   - Inicia el servicio de PostgreSQL
   - Conéctate a PostgreSQL:
     ```bash
     psql -U postgres
     ```
   - Crea la base de datos:
     ```sql
     CREATE DATABASE forohub;
     \q
     ```

3. **Configurar application.properties**
   ```properties
   # Puerto del servidor
   server.port=8080
   
   # Configuración de la base de datos PostgreSQL
   spring.datasource.url=jdbc:postgresql://localhost:5432/forohub
   spring.datasource.username=postgres
   spring.datasource.password=tu_contraseña_postgres
   spring.datasource.driver-class-name=org.postgresql.Driver
   
   # Configuración JPA/Hibernate
   spring.jpa.hibernate.ddl-auto=update
   spring.jpa.show-sql=true
   spring.jpa.properties.hibernate.format_sql=true
   spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
   
   # Configuración Flyway (opcional)
   spring.flyway.url=jdbc:postgresql://localhost:5432/forohub
   spring.flyway.user=postgres
   spring.flyway.password=tu_contraseña_postgres
   spring.flyway.baseline-on-migrate=true
   
   # JWT Configuration
   api.security.token.secret=mi-clave-secreta-super-segura-123456789
   api.security.token.expiration=86400000
   ```

4. **Ejecutar la aplicación**
   ```bash
   mvn spring-boot:run
   ```
   La aplicación estará disponible en http://localhost:8080

## 📱 Uso de la API

**Autenticación**
Para acceder a los endpoints protegidos, primero debes autenticarte:
```bash
POST http://localhost:8080/auth/login
Content-Type: application/json

{
  "email": "usuario@ejemplo.com",
  "password": "contraseña"
}
```

**Respuesta:**
```json
{
  "jwt_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
```

**Crear un Tópico**
```bash
POST http://localhost:8080/topicos
Authorization: Bearer tu_token_aqui
Content-Type: application/json

{
  "titulo": "Mi primer tópico",
  "mensaje": "Este es el contenido del tópico",
  "nombreCurso": "Java Spring Boot",
  "idUsuario": 1
}
```

## 📊 Modelo de Datos

**Entidad Usuario**
- ID (Long)
- Nombre (String)
- Email (String)
- Contraseña (String, encriptada)

**Entidad Tópico**
- ID (Long)
- Título (String)
- Mensaje (String)
- Fecha de Creación (LocalDateTime)
- Status (Enum: NO_RESPONDIDO, NO_SOLUCIONADO, SOLUCIONADO, CERRADO)
- Usuario (Relación Many-to-One)
- Curso (Relación Many-to-One)

## 🔐 Seguridad
- Autenticación mediante JWT
- Contraseñas encriptadas con BCrypt
- Validación de tokens en endpoints protegidos
- Validación de entrada de datos

## 🧪 Testing
Para probar la API puedes usar:
- Postman
- Insomnia
- cURL

## 🤝 Contribuciones
1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia
Este proyecto está bajo la Licencia MIT - ve el archivo LICENSE.md para detalles

## 👤 Autor

GitHub: [JRMYLLA](https://github.com/JRMYLLA)

## 🙏 Agradecimientos
- Alura Latam y a Oracle por el desafío
- Comunidad de desarrolladores Java
