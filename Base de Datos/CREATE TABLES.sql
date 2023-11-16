create database QuickCarry; 
use QuickCarry; 


CREATE TABLE Empleado (
    PrimerNombre VARCHAR(50) not null,
    SegundoNombre VARCHAR(50),
    PrimerApellido VARCHAR(50) not null,
    SegundoApellido VARCHAR(50) not null,
    IDEmpleado INT AUTO_INCREMENT,
    FinalLicencia DATE not null,
    NroDocumento INT not null unique,
	Usuario VARCHAR(24) not null unique,
    PRIMARY KEY (IDEmpleado)
);

CREATE TABLE Almacenero (
    IDEmpleado INT,
    EsAdmin BOOLEAN,
    PRIMARY KEY (IDEmpleado),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE PRS_Telefonos (
    IDEmpleado INT,
    NroTelefono INT not null,
    PRIMARY KEY (IDEmpleado, NroTelefono),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE ConductorCamion (
    IDEmpleado INT,
    VencimientoLibretaC DATE not null,
    PRIMARY KEY (IDEmpleado),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE ConductorCamioneta (
    IDEmpleado INT,
    VencimientoLibretaA DATE not null,
    PRIMARY KEY (IDEmpleado),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE Vehiculos (
    Matricula VARCHAR(50),
    Pesos INT not null,
    PRIMARY KEY (Matricula)
);

CREATE TABLE Camionetas (
    Matricula VARCHAR(50),
    EstadoCamioneta VARCHAR(50) not null,
    PRIMARY KEY (Matricula),
    FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula)
);

CREATE TABLE Camiones (
    Matricula VARCHAR(50),
    EstadoCamion VARCHAR(50) not null,
    PRIMARY KEY (Matricula),
    FOREIGN KEY (Matricula) REFERENCES Vehiculos(Matricula)
);

CREATE TABLE ConduceCamion (
    IDEmpleado INT,
    Matricula VARCHAR(50) not null,
    PRIMARY KEY (Matricula),
    FOREIGN KEY (IDEmpleado) REFERENCES ConductorCamion(IDEmpleado),
    FOREIGN KEY (Matricula) REFERENCES Camiones(Matricula)
);

CREATE TABLE ConduceCamioneta (
    IDEmpleado INT,
    Matricula VARCHAR(50),
    PRIMARY KEY (Matricula),
    FOREIGN KEY (IDEmpleado) REFERENCES ConductorCamioneta(IDEmpleado),
    FOREIGN KEY (Matricula) REFERENCES Camionetas(Matricula)
);

CREATE TABLE Lote (
    GuiaMadre INT AUTO_INCREMENT,
    FechaIngresoL DATE not null,
    PRIMARY KEY (GuiaMadre)
);

CREATE TABLE Locales (
    IdLocal INT AUTO_INCREMENT,
    DireccionLocal VARCHAR(100) not null unique,
    CiudadLocal VARCHAR(50) not null,
    PRIMARY KEY (IdLocal)
);

CREATE TABLE Trayectos (
    IdTrayecto INT AUTO_INCREMENT,
    NombreTrayecto VARCHAR(20) not null unique,
    PRIMARY KEY (IdTrayecto)
);

CREATE TABLE SalidaEstimada (
    IdTrayecto INT,
    SalidaEstimada VARCHAR(50),
    PRIMARY KEY (IdTrayecto, SalidaEstimada),
    FOREIGN KEY (IdTrayecto) REFERENCES Trayectos(IdTrayecto)
);

CREATE TABLE Sectores (
    IdTrayecto INT,
    IdLocal INT,
    Tiempo VARCHAR(50) not null,
    Posicion tinyINT not null,
    PRIMARY KEY (IdTrayecto, IdLocal),
    FOREIGN KEY (IdTrayecto) REFERENCES Trayectos(IdTrayecto),
    FOREIGN KEY (IdLocal) REFERENCES Locales(IdLocal)
);

CREATE TABLE Corresponde (
    GuiaMadre INT,
    IdLocal INT,
    IdTrayecto INT,
    PRIMARY KEY (GuiaMadre),
    FOREIGN KEY (GuiaMadre) REFERENCES Lote(GuiaMadre),
    FOREIGN KEY (IdLocal) REFERENCES Sectores(IdLocal),
    FOREIGN KEY (IdTrayecto) REFERENCES Sectores(IdTrayecto)
);

CREATE TABLE Viajes (
    GuiaMadre INT,
    Matricula VARCHAR(50),
    FechaLlegadaP DATETIME,
    FechaSalidaP datetime,
    PRIMARY KEY (GuiaMadre, Matricula),
    FOREIGN KEY (Matricula) REFERENCES Camiones(Matricula),
    FOREIGN KEY (GuiaMadre) REFERENCES Corresponde(GuiaMadre)
);

CREATE TABLE Paquete (
    CodigoDeBarras INT AUTO_INCREMENT,
    TipoPaquete VARCHAR(50) not null,
    Cedula INT not null,
    EstadoP VARCHAR(50) not null,
    DireccionDestino VARCHAR(100) not null,
    CiudadDestino VARCHAR(50) not null,
    FechaIngresoP DATE not null,
    PesoP INT not null,
    PRIMARY KEY (CodigoDeBarras)
);

CREATE TABLE Contiene (
    GuiaMadre INT,
    CodigoDeBarras INT,
    PRIMARY KEY (CodigoDeBarras),
    FOREIGN KEY (GuiaMadre) REFERENCES Lote(GuiaMadre),
    FOREIGN KEY (CodigoDeBarras) REFERENCES Paquete(CodigoDeBarras)
);

CREATE TABLE LLeva (
    CodigoDeBarras INT,
    Matricula VARCHAR(50),
    FechaLlegadaS DATETIME,
    PRIMARY KEY (CodigoDeBarras),
    FOREIGN KEY (CodigoDeBarras) REFERENCES Paquete(CodigoDeBarras),
    FOREIGN KEY (Matricula) REFERENCES Camionetas(Matricula)
);



