-- Restricciones NOT NULL
ALTER TABLE tipo_proyecto MODIFY cod_tipo_proyecto INT(4) NOT NULL;
ALTER TABLE tipo_proyecto MODIFY tipo_proyecto VARCHAR(10) NOT NULL;

ALTER TABLE proyecto MODIFY cod_proyecto INT(4) NOT NULL;
ALTER TABLE proyecto MODIFY titulo_del_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto MODIFY objetivo_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto MODIFY orientacion_del_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto MODIFY cod_tipo_proyecto INT(4) NOT NULL;
ALTER TABLE proyecto MODIFY fecha_inicio_proyecto INT(4) NOT NULL;
ALTER TABLE proyecto MODIFY fecha_fin_proyecto INT(4) NOT NULL;

ALTER TABLE rol MODIFY cod_rol INT(4) NOT NULL;
ALTER TABLE rol MODIFY nombre_rol VARCHAR(10) NOT NULL;
ALTER TABLE rol MODIFY descripcion_rol VARCHAR(10) NOT NULL;

-- Restricciones CHECK (ejemplo)
ALTER TABLE tipo_proyecto ADD CONSTRAINT chk_tipo_proyecto 
CHECK (tipo_proyecto IN ('PA', 'PIA', 'PE'));

-- Valores por defecto (ejemplo)
ALTER TABLE proyecto MODIFY fecha_inicio_proyecto INT(4) DEFAULT 0;
ALTER TABLE proyecto MODIFY fecha_fin_proyecto INT(4) DEFAULT 0;


