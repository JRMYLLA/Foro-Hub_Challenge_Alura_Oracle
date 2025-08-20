-- Crear tabla de tópicos
CREATE TABLE topicos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVO',
    autor_id BIGINT NOT NULL,
    curso_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id),

    -- Constraint para evitar tópicos duplicados (mismo título y mensaje)
    UNIQUE KEY unique_topico (titulo, mensaje),

    -- Foreign keys
    FOREIGN KEY (autor_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE,

    -- Índices para mejorar performance
    INDEX idx_status (status),
    INDEX idx_fecha_creacion (fecha_creacion),
    INDEX idx_autor (autor_id),
    INDEX idx_curso (curso_id)
);

-- Insertar algunos tópicos de ejemplo
INSERT INTO topicos (titulo, mensaje, autor_id, curso_id, status) VALUES
('¿Cómo configurar Spring Security?', 'Tengo dudas sobre cómo implementar autenticación con JWT en Spring Boot', 1, 1, 'ACTIVO'),
('Error con @Autowired', 'Me aparece un error al intentar inyectar dependencias, ¿alguien puede ayudarme?', 1, 1, 'ACTIVO'),
('Mejores prácticas con React Hooks', '¿Cuáles son las mejores prácticas para usar hooks en React?', 1, 2, 'ACTIVO');