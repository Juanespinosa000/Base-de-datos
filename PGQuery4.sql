-- Database: bd1

-- DROP DATABASE IF EXISTS bd1;

CREATE DATABASE bd1
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es-ES'
    LC_CTYPE = 'es-ES'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

	-- Condiciones NOT NULL
-- Tabla tipo_proyecto
ALTER TABLE tipo_proyecto ALTER COLUMN cod_tipo_proyecto SET NOT NULL;
ALTER TABLE tipo_proyecto ALTER COLUMN tipo_proyecto SET NOT NULL;

-- Tabla proyecto
ALTER TABLE proyecto ALTER COLUMN cod_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN titulo_del_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN objetivo_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN orientacion_del_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN cod_tipo_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN fecha_inicio_proyecto SET NOT NULL;
ALTER TABLE proyecto ALTER COLUMN fecha_fin_proyecto SET NOT NULL;

-- Tabla rol
ALTER TABLE rol ALTER COLUMN cod_rol SET NOT NULL;
ALTER TABLE rol ALTER COLUMN nombre_rol SET NOT NULL;

-- Validaciones CHECK
ALTER TABLE tipo_proyecto ADD CONSTRAINT chk_tipo_proyecto 
CHECK (tipo_proyecto IN ('PA', 'PIA', 'PE'));

-- Valores por defecto
ALTER TABLE proyecto ALTER COLUMN fecha_inicio_proyecto SET DEFAULT EXTRACT(YEAR FROM CURRENT_DATE);
ALTER TABLE proyecto ALTER COLUMN fecha_fin_proyecto SET DEFAULT EXTRACT(YEAR FROM CURRENT_DATE) + 1;
