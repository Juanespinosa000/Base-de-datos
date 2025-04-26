-- Add NOT NULL constraints
ALTER TABLE tipo_proyecto ALTER COLUMN COD_tipo_proyecto INT NOT NULL;
ALTER TABLE tipo_proyecto ALTER COLUMN tipo_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto ALTER COLUMN COD_proyecto INT NOT NULL;
ALTER TABLE proyecto ALTER COLUMN titulo_del_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto ALTER COLUMN objetivo_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto ALTER COLUMN orientacion_del_proyecto VARCHAR(10) NOT NULL;
ALTER TABLE proyecto ALTER COLUMN COD_tipo_proyecto INT NOT NULL;
ALTER TABLE proyecto ALTER COLUMN fecha_inicio_proyecto INT NOT NULL;
ALTER TABLE proyecto ALTER COLUMN fecha_fin_proyecto INT NOT NULL;
ALTER TABLE rol ALTER COLUMN COD_rol INT NOT NULL;
ALTER TABLE rol ALTER COLUMN nombre_rol VARCHAR(10) NOT NULL;
ALTER TABLE rol ALTER COLUMN descripcion_rol VARCHAR(10) NOT NULL;
ALTER TABLE permiso ALTER COLUMN COD_permiso INT NOT NULL;
ALTER TABLE permiso ALTER COLUMN nombre_permiso VARCHAR(10) NOT NULL;
ALTER TABLE permiso ALTER COLUMN descripcion_permiso VARCHAR(10) NOT NULL;
ALTER TABLE Usuario ALTER COLUMN COD_usuario INT NOT NULL;
ALTER TABLE Usuario ALTER COLUMN Nombre_ingreso_usuario VARCHAR(10) NOT NULL;
ALTER TABLE Usuario ALTER COLUMN contraseña_usuario VARCHAR(10) NOT NULL;
ALTER TABLE Usuario ALTER COLUMN COD_rol INT NOT NULL;
ALTER TABLE programa_academico ALTER COLUMN COD_programa INT NOT NULL;
ALTER TABLE programa_academico ALTER COLUMN nombre_programa_academico VARCHAR(10) NOT NULL;
ALTER TABLE estudiante ALTER COLUMN COD_estudiante INT NOT NULL;
ALTER TABLE estudiante ALTER COLUMN nombre_1 VARCHAR(10) NOT NULL;
ALTER TABLE estudiante ALTER COLUMN apellido_1 VARCHAR(10) NOT NULL;
ALTER TABLE estudiante ALTER COLUMN telefono_1 INT NOT NULL;
ALTER TABLE estudiante ALTER COLUMN correo_electronico VARCHAR(10) NOT NULL;
ALTER TABLE estudiante ALTER COLUMN COD_programa INT NOT NULL;
ALTER TABLE estudiante ALTER COLUMN COD_Proyecto INT NOT NULL;
ALTER TABLE profesor ALTER COLUMN COD_docente INT NOT NULL;
ALTER TABLE profesor ALTER COLUMN nombre_1 VARCHAR(10) NOT NULL;
ALTER TABLE profesor ALTER COLUMN apellido_1 VARCHAR(10) NOT NULL;
ALTER TABLE profesor ALTER COLUMN telefono_1 INT NOT NULL;
ALTER TABLE profesor ALTER COLUMN correo_electronico VARCHAR(10) NOT NULL;
ALTER TABLE profesor ALTER COLUMN institucion_docente VARCHAR(10) NOT NULL;
ALTER TABLE profesor ALTER COLUMN departamento_docente VARCHAR(10) NOT NULL;
ALTER TABLE profesor ALTER COLUMN facultad_docente VARCHAR(10) NOT NULL;
ALTER TABLE proyecto_docente ALTER COLUMN COD_proyecto INT NOT NULL;
ALTER TABLE proyecto_docente ALTER COLUMN COD_docente INT NOT NULL;
ALTER TABLE invitado ALTER COLUMN COD_invitado INT NOT NULL;
ALTER TABLE invitado ALTER COLUMN nombre_1 VARCHAR(10) NOT NULL;
ALTER TABLE invitado ALTER COLUMN apellido_1 VARCHAR(10) NOT NULL;
ALTER TABLE invitado ALTER COLUMN telefono_1 INT NOT NULL;
ALTER TABLE invitado ALTER COLUMN correo_electronico VARCHAR(10) NOT NULL;
ALTER TABLE invitado ALTER COLUMN institucion VARCHAR(10) NOT NULL;
ALTER TABLE asignatura ALTER COLUMN COD_asignatura INT NOT NULL;
ALTER TABLE asignatura ALTER COLUMN nombre_asignatura VARCHAR(10) NOT NULL;
ALTER TABLE asignatura ALTER COLUMN departamento_asignatura VARCHAR(10) NOT NULL;
ALTER TABLE asignatura ALTER COLUMN facultad_asignatura VARCHAR(10) NOT NULL;
ALTER TABLE asignatura ALTER COLUMN creditos_asignatura INT NOT NULL;
ALTER TABLE programa_academico_asignatura ALTER COLUMN COD_asignatura INT NOT NULL;
ALTER TABLE programa_academico_asignatura ALTER COLUMN COD_programa INT NOT NULL;
ALTER TABLE proyecto_asignatura ALTER COLUMN COD_asignatura INT NOT NULL;
ALTER TABLE proyecto_asignatura ALTER COLUMN COD_proyecto INT NOT NULL;
ALTER TABLE era ALTER COLUMN COD_ERA INT NOT NULL;
ALTER TABLE era ALTER COLUMN numero_ERA INT NOT NULL;
ALTER TABLE era ALTER COLUMN descripcion_ERA VARCHAR(10) NOT NULL;
ALTER TABLE proyecto_era ALTER COLUMN COD_ERA INT NOT NULL;
ALTER TABLE proyecto_era ALTER COLUMN COD_proyecto INT NOT NULL;
ALTER TABLE ira ALTER COLUMN COD_IRA INT NOT NULL;
ALTER TABLE ira ALTER COLUMN descripcion_IRA VARCHAR(10) NOT NULL;
ALTER TABLE ira ALTER COLUMN nivel_dominio_IRA VARCHAR(10) NOT NULL;
ALTER TABLE ira ALTER COLUMN COD_ERA INT NOT NULL;
ALTER TABLE entregable ALTER COLUMN COD_entregable INT NOT NULL;
ALTER TABLE entregable ALTER COLUMN nombre_entregable VARCHAR(10) NOT NULL;
ALTER TABLE entregable ALTER COLUMN descripcion_entregable VARCHAR(10) NOT NULL;
ALTER TABLE entregable ALTER COLUMN COD_proyecto INT NOT NULL;
ALTER TABLE tipo_entregable ALTER COLUMN COD_tipoentregable INT NOT NULL;
ALTER TABLE tipo_entregable ALTER COLUMN nombre_tipo_entregable VARCHAR(10) NOT NULL;
ALTER TABLE tipo_entregable ALTER COLUMN descripcion_tipo_entregable VARCHAR(10) NOT NULL;
ALTER TABLE entregable_tipo_entregable ALTER COLUMN COD_entregable INT NOT NULL;
ALTER TABLE entregable_tipo_entregable ALTER COLUMN COD_tipoentregable INT NOT NULL;
ALTER TABLE evalucion ALTER COLUMN COD_evaluacion INT NOT NULL;
ALTER TABLE evalucion ALTER COLUMN descripcion_evaluacion VARCHAR(10) NOT NULL;
ALTER TABLE evalucion ALTER COLUMN ponderacion_evaluacion INT NOT NULL;
ALTER TABLE REP_Resultado_Esperado_De_Proyecto ALTER COLUMN COD_REP INT NOT NULL;
ALTER TABLE REP_Resultado_Esperado_De_Proyecto ALTER COLUMN Descripcion VARCHAR(10) NOT NULL;
ALTER TABLE REP_Resultado_Esperado_De_Proyecto ALTER COLUMN COD_proyecto INT NOT NULL;

