-- Crear tabla de usuarios
CREATE TABLE usuarios (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(300) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (id)
);

-- Insertar usuario de prueba (la contraseña es "123456" encriptada con BCrypt)
INSERT INTO usuarios (nombre, email, password) VALUES
('Usuario Demo', 'usuario@demo.com', '$2a$10$Y50UaMFOxteibQEYLrwuAOjTWJ9BnhIRNyFdpb9tbdYKsHp5.zr2S');