-- Tabla Colonias
CREATE TABLE colonias (
  id_colonia NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre_colonia VARCHAR2(100) NOT NULL
);

-- Tabla Usuarios
CREATE TABLE usuarios (
  id_usuario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  nombre VARCHAR2(100) NOT NULL,
  apellido VARCHAR2(100) NOT NULL,
  correo VARCHAR2(150) UNIQUE NOT NULL,
  contrasena VARCHAR2(200) NOT NULL,
  telefono VARCHAR2(20),
  direccion VARCHAR2(200),
  id_colonia NUMBER,
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  rol VARCHAR2(50),
  estado_cuenta VARCHAR2(50),
  CONSTRAINT fk_usuarios_colonias FOREIGN KEY (id_colonia)
    REFERENCES colonias(id_colonia)
);
