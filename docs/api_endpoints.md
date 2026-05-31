# Documentación de Endpoints - MIGO Backend

Base URL:  
`https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/`

---

## 🔹 Usuarios
- **GET** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/`  
- **GET** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/{id}`  
- **POST** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/`  
- **PUT** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/{id}`  
- **DELETE** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/{id}`  

---

## 🔹 Colonias
- **GET** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/colonias/`  
- **GET** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/colonias/{id}`  

---

## 🔹 Login
- **POST** → `https://ga6f1d821261f2a-migodb.adb.mx-queretaro-1.oraclecloudapps.com/ords/migo_user/usuarios/login/`  

**Body ejemplo:**
```json
{
  "correo": "usuario@example.com",
  "contrasena": "ClaveSegura123"
}
```

**Respuesta exitosa:**
```json
{
  "status": "success",
  "id_usuario": 1,
  "nombre": "Bryan",
  "rol": "ciudadano",
  "estado_cuenta": "activo"
}
```

**Respuesta error:**
```json
{
  "status": "error",
  "message": "Credenciales inválidas"
}
```

---

## 📌 Notas
- Todos los endpoints requieren **Content-Type: application/json** en el header.  
- Los IDs se pasan en la URL como parámetro (`{id}`).  
- El campo `estado_cuenta` controla el acceso en login (`activo`, `pendiente`, `rechazado`).  
```