-- Claves primarias
ALTER TABLE tipo_proyecto ADD PRIMARY KEY (cod_tipo_proyecto);
ALTER TABLE proyecto ADD PRIMARY KEY (cod_proyecto);
ALTER TABLE rol ADD PRIMARY KEY (cod_rol);
ALTER TABLE permiso ADD PRIMARY KEY (cod_permiso);
ALTER TABLE usuario ADD PRIMARY KEY (cod_usuario);
ALTER TABLE programa_academico ADD PRIMARY KEY (cod_programa);
ALTER TABLE estudiante ADD PRIMARY KEY (cod_estudiante);
ALTER TABLE profesor ADD PRIMARY KEY (cod_docente);
ALTER TABLE invitado ADD PRIMARY KEY (cod_invitado);
ALTER TABLE asignatura ADD PRIMARY KEY (cod_asignatura);
ALTER TABLE era ADD PRIMARY KEY (cod_era);
ALTER TABLE ira ADD PRIMARY KEY (cod_ira);
ALTER TABLE entregable ADD PRIMARY KEY (cod_entregable);
ALTER TABLE tipo_entregable ADD PRIMARY KEY (cod_tipoentregable);
ALTER TABLE evaluacion ADD PRIMARY KEY (cod_evaluacion);
ALTER TABLE rep_resultado_esperado_de_proyecto ADD PRIMARY KEY (cod_rep);

-- Claves foráneas
ALTER TABLE proyecto ADD FOREIGN KEY (cod_tipo_proyecto) REFERENCES tipo_proyecto(cod_tipo_proyecto);
ALTER TABLE rol_permiso ADD FOREIGN KEY (cod_permiso) REFERENCES permiso(cod_permiso);
ALTER TABLE usuario ADD FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);
ALTER TABLE rol_usuario ADD FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);
ALTER TABLE rol_usuario ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario);
ALTER TABLE estudiante ADD FOREIGN KEY (cod_programa) REFERENCES programa_academico(cod_programa);
ALTER TABLE estudiante ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);
ALTER TABLE proyecto_docente ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);
ALTER TABLE proyecto_docente ADD FOREIGN KEY (cod_docente) REFERENCES profesor(cod_docente);
ALTER TABLE programa_academico_asignatura ADD FOREIGN KEY (cod_asignatura) REFERENCES asignatura(cod_asignatura);
ALTER TABLE programa_academico_asignatura ADD FOREIGN KEY (cod_programa) REFERENCES programa_academico(cod_programa);
ALTER TABLE proyecto_asignatura ADD FOREIGN KEY (cod_asignatura) REFERENCES asignatura(cod_asignatura);
ALTER TABLE proyecto_asignatura ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);
ALTER TABLE proyecto_era ADD FOREIGN KEY (cod_era) REFERENCES era(cod_era);
ALTER TABLE proyecto_era ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);
ALTER TABLE ira ADD FOREIGN KEY (cod_era) REFERENCES era(cod_era);
ALTER TABLE entregable ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);
ALTER TABLE entregable_tipo_entregable ADD FOREIGN KEY (cod_entregable) REFERENCES entregable(cod_entregable);
ALTER TABLE entregable_tipo_entregable ADD FOREIGN KEY (cod_tipoentregable) REFERENCES tipo_entregable(cod_tipoentregable);
ALTER TABLE rep_resultado_esperado_de_proyecto ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

-- Claves únicas
ALTER TABLE usuario ADD UNIQUE (correo_electronico);
