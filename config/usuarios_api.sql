-- Módulo Usuarios API
BEGIN
  ORDS.DEFINE_MODULE(
      p_module_name    => 'usuarios_api',
      p_base_path      => '/usuarios/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED');

  -- Template raíz
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'usuarios_api',
      p_pattern        => '/');

  -- Handler GET (colección)
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'usuarios_api',
      p_pattern        => '/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_source         => 
'SELECT u.id_usuario,
       u.nombre,
       u.apellido,
       u.correo,
       u.telefono,
       u.direccion,
       u.rol,
       u.estado_cuenta,
       u.fecha_registro,
       c.nombre_colonia
FROM usuarios u
JOIN colonias c ON u.id_colonia = c.id_colonia');

  -- Handler POST (crear usuario)
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'usuarios_api',
      p_pattern        => '/',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_source         => 
'BEGIN
  INSERT INTO usuarios (
    nombre, apellido, correo, contrasena, telefono, direccion,
    id_colonia, rol, estado_cuenta
  )
  VALUES (
    :nombre, :apellido, :correo, :contrasena, :telefono, :direccion,
    :id_colonia, :rol, :estado_cuenta
  );
  htp.p(''{ "status": "success", "message": "Usuario creado correctamente" }'');
EXCEPTION
  WHEN OTHERS THEN
    htp.p(''{ "status": "error", "message": "'' || SQLERRM || ''" }'');
END;');

  -- Template por ID
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'usuarios_api',
      p_pattern        => ':id');

  -- Handlers GET, PUT, DELETE por ID
  -- (igual que en tu exportación original)

  -- Template login
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'usuarios_api',
      p_pattern        => 'login');

  -- Handler POST login
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'usuarios_api',
      p_pattern        => 'login',
      p_method         => 'POST',
      p_source_type    => 'plsql/block',
      p_source         => 
'DECLARE
  v_id_usuario   usuarios.id_usuario%TYPE;
  v_nombre       usuarios.nombre%TYPE;
  v_rol          usuarios.rol%TYPE;
  v_estado       usuarios.estado_cuenta%TYPE;
BEGIN
  SELECT id_usuario, nombre, rol, estado_cuenta
  INTO v_id_usuario, v_nombre, v_rol, v_estado
  FROM usuarios
  WHERE correo = :correo
    AND contrasena = :contrasena;

  IF v_estado = ''activo'' THEN
    htp.p(''{ "status": "success",
             "id_usuario": '' || v_id_usuario || '',
             "nombre": "'' || v_nombre || ''",
             "rol": "'' || v_rol || ''",
             "estado_cuenta": "'' || v_estado || ''" }'');
  ELSE
    htp.p(''{ "status": "error",
             "message": "Tu cuenta está en estado '' || v_estado || ''" }'');
  END IF;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    htp.p(''{ "status": "error", "message": "Credenciales inválidas" }'');
END;');
END;
/