-- Add CHECK constraints
ALTER TABLE tipo_proyecto ADD CONSTRAINT CHK_tipo_proyecto 
CHECK (tipo_proyecto IN ('PA', 'PIA', 'PE'));
ALTER TABLE rol_permiso ADD CONSTRAINT CHK_rol_permiso_COD_permisos 
CHECK (COD_permisos IN ('lectura', 'escritura', 'edicion', 'eliminacion'));
ALTER TABLE ira ADD CONSTRAINT CHK_ira_nivel_dominio 
CHECK (nivel_dominio_IRA IN ('bajo', 'medio', 'alto'));
ALTER TABLE evalucion ADD CONSTRAINT CHK_evalucion_ponderacion 
CHECK (ponderacion_evaluacion BETWEEN 0 AND 100);

-- Add DEFAULT constraints
ALTER TABLE proyecto ADD CONSTRAINT DF_proyecto_fecha_inicio 
DEFAULT YEAR(GETDATE()) FOR fecha_inicio_proyecto;
ALTER TABLE proyecto ADD CONSTRAINT DF_proyecto_fecha_fin 
DEFAULT (YEAR(GETDATE()) + 1) FOR fecha_fin_proyecto;
ALTER TABLE Usuario ADD CONSTRAINT DF_Usuario_fecha_creacion 
DEFAULT GETDATE() FOR fecha_creacion;
ALTER TABLE estudiante ADD CONSTRAINT DF_estudiante_fecha_registro 
DEFAULT GETDATE() FOR fecha_registro;
ALTER TABLE profesor ADD CONSTRAINT DF_profesor_fecha_ingreso 
DEFAULT GETDATE() FOR fecha_ingreso;
ALTER TABLE invitado ADD CONSTRAINT DF_invitado_fecha_registro 
DEFAULT GETDATE() FOR fecha_registro;