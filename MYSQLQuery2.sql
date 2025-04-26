CREATE TABLE tipo_proyecto (
    cod_tipo_proyecto INT(4),
    tipo_proyecto VARCHAR(10)
);

CREATE TABLE proyecto (
    cod_proyecto INT(4),
    titulo_del_proyecto VARCHAR(10),
    objetivo_proyecto VARCHAR(10),
    orientacion_del_proyecto VARCHAR(10),
    cod_tipo_proyecto INT(4),
    fecha_inicio_proyecto INT(4),
    fecha_fin_proyecto INT(4)
);

CREATE TABLE rol (
    cod_rol INT(4),
    nombre_rol VARCHAR(10),
    descripcion_rol VARCHAR(10)
);

CREATE TABLE permiso (
    cod_permiso INT(4),
    nombre_permiso VARCHAR(10),
    descripcion_permiso VARCHAR(10)
);

CREATE TABLE rol_permiso (
    cod_permisos VARCHAR(10),
    cod_permiso INT(4)
);

CREATE TABLE usuario (
    cod_usuario INT(4),
    nombre_ingreso_usuario VARCHAR(10),
    contraseña_usuario VARCHAR(10),
    correo_electronico VARCHAR(10),
    cod_rol VARCHAR(10)
);

CREATE TABLE rol_usuario (
    cod_rol INT(4),
    cod_usuario INT(4)
);

CREATE TABLE programa_academico (
    cod_programa INT(4),
    nombre_programa_academico VARCHAR(10)
);

CREATE TABLE estudiante (
    cod_estudiante INT(4),
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT(4),
    telefono_2 INT(4),
    correo_electronico VARCHAR(10),
    cod_programa INT(4),
    cod_proyecto INT(4)
);

CREATE TABLE profesor (
    cod_docente INT(4),
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT(4),
    telefono_2 INT(4),
    correo_electronico VARCHAR(10),
    institucion_docente VARCHAR(10),
    departamento_docente VARCHAR(10),
    facultad_docente VARCHAR(10)
);

CREATE TABLE proyecto_docente (
    cod_proyecto INT(4),
    cod_docente INT(4)
);

CREATE TABLE invitado (
    cod_invitado INT(4),
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT(4),
    telefono_2 INT(4),
    correo_electronico VARCHAR(10),
    institucion VARCHAR(10),
    departamento VARCHAR(10),
    facultad VARCHAR(10)
);

CREATE TABLE asignatura (
    cod_asignatura INT(4),
    nombre_asignatura VARCHAR(10),
    departamento_asignatura VARCHAR(10),
    facultad_asignatura VARCHAR(10),
    creditos_asignatura INT(4)
);

CREATE TABLE programa_academico_asignatura (
    cod_asignatura INT(4),
    cod_programa INT(4)
);

CREATE TABLE proyecto_asignatura (
    cod_asignatura INT(4),
    cod_proyecto INT(4)
);

CREATE TABLE era (
    cod_era INT(4),
    numero_era INT(4),
    descripcion_era VARCHAR(10)
);

CREATE TABLE proyecto_era (
    cod_era INT(4),
    cod_proyecto INT(4)
);

CREATE TABLE ira (
    cod_ira INT(4),
    descripcion_ira VARCHAR(10),
    nivel_dominio_ira VARCHAR(10),
    cod_era INT(4)
);

CREATE TABLE entregable (
    cod_entregable INT(4),
    nombre_entregable VARCHAR(10),
    descripcion_entregable VARCHAR(10),
    cod_proyecto INT(4)
);

CREATE TABLE tipo_entregable (
    cod_tipoentregable INT(4),
    nombre_tipo_entregable VARCHAR(10),
    descripcion_tipo_entregable VARCHAR(10)
);

CREATE TABLE entregable_tipo_entregable (
    cod_entregable INT(4),
    cod_tipoentregable INT(4)
);

CREATE TABLE evaluacion (
    cod_evaluacion INT(4),
    descripcion_evaluacion VARCHAR(10),
    ponderacion_evaluacion INT(4)
);

CREATE TABLE rep_resultado_esperado_de_proyecto (
    cod_rep INT(4),
    descripcion VARCHAR(10),
    cod_proyecto INT(4)
);

