--CASO 01
--NO SE CONSIDERA RELEVANTE AÑADIR UNA TABLA DE DEPARTAMENTO
--PORQUE SOLO TIENE UN ATRIBUTO (EL NOMBRE)

CREATE TABLE trabajador(
		Rut VARCHAR(25),
		Nombre VARCHAR(100) NOT NULL,
		Direccion VARCHAR(100) NOT NULL,
		Departamento VARCHAR(20) NOT NULL,
		PRIMARY KEY(Rut));

CREATE TABLE liquidacion(
		Id_liquidacion SERIAL,
		URL_liquidacion VARCHAR(100) NOT NULL,
		Rut_trabajador VARCHAR(25) NOT NULL,
		PRIMARY KEY(Id_liquidacion),
		FOREIGN KEY(Rut_trabajador) REFERENCES
		trabajador(Rut));

-------------------------------------------------------------

--CASO 2
CREATE TABLE Alumno(
		Rut VARCHAR(25),
		Nombre VARCHAR(100),
		Curso VARCHAR(20),
		PRIMARY KEY(Rut));

CREATE TABLE Profesor(
		id_profesor VARCHAR(25),
		Nombre VARCHAR (100),
		Departamento VARCHAR(20),
		PRIMARY KEY(id_profesor));

CREATE TABLE Prueba(
		id_prueba VARCHAR(25),
		Profesor_revision VARCHAR(25),
		Alumno_relacionado VARCHAR(25),
		Puntaje FLOAT,
		FOREIGN KEY(Profesor_revision) REFERENCES
		Profesor(id_profesor),
		FOREIGN KEY(Alumno_relacionado) REFERENCES
		Alumno(Rut));		




