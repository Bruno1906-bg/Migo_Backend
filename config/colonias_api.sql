-- Módulo Colonias API
BEGIN
  ORDS.DEFINE_MODULE(
      p_module_name    => 'colonias_api',
      p_base_path      => '/colonias/',
      p_items_per_page => 25,
      p_status         => 'PUBLISHED');

  -- Template raíz
  ORDS.DEFINE_TEMPLATE(
      p_module_name    => 'colonias_api',
      p_pattern        => '/');

  -- Handler GET (colección)
  ORDS.DEFINE_HANDLER(
      p_module_name    => 'colonias_api',
      p_pattern        => '/',
      p_method         => 'GET',
      p_source_type    => 'json/collection',
      p_source         => 
'SELECT id_colonia, nombre_colonia
FROM colonias
ORDER BY nombre_colonia');
END;
/
