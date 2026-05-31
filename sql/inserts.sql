-- Insertar colonias de prueba
INSERT INTO colonias (nombre_colonia) VALUES ('Centro');
INSERT INTO colonias (nombre_colonia) VALUES ('Ejido');
INSERT INTO colonias (nombre_colonia) VALUES ('Colosio');
INSERT INTO colonias (nombre_colonia) VALUES ('Villamar');
INSERT INTO colonias (nombre_colonia) VALUES ('Nueva Esperanza');

-- Insertar usuarios de prueba
INSERT INTO usuarios (nombre, apellido, correo, contrasena, telefono, direccion, id_colonia, rol, estado_cuenta)
VALUES ('Bryan', 'Martinez', 'bryan@example.com', 'ClaveSegura123', '9999999999', 'Av. Principal #123', 1, 'ciudadano', 'activo');

INSERT INTO usuarios (nombre, apellido, correo, contrasena, telefono, direccion, id_colonia, rol, estado_cuenta)
VALUES ('Ana', 'Lopez', 'ana@example.com', 'ClaveSegura456', '8888888888', 'Calle Secundaria #45', 2, 'admin', 'activo');

INSERT INTO usuarios (nombre, apellido, correo, contrasena, telefono, direccion, id_colonia, rol, estado_cuenta)
VALUES ('Carlos', 'Perez', 'carlos@example.com', 'ClaveSegura789', '7777777777', 'Colonia Norte #67', 3, 'ciudadano', 'pendiente');

INSERT INTO usuarios (nombre, apellido, correo, contrasena, telefono, direccion, id_colonia, rol, estado_cuenta)
VALUES ('Maria', 'Gomez', 'maria@example.com', 'ClaveSegura321', '6666666666', 'Av. Sur #89', 4, 'ciudadano', 'activo');

INSERT INTO usuarios (nombre, apellido, correo, contrasena, telefono, direccion, id_colonia, rol, estado_cuenta)
VALUES ('Luis', 'Ramirez', 'luis@example.com', 'ClaveSegura654', '5555555555', 'Calle Este #12', 5, 'admin', 'rechazado');
