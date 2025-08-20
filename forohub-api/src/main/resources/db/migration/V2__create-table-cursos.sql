-- Crear tabla de cursos
CREATE TABLE cursos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(150) NOT NULL UNIQUE,
    categoria VARCHAR(50) NOT NULL,
    descripcion TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
);

-- Insertar algunos cursos de ejemplo
INSERT INTO cursos (nombre, categoria, descripcion) VALUES
('Java y Spring Boot', 'Backend', 'Curso completo de desarrollo backend con Java y Spring Boot'),
('JavaScript y React', 'Frontend', 'Desarrollo frontend moderno con JavaScript y React'),
('Python para Data Science', 'Data Science', 'Análisis de datos con Python'),
('MySQL y Bases de Datos', 'Base de Datos', 'Fundamentos de bases de datos relacionales');