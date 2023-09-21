create database QuickCarry; 
use QuickCarry;

CREATE TABLE Empleado (
    IDEmpleado INT PRIMARY KEY,
    Usuario VARCHAR(25) UNIQUE,
    PrimerNombre VARCHAR(55),
    SegundoNombre VARCHAR(55),
    PrimerApellido VARCHAR(55),
    SegundoApellido VARCHAR(55),
    FinalLicencia VARCHAR(55),
    EsAdmin BOOLEAN,
    Contrasenia VARCHAR(10)
);
CREATE TABLE Telefonos (
    IDEmpleado INT,
    NroTelefono INT,
    PRIMARY KEY (IDEmpleado, NroTelefono),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE ConductorCamion (
    IDEmpleado INT PRIMARY KEY,
    VencimientoLibretaC VARCHAR(55),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);

CREATE TABLE ConductorCamioneta (
    IDEmpleado INT PRIMARY KEY,
    VencimientoLibretaA VARCHAR(55),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);
CREATE TABLE ConduceCamion (
    IDEmpleado INT,
    MatriculaCamion VARCHAR(55),
    PRIMARY KEY (IDEmpleado, MatriculaCamion),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado),
    FOREIGN KEY (MatriculaCamion) REFERENCES Camiones(MatriculaCamion)
);
CREATE TABLE ConduceCamioneta (
    IDEmpleado INT,
    MatriculaCamioneta VARCHAR(55),
    PRIMARY KEY (IDEmpleado, MatriculaCamioneta),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado),
    FOREIGN KEY (MatriculaCamioneta) REFERENCES Camioneta(MatriculaCamioneta)
);
CREATE TABLE Camiones (
    MatriculaCamion VARCHAR(255) PRIMARY KEY,
    EstadoCamion VARCHAR(255),
    PesoC INT
);

CREATE TABLE Cargamento (
    MatriculaCamion VARCHAR(255),
    GuiaMadre INT,
    DiaSL INT CHECK (DiaSL >= 1 AND DiaSL <= 31),
    MesSL INT CHECK (MesSL >= 1 AND MesSL <= 12),
    AñoSL INT CHECK (AñoSL >= 1900 AND AñoSL <= 2100),
    HoraSL INT CHECK (HoraSL >= 0 AND HoraSL < 24),
    MinutoSL INT CHECK (MinutoSL >= 0 AND MinutoSL < 60),
    DiaLLL INT CHECK (DiaLLL >= 1 AND DiaLLL <= 31),
    MesLLL INT CHECK (MesLLL >= 1 AND MesLLL <= 12),
    AñoLLL INT CHECK (AñoLLL >= 1900 AND AñoLLL <= 2100),
    HoraLLL INT CHECK (HoraLLL >= 0 AND HoraLLL < 24),
    MinutoLLL INT CHECK (MinutoLLL >= 0 AND MinutoLLL < 60),
    FOREIGN KEY (MatriculaCamion) REFERENCES Camiones(MatriculaCamion),
    FOREIGN KEY (GuiaMadre) REFERENCES Lote(GuiaMadre),
    PRIMARY KEY (GuiaMadre)
); 
CREATE TABLE Sectores (
    GuiaMadre INT,
    IdLocal INT,
    FOREIGN KEY (GuiaMadre) REFERENCES Lote(GuiaMadre),
    FOREIGN KEY (IdLocal) REFERENCES Locales(IdLocal),
    PRIMARY KEY (GuiaMadre)
);
CREATE TABLE Lote (
    GuiaMadre INT PRIMARY KEY,
    EstadoL VARCHAR(255),
    DiaIL INT CHECK (DiaIL >= 1 AND DiaIL <= 31),
    MesIL INT CHECK (MesIL >= 1 AND MesIL <= 12),
    AñoIL INT CHECK (AñoIL >= 1900 AND AñoIL <= 2100)
);
CREATE TABLE Locales (
    IdLocal INT PRIMARY KEY,
    DireccionLocal VARCHAR(255),
    CiudadLocal VARCHAR(255)
);
CREATE TABLE Contiene (
    CodigoDeBarras INT,
    GuiaMadre INT,
    FOREIGN KEY (CodigoDeBarras) REFERENCES Paquete(CodigoDeBarras),
    FOREIGN KEY (GuiaMadre) REFERENCES Lote(GuiaMadre),
    PRIMARY KEY (CodigoDeBarras)
);
CREATE TABLE Paquete (
    CodigoDeBarras INT PRIMARY KEY,
    TipoPaquete VARCHAR(255),
    Cedula INT,
    EstadoP VARCHAR(255),
    DireccionDestino VARCHAR(255),
    CiudadDestino VARCHAR(255),
    DiaIP INT CHECK (DiaIP >= 1 AND DiaIP <= 31),
    MesIP INT CHECK (MesIP >= 1 AND MesIP <= 12),
    AñoIP INT CHECK (AñoIP >= 1900 AND AñoIP <= 2100)
);
CREATE TABLE LLeva (
    CodigoDeBarras INT,
    MatriculaCamioneta VARCHAR(255),
    DiaLLP INT CHECK (DiaLLP >= 1 AND DiaLLP <= 31),
    MesLLP INT CHECK (MesLLP >= 1 AND MesLLP <= 12),
    AñoLLP INT CHECK (AñoLLP >= 1900 AND AñoLLP <= 2100),
    HoraLLP INT CHECK (HoraLLP >= 0 AND HoraLLP < 24),
    MinutoLLP INT CHECK (MinutoLLP >= 0 AND MinutoLLP < 60),
    DiaSP INT CHECK (DiaSP >= 1 AND DiaSP <= 31),
    MesSP INT CHECK (MesSP >= 1 AND MesSP <= 12),
    AñoSP INT CHECK (AñoSP >= 1900 AND AñoSP <= 2100),
    HoraSP INT CHECK (HoraSP >= 0 AND HoraSP < 24),
    MinutoSP INT CHECK (MinutoSP >= 0 AND MinutoSP < 60),
    FOREIGN KEY (CodigoDeBarras) REFERENCES Paquete(CodigoDeBarras),
    FOREIGN KEY (MatriculaCamioneta) REFERENCES Camioneta(MatriculaCamioneta),
    PRIMARY KEY (CodigoDeBarras)
);
CREATE TABLE Camioneta (
    MatriculaCamioneta VARCHAR(255) PRIMARY KEY,
    EstadoCamioneta VARCHAR(255)
);

