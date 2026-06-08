# MIGO Backend
(No Actualizado. Ver /config/modulos_api.sql para ver la info más reciente)

Backend académico desarrollado con **Oracle Autonomous Database** y **Oracle REST Data Services (ORDS)**.  
Este proyecto implementa un **API REST** para la gestión de usuarios, colonias, publicaciones y fotos, incluyendo operaciones CRUD y un servicio de login funcional.

## Tecnologías utilizadas
- Oracle Autonomous Database
- Oracle REST Data Services (ORDS)
- SQL (definición de tablas y consultas)
- JSON (formato de intercambio de datos)

## Endpoints principales

### Usuarios
- `GET /usuarios/` → Lista todos los usuarios
- `GET /usuarios/:id` → Obtiene un usuario específico
- `POST /usuarios/` → Crea un nuevo usuario
- `PUT /usuarios/:id` → Actualiza un usuario existente
- `DELETE /usuarios/:id` → Elimina un usuario

### Colonias
- `GET /colonias/` → Lista todas las colonias
- `GET /colonias/:id` → Obtiene una colonia específica
- `POST /colonias/` → Crea una nueva colonia

### Publicaciones
- `GET /publicaciones/` → Lista todas las publicaciones
- `GET /publicaciones/:id` → Obtiene una publicación específica
- `POST /publicaciones/` → Crea una nueva publicación
- `PUT /publicaciones/:id` → Actualiza una publicación existente
- `DELETE /publicaciones/:id` → Elimina una publicación

### Fotos de Publicaciones
- `GET /publicaciones/:id/fotos` → Lista todas las fotos de una publicación
- `POST /publicaciones/:id/fotos` → Sube una nueva foto asociada a una publicación
- `GET /fotos/:id` → Obtiene detalle de una foto específica
- `DELETE /fotos/:id` → Elimina una foto

### Catálogos
- `GET /especies/` → Lista todas las especies
- `POST /especies/` → Crea una nueva especie
- `GET /tipos_publi/` → Lista todos los tipos de publicación
- `POST /tipos_publi/` → Crea un nuevo tipo de publicación
- `GET /estados_publi/` → Lista todos los estados de publicación
- `POST /estados_publi/` → Crea un nuevo estado de publicación

### Login
- `POST /login/`  

## Documentación
- Scripts SQL para creación de tablas y datos de prueba en `/sql`
- Colección de Postman para pruebas en `/docs`