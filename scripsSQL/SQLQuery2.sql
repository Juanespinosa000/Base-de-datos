-- Create tables without constraints
CREATE TABLE tipo_proyecto (
    COD_tipo_proyecto INT,
    tipo_proyecto VARCHAR(10)
);

CREATE TABLE proyecto (
    COD_proyecto INT,
    titulo_del_proyecto VARCHAR(10),
    objetivo_proyecto VARCHAR(10),
    orientacion_del_proyecto VARCHAR(10),
    COD_tipo_proyecto INT,
    fecha_inicio_proyecto INT,
    fecha_fin_proyecto INT
);

CREATE TABLE rol (
    COD_rol INT,
    nombre_rol VARCHAR(10),
    descripcion_rol VARCHAR(10)
);

CREATE TABLE permiso (
    COD_permiso INT,
    nombre_permiso VARCHAR(10),
    descripcion_permiso VARCHAR(10)
);

CREATE TABLE rol_permiso (
    COD_permisos VARCHAR(10),
    COD_permiso INT
);

CREATE TABLE Usuario (
    COD_usuario INT,
    Nombre_ingreso_usuario VARCHAR(10),
    contraseña_usuario VARCHAR(10),
    correo_electronico VARCHAR(10),
    COD_rol INT
);

CREATE TABLE rol_usuario (
    COD_rol INT,
    COD_usuario INT
);

CREATE TABLE programa_academico (
    COD_programa INT,
    nombre_programa_academico VARCHAR(10)
);

CREATE TABLE estudiante (
    COD_estudiante INT,
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT,
    telefono_2 INT,
    correo_electronico VARCHAR(10),
    COD_programa INT,
    COD_Proyecto INT
);

CREATE TABLE profesor (
    COD_docente INT,
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT,
    telefono_2 INT,
    correo_electronico VARCHAR(10),
    institucion_docente VARCHAR(10),
    departamento_docente VARCHAR(10),
    facultad_docente VARCHAR(10)
);

CREATE TABLE proyecto_docente (
    COD_proyecto INT,
    COD_docente INT
);

CREATE TABLE invitado (
    COD_invitado INT,
    nombre_1 VARCHAR(10),
    nombre_2 VARCHAR(10),
    apellido_1 VARCHAR(10),
    apellido_2 VARCHAR(10),
    telefono_1 INT,
    telefono_2 INT,
    correo_electronico VARCHAR(10),
    institucion VARCHAR(10),
    departamento VARCHAR(10),
    facultad VARCHAR(10)
);

CREATE TABLE asignatura (
    COD_asignatura INT,
    nombre_asignatura VARCHAR(10),
    departamento_asignatura VARCHAR(10),
    facultad_asignatura VARCHAR(10),
    creditos_asignatura INT
);

CREATE TABLE programa_academico_asignatura (
    COD_asignatura INT,
    COD_programa INT
);

CREATE TABLE proyecto_asignatura (
    COD_asignatura INT,
    COD_proyecto INT
);

CREATE TABLE era (
    COD_ERA INT,
    numero_ERA INT,
    descripcion_ERA VARCHAR(10)
);

CREATE TABLE proyecto_era (
    COD_ERA INT,
    COD_proyecto INT
);

CREATE TABLE ira (
    COD_IRA INT,
    descripcion_IRA VARCHAR(10),
    nivel_dominio_IRA VARCHAR(10),
    COD_ERA INT
);

CREATE TABLE entregable (
    COD_entregable INT,
    nombre_entregable VARCHAR(10),
    descripcion_entregable VARCHAR(10),
    COD_proyecto INT
);

CREATE TABLE tipo_entregable (
    COD_tipoentregable INT,
    nombre_tipo_entregable VARCHAR(10),
    descripcion_tipo_entregable VARCHAR(10)
);

CREATE TABLE entregable_tipo_entregable (
    COD_entregable INT,
    COD_tipoentregable INT
);

CREATE TABLE evalucion (
    COD_evaluacion INT,
    descripcion_evaluacion VARCHAR(10),
    ponderacion_evaluacion INT
);

CREATE TABLE REP_Resultado_Esperado_De_Proyecto (
    COD_REP INT,
    Descripcion VARCHAR(10),
    COD_proyecto INT
);