create user usuarios identified by "j22e10s05";
GRANT ALL privileges ON QuickCarry to 'usuarios';

-- Usuario 1: Administrador
INSERT INTO Empleado (IDEmpleado, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, EsAdmin, Contrasenia)
VALUES (1, 'admin1', 'PrimerNombre1', 'SegundoNombre1', 'PrimerApellido1', 'SegundoApellido1', 'Licencia1', 1, 'j22e10s05');

-- Usuario 2: Chofer
INSERT INTO Empleado (IDEmpleado, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, EsAdmin, Contrasenia)
VALUES (2, 'chofer1', 'PrimerNombre2', 'SegundoNombre2', 'PrimerApellido2', 'SegundoApellido2', 'Licencia2', 0, 'j22e10s05');

-- Usuario 3: Almacenero
INSERT INTO Empleado (IDEmpleado, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, EsAdmin, Contrasenia)
VALUES (3, 'almacenero1', 'PrimerNombre3', 'SegundoNombre3', 'PrimerApellido3', 'SegundoApellido3', 'Licencia3', 0, 'j22e10s05');

-- Usuario 4: Chofer de Camion
INSERT INTO Empleado (IDEmpleado, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, EsAdmin, Contrasenia)
VALUES (4, 'chofer_camion1', 'PrimerNombre4', 'SegundoNombre4', 'PrimerApellido4', 'SegundoApellido4', 'Licencia4', 0, 'j22e10s05');

-- Usuario 5: Chofer de Camioneta
INSERT INTO Empleado (IDEmpleado, Usuario, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, EsAdmin, Contrasenia)
VALUES (5, 'chofer_camioneta1', 'PrimerNombre5', 'SegundoNombre5', 'PrimerApellido5', 'SegundoApellido5', 'Licencia5', 0, 'j22e10s05');

-- Inserción en la tabla Telefonos (para el Usuario 1)
INSERT INTO Telefonos (IDEmpleado, NroTelefono)
VALUES (1, 123456789);

-- Inserción en la tabla ConductorCamion (para el Usuario 4)
INSERT INTO ConductorCamion (IDEmpleado, VencimientoLibretaC)
VALUES (4, '2023-12-31');

-- Inserción en la tabla ConductorCamioneta (para el Usuario 5)
INSERT INTO ConductorCamioneta (IDEmpleado, VencimientoLibretaA)
VALUES (5, '2023-12-31');

-- Inserción en la tabla Camiones (para un camión que el Usuario 4 conduce)
INSERT INTO Camiones (MatriculaCamion, EstadoCamion, PesoC)
VALUES ('Camion1', 'Activo', 5000);

-- Inserción en la tabla Cargamento (asumiendo que el Usuario 4 lleva un cargamento en Camion1)
INSERT INTO Cargamento (MatriculaCamion, GuiaMadre, DiaSL, MesSL, AñoSL, HoraSL, MinutoSL, DiaLLL, MesLLL, AñoLLL, HoraLLL, MinutoLLL)
VALUES ('Camion1', 1, 1, 9, 2023, 8, 0, 1, 9, 2023, 16, 0);

-- Inserción en la tabla Sectores (para el cargamento en el Usuario 4)
INSERT INTO Sectores (GuiaMadre, IdLocal)
VALUES (1, 1);

-- Inserción en la tabla Lote (para el cargamento en el Usuario 4)
INSERT INTO Lote (GuiaMadre, EstadoL, DiaIL, MesIL, AñoIL)
VALUES (1, 'En tránsito', 1, 9, 2023);

-- Inserción en la tabla Locales (para el sector en el Usuario 4)
INSERT INTO Locales (IdLocal, DireccionLocal, CiudadLocal)
VALUES (1, 'Calle Principal 123', 'Ciudad Ejemplo');

-- Inserción en la tabla Contiene (para el paquete en el Usuario 4)
INSERT INTO Contiene (CodigoDeBarras, GuiaMadre)
VALUES (1001, 1);

-- Inserción en la tabla Paquete (para el paquete en el Usuario 4)
INSERT INTO Paquete (CodigoDeBarras, TipoPaquete, Cedula, EstadoP, DireccionDestino, CiudadDestino, DiaIP, MesIP, AñoIP)
VALUES (1001, 'Paquete1', 1234567, 'En tránsito', 'Dirección Destino 1', 'Ciudad Destino 1', 1, 9, 2023);

-- Inserción en la tabla LLeva (para el paquete en el Usuario 4)
INSERT INTO LLeva (CodigoDeBarras, MatriculaCamioneta, DiaLLP, MesLLP, AñoLLP, HoraLLP, MinutoLLP, DiaSP, MesSP, AñoSP, HoraSP, MinutoSP)
VALUES (1001, 'Camioneta1', 1, 9, 2023, 8, 30, 1, 9, 2023, 15, 0);

-- Inserción en la tabla Camioneta (para la camioneta que el Usuario 5 conduce)
INSERT INTO Camioneta (MatriculaCamioneta, EstadoCamioneta)
VALUES ('Camioneta1', 'Activo');
