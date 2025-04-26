-- Add Primary Keys
ALTER TABLE tipo_proyecto ADD CONSTRAINT PK_tipo_proyecto PRIMARY KEY (COD_tipo_proyecto);
ALTER TABLE proyecto ADD CONSTRAINT PK_proyecto PRIMARY KEY (COD_proyecto);
ALTER TABLE rol ADD CONSTRAINT PK_rol PRIMARY KEY (COD_rol);
ALTER TABLE permiso ADD CONSTRAINT PK_permiso PRIMARY KEY (COD_permiso);
ALTER TABLE Usuario ADD CONSTRAINT PK_Usuario PRIMARY KEY (COD_usuario);
ALTER TABLE programa_academico ADD CONSTRAINT PK_programa_academico PRIMARY KEY (COD_programa);
ALTER TABLE estudiante ADD CONSTRAINT PK_estudiante PRIMARY KEY (COD_estudiante);
ALTER TABLE profesor ADD CONSTRAINT PK_profesor PRIMARY KEY (COD_docente);
ALTER TABLE invitado ADD CONSTRAINT PK_invitado PRIMARY KEY (COD_invitado);
ALTER TABLE asignatura ADD CONSTRAINT PK_asignatura PRIMARY KEY (COD_asignatura);
ALTER TABLE era ADD CONSTRAINT PK_era PRIMARY KEY (COD_ERA);
ALTER TABLE ira ADD CONSTRAINT PK_ira PRIMARY KEY (COD_IRA);
ALTER TABLE entregable ADD CONSTRAINT PK_entregable PRIMARY KEY (COD_entregable);
ALTER TABLE tipo_entregable ADD CONSTRAINT PK_tipo_entregable PRIMARY KEY (COD_tipoentregable);
ALTER TABLE evalucion ADD CONSTRAINT PK_evalucion PRIMARY KEY (COD_evaluacion);
ALTER TABLE REP_Resultado_Esperado_De_Proyecto ADD CONSTRAINT PK_REP PRIMARY KEY (COD_REP);

-- Add Foreign Keys
ALTER TABLE proyecto ADD CONSTRAINT FK_proyecto_tipo_proyecto FOREIGN KEY (COD_tipo_proyecto) REFERENCES tipo_proyecto(COD_tipo_proyecto);
ALTER TABLE rol_permiso ADD CONSTRAINT FK_rol_permiso_permiso FOREIGN KEY (COD_permiso) REFERENCES permiso(COD_permiso);
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_rol FOREIGN KEY (COD_rol) REFERENCES rol(COD_rol);
ALTER TABLE rol_usuario ADD CONSTRAINT FK_rol_usuario_rol FOREIGN KEY (COD_rol) REFERENCES rol(COD_rol);
ALTER TABLE rol_usuario ADD CONSTRAINT FK_rol_usuario_usuario FOREIGN KEY (COD_usuario) REFERENCES Usuario(COD_usuario);
ALTER TABLE estudiante ADD CONSTRAINT FK_estudiante_programa FOREIGN KEY (COD_programa) REFERENCES programa_academico(COD_programa);
ALTER TABLE estudiante ADD CONSTRAINT FK_estudiante_proyecto FOREIGN KEY (COD_Proyecto) REFERENCES proyecto(COD_proyecto);
ALTER TABLE proyecto_docente ADD CONSTRAINT FK_proyecto_docente_proyecto FOREIGN KEY (COD_proyecto) REFERENCES proyecto(COD_proyecto);
ALTER TABLE proyecto_docente ADD CONSTRAINT FK_proyecto_docente_profesor FOREIGN KEY (COD_docente) REFERENCES profesor(COD_docente);
ALTER TABLE programa_academico_asignatura ADD CONSTRAINT FK_paa_asignatura FOREIGN KEY (COD_asignatura) REFERENCES asignatura(COD_asignatura);
ALTER TABLE programa_academico_asignatura ADD CONSTRAINT FK_paa_programa FOREIGN KEY (COD_programa) REFERENCES programa_academico(COD_programa);
ALTER TABLE proyecto_asignatura ADD CONSTRAINT FK_pa_asignatura FOREIGN KEY (COD_asignatura) REFERENCES asignatura(COD_asignatura);
ALTER TABLE proyecto_asignatura ADD CONSTRAINT FK_pa_proyecto FOREIGN KEY (COD_proyecto) REFERENCES proyecto(COD_proyecto);
ALTER TABLE proyecto_era ADD CONSTRAINT FK_pe_era FOREIGN KEY (COD_ERA) REFERENCES era(COD_ERA);
ALTER TABLE proyecto_era ADD CONSTRAINT FK_pe_proyecto FOREIGN KEY (COD_proyecto) REFERENCES proyecto(COD_proyecto);
ALTER TABLE ira ADD CONSTRAINT FK_ira_era FOREIGN KEY (COD_ERA) REFERENCES era(COD_ERA);
ALTER TABLE entregable ADD CONSTRAINT FK_entregable_proyecto FOREIGN KEY (COD_proyecto) REFERENCES proyecto(COD_proyecto);
ALTER TABLE entregable_tipo_entregable ADD CONSTRAINT FK_ete_entregable FOREIGN KEY (COD_entregable) REFERENCES entregable(COD_entregable);
ALTER TABLE entregable_tipo_entregable ADD CONSTRAINT FK_ete_tipo_entregable FOREIGN KEY (COD_tipoentregable) REFERENCES tipo_entregable(COD_tipoentregable);
ALTER TABLE REP_Resultado_Esperado_De_Proyecto ADD CONSTRAINT FK_REP_proyecto FOREIGN KEY (COD_proyecto) REFERENCES proyecto(COD_proyecto);

-- Add Unique Keys
ALTER TABLE Usuario ADD CONSTRAINT UQ_Usuario_correo UNIQUE (correo_electronico);
ALTER TABLE estudiante ADD CONSTRAINT UQ_estudiante_correo UNIQUE (correo_electronico);
ALTER TABLE profesor ADD CONSTRAINT UQ_profesor_correo UNIQUE (correo_electronico);
ALTER TABLE invitado ADD CONSTRAINT UQ_invitado_correo UNIQUE (correo_electronico);