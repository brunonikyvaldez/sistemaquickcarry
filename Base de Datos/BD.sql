CREATE database QuickCarry
use QuickCarry
    
CREATE TABLE Empleado (
    IDEmpleado INT PRIMARY KEY,
    PrimerNombre VARCHAR(255),
    SegundoNombre VARCHAR(255),
    PrimerApellido VARCHAR(255),
    SegundoApellido VARCHAR(255),
    FinalLicencia VARCHAR(255)
);
CREATE TABLE Telefonos (
    IDEmpleado INT,
    NroTelefono INT,
    PRIMARY KEY (IDEmpleado, NroTelefono),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);
CREATE TABLE ConductorCamion (
    IDEmpleado INT PRIMARY KEY,
    VencimientoLibretaC VARCHAR(255),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);
CREATE TABLE ConductorCamioneta (
    IDEmpleado INT PRIMARY KEY,
    VencimientoLibretaA VARCHAR(255),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
);
CREATE TABLE ConduceCamion (
    IDEmpleado INT,
    MatriculaCamion VARCHAR(255),
    PRIMARY KEY (IDEmpleado, MatriculaCamion),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
    FOREIGN KEY (MatriculaCamion) REFERENCES Camiones(MatriculaCamion)
);
CREATE TABLE ConduceCamioneta (
    IDEmpleado INT,
    MatriculaCamioneta VARCHAR(255),
    PRIMARY KEY (IDEmpleado, MatriculaCamioneta),
    FOREIGN KEY (IDEmpleado) REFERENCES Empleado(IDEmpleado)
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
    FOREIGN KEY (IdLocal) REFERENCES Local(IdLocal),
    PRIMARY KEY (GuiaMadre)
);
CREATE TABLE Lote (
    GuiaMadre INT PRIMARY KEY,
    EstadoL VARCHAR(255),
    DiaIL INT CHECK (DiaIL >= 1 AND DiaIL <= 31),
    MesIL INT CHECK (MesIL >= 1 AND MesIL <= 12),
    AñoIL INT CHECK (AñoIL >= 1900 AND AñoIL <= 2100),
    PRIMARY KEY (GuiaMadre)
);
CREATE TABLE Locales (
    IdLocal INT PRIMARY KEY,
    DireccionLocal VARCHAR(255),
    CiudadLocal VARCHAR(255),
    PRIMARY KEY (IdLocal)
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
    AñoIP INT CHECK (AñoIP >= 1900 AND AñoIP <= 2100),
   PRIMARY KEY (CodigoDeBarras)
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
    EstadoCamioneta VARCHAR(255),
    PRIMARY KEY (MatriculaCamioneta)
);
CREATE USER ADMINISTRADOR IDENTIFIED BY "********"
GRANT ALL PRIVILEGES ON QuickCarry TO ADMINISTRADOR


