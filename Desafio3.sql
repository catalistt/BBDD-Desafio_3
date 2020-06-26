--CASO 01
--Se considera el nombre como UN SOLO DATO, al NO ESPECIFICAR que corresponde a un atributo compuesto.
--Cada trabajador solo tiene UNA DIRECCIÓN, por lo que actua como ATRIBUTO, NO COMO ENTIDAD.

CREATE TABLE Departamento(
		Id_departamento SERIAL,
		Nombre VARCHAR(25) NOT NULL,
		PRIMARY KEY(Id_departamento));

CREATE TABLE trabajador(
		Rut VARCHAR(25),
		Nombre VARCHAR(100) NOT NULL,
		Direccion VARCHAR(100) NOT NULL,
		Departamento INT NOT NULL,
		PRIMARY KEY(Rut),
		FOREIGN KEY(Departamento) REFERENCES
		Departamento(id_departamento));

CREATE TABLE liquidacion(
		Id_liquidacion SERIAL,
		URL_liquidacion VARCHAR(100) NOT NULL,
		Rut_trabajador VARCHAR(25) NOT NULL,
		PRIMARY KEY(Id_liquidacion),
		FOREIGN KEY(Rut_trabajador) REFERENCES
		trabajador(Rut));

-------------------------------------------------------------

--CASO 2

CREATE TABLE Curso(
		id_curso SERIAL,
		Nombre_curso VARCHAR(20) NOT NULL,
		PRIMARY KEY(id_curso));
			   
CREATE TABLE Alumno(
		Rut VARCHAR(25),
		Nombre VARCHAR(100) NOT NULL,
		Curso INT NOT NULL,
		PRIMARY KEY(Rut),
		FOREIGN KEY(Curso) REFERENCES
		Curso(id_curso));

CREATE TABLE Profesor(
		id_profesor VARCHAR(25),
		Nombre VARCHAR (100) NOT NULL,
		Departamento VARCHAR(20) NOT NULL,
		PRIMARY KEY(id_profesor));

CREATE TABLE Prueba(
		id_prueba VARCHAR(25),
		Profesor_revision VARCHAR(25) NOT NULL,
		Alumno_relacionado VARCHAR(25) NOT NULL,
		Puntaje INT NOT NULL,
		FOREIGN KEY(Profesor_revision) REFERENCES
		Profesor(id_profesor),
		FOREIGN KEY(Alumno_relacionado) REFERENCES
		Alumno(Rut));		
		       




