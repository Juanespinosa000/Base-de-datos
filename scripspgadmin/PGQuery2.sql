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

	CREATE TABLE tipo_proyecto (
    cod_tipo_proyecto INTEGER,
    tipo_proyecto TEXT
);

CREATE TABLE proyecto (
    cod_proyecto INTEGER,
    titulo_del_proyecto TEXT,
    objetivo_proyecto TEXT,
    orientacion_del_proyecto TEXT,
    cod_tipo_proyecto INTEGER,
    fecha_inicio_proyecto INTEGER,
    fecha_fin_proyecto INTEGER
);

CREATE TABLE rol (
    cod_rol INTEGER,
    nombre_rol TEXT,
    descripcion_rol TEXT
);

CREATE TABLE permiso (
    cod_permiso INTEGER,
    nombre_permiso TEXT,
    descripcion_permiso TEXT
);

CREATE TABLE rol_permiso (
    cod_rol INTEGER,
    cod_permiso INTEGER
);

CREATE TABLE usuario (
    cod_usuario INTEGER,
    nombre_ingreso_usuario TEXT,
    contrasena_usuario TEXT,
    correo_electronico TEXT,
    cod_rol INTEGER
);

CREATE TABLE rol_usuario (
    cod_rol INTEGER,
    cod_usuario INTEGER
);

CREATE TABLE estudiante (
    cod_estudiante INTEGER,
    nombre_1 TEXT,
    nombre_2 TEXT,
    apellido_1 TEXT,
    apellido_2 TEXT,
    telefono_1 INTEGER,
    telefono_2 INTEGER,
    correo_electronico TEXT,
    cod_programa INTEGER,
    cod_proyecto INTEGER
);

CREATE TABLE profesor (
    cod_docente INTEGER,
    nombre_1 TEXT,
    nombre_2 TEXT,
    apellido_1 TEXT,
    apellido_2 TEXT,
    telefono_1 INTEGER,
    telefono_2 INTEGER,
    correo_electronico TEXT,
    institucion_docente TEXT,
    departamento_docente TEXT,
    facultad_docente TEXT
);

CREATE TABLE proyecto_docente (
    cod_proyecto INTEGER,
    cod_docente INTEGER
);

CREATE TABLE invitado (
    cod_invitado INTEGER,
    nombre_1 TEXT,
    nombre_2 TEXT,
    apellido_1 TEXT,
    apellido_2 TEXT,
    telefono_1 INTEGER,
    telefono_2 INTEGER,
    correo_electronico TEXT,
    institucion TEXT,
    departamento TEXT,
    facultad TEXT
);

CREATE TABLE programa_academico (
    cod_programa INTEGER,
    nombre_programa_academico TEXT
);

CREATE TABLE asignatura (
    cod_asignatura INTEGER,
    nombre_asignatura TEXT,
    departamento_asignatura TEXT,
    facultad_asignatura TEXT,
    creditos_asignatura INTEGER
);

CREATE TABLE programa_academico_asignatura (
    cod_asignatura INTEGER,
    cod_programa INTEGER
);

CREATE TABLE proyecto_asignatura (
    cod_asignatura INTEGER,
    cod_proyecto INTEGER
);

CREATE TABLE era (
    cod_era INTEGER,
    numero_era INTEGER,
    descripcion_era TEXT
);

CREATE TABLE proyecto_era (
    cod_era INTEGER,
    cod_proyecto INTEGER
);

CREATE TABLE ira (
    cod_ira INTEGER,
    descripcion_ira TEXT,
    nivel_dominio_ira TEXT,
    cod_era INTEGER
);

CREATE TABLE entregable (
    cod_entregable INTEGER,
    nombre_entregable TEXT,
    descripcion_entregable TEXT,
    cod_proyecto INTEGER
);

CREATE TABLE tipo_entregable (
    cod_tipoentregable INTEGER,
    nombre_tipo_entregable TEXT,
    descripcion_tipo_entregable TEXT
);

CREATE TABLE entregable_tipo_entregable (
    cod_entregable INTEGER,
    cod_tipoentregable INTEGER
);

CREATE TABLE evaluacion (
    cod_evaluacion INTEGER,
    descripcion_evaluacion TEXT,
    ponderacion_evaluacion INTEGER
);

CREATE TABLE rep_resultado_esperado_de_proyecto (
    cod_rep INTEGER,
    descripcion TEXT,
    cod_proyecto INTEGER
);
