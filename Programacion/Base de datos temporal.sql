create database prog;
use prog;
-- Crear tabla "Personas" para almacenar choferes, almaceneros y administradores
CREATE TABLE Personas (
  id tinyint not null auto_increment,
  nombre VARCHAR(50),
  ci VARCHAR(10) UNIQUE,
  usuario VARCHAR(20) UNIQUE,
  PRIMARY KEY(id)
);

-- Crear tabla "Roles" para almacenar los roles permitidos
CREATE TABLE Roles (
  id tinyint not null,
  nombre VARCHAR(20),
  PRIMARY KEY(id)
);

-- Insertar roles predefinidos en la tabla "Roles"
INSERT INTO Roles (id, nombre)
VALUES
  (1, 'Administrador'),
  (2, 'Chofer'),
  (3, 'Almacenero');
  
CREATE TABLE usuario_rol (
  persona_id tinyint not null,
  rol_id tinyint not null,
  FOREIGN KEY (persona_id) REFERENCES Personas(id),
  FOREIGN KEY (rol_id) REFERENCES Roles(id)
);

-- Crear tabla "Camiones" para almacenar información de los camiones
CREATE TABLE Camiones (
  matricula VARCHAR(10) not null,
  nombre VARCHAR(50),
  chofer_id tinyint,
  FOREIGN KEY (chofer_id) REFERENCES Personas(id),
  PRIMARY KEY(matricula)
);

-- Crear tabla "Envios" para almacenar información de los envíos
CREATE TABLE Envios (
  id tinyint not null,
  nombre VARCHAR(50),
  hora_estimada_llegada DATETIME,
  hora_estimada_salida DATETIME,
  PRIMARY KEY(id)
);

-- Crear tabla "RegistroEnvios" para almacenar las horas reales de llegada y salida de los envíos
CREATE TABLE RegistroEnvios (
  envio_id tinyint not null,
  hora_llegada DATETIME,
  hora_salida DATETIME,
  FOREIGN KEY (envio_id) REFERENCES Envios(id),
  PRIMARY KEY(envio_id)
);

-- Crear tabla "Asignaciones" para asignar camiones y envíos a choferes por administradores
CREATE TABLE Asignaciones (
  id INT not null,
  matricula VARCHAR(10),
  envio_id tinyint,
  chofer_id tinyint,
  administrador_id tinyint,
  FOREIGN KEY (matricula) REFERENCES Camiones(matricula),
  FOREIGN KEY (envio_id) REFERENCES Envios(id),
  FOREIGN KEY (chofer_id) REFERENCES Personas(id),
  FOREIGN KEY (administrador_id) REFERENCES Personas(id),
  PRIMARY KEY(id)
);

-- Crear usuarios mediante CREATE USER
CREATE USER administrador IDENTIFIED BY 'admin';
CREATE USER chofer IDENTIFIED BY 'chofer';
CREATE USER almacenero IDENTIFIED BY 'almacenero';

-- Agregar usuarios a la tabla Personas
INSERT INTO Personas (nombre, ci, usuario) VALUES ('Administrador', '00000001','administrador');
INSERT INTO Personas (nombre, ci, usuario) VALUES ('Chofer', '00000002','chofer');
INSERT INTO Personas (nombre, ci, usuario) VALUES ('Almacenero', '00000003','almacenero');

-- Asignar roles a los usuarios
INSERT INTO usuario_rol (persona_id, rol_id) VALUES (1, 1); -- administrador
INSERT INTO usuario_rol (persona_id, rol_id) VALUES (2, 2); -- chofer
INSERT INTO usuario_rol (persona_id, rol_id) VALUES (3, 3); -- almacenero

GRANT ALL PRIVILEGES ON *.* TO administrador WITH GRANT OPTION;
grant select,update,insert,delete on *.* to chofer;
grant select,update,insert,delete on *.* to almacenero;


