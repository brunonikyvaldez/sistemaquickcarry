-- Poblar tabla Empleado
INSERT INTO Empleado (IDEmpleado, PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia)
VALUES
    (1, 'Juan', 'Carlos', 'Perez', 'Lopez', '2025-12-15'),
    (2, 'Maria', NULL, 'Gomez', 'Rodriguez', '2024-10-20'),
    (3, 'Pedro', 'Andres', 'Diaz', 'Gonzalez', '2023-08-30');

-- Poblar tabla Telefonos
INSERT INTO Telefonos (IDEmpleado, NroTelefono)
VALUES
    (1, 123456789),
    (1, 987654321),
    (2, 111222333),
    (3, 555555555);

-- Poblar tabla ConductorCamion
INSERT INTO ConductorCamion (IDEmpleado, VencimientoLibretaC)
VALUES
    (1, '2025-06-30'),
    (2, '2024-09-15');

-- Poblar tabla ConductorCamioneta
INSERT INTO ConductorCamioneta (IDEmpleado, VencimientoLibretaA)
VALUES
    (3, '2023-12-31');

-- Poblar tabla Camiones
INSERT INTO Camiones (MatriculaCamion, EstadoCamion, PesoC)
VALUES
    ('ABC123', 'No disponible', 15000),
    ('XYZ789', 'En Viaje', 12000),
    ('DEF456', 'En Destino', 18000);

-- Poblar tabla Camioneta
INSERT INTO Camioneta (MatriculaCamioneta, EstadoCamioneta)
VALUES
    ('LMN456', 'No disponible'),
    ('JKL123', 'En Viaje');

-- Poblar tabla Cargamento
INSERT INTO Cargamento (MatriculaCamion, GuiaMadre, DiaSL, MesSL, AñoSL, HoraSL, MinutoSL, DiaLLL, MesLLL, AñoLLL, HoraLLL, MinutoLLL)
VALUES
    ('ABC123', 1, 15, 9, 2023, 10, 30, 20, 9, 2023, 15, 45),
    ('XYZ789', 2, 10, 5, 2023, 8, 0, 15, 5, 2023, 12, 30),
    ('DEF456', 3, 5, 3, 2023, 14, 15, 8, 3, 2023, 18, 20);

-- Poblar tabla Lote
INSERT INTO Lote (GuiaMadre, EstadoL, DiaIL, MesIL, AñoIL)
VALUES
    (1, 'Armado', 1, 9, 2023),
    (2, 'Primer Tramo', 5, 5, 2023),
    (3, 'En almacen', 3, 3, 2023);

-- Poblar tabla Locales
INSERT INTO Locales (IdLocal, DireccionLocal, CiudadLocal)
VALUES
    (1, 'Calle 123', 'Ciudad1, Departamento1'),
    (2, 'Avenida 456', 'Ciudad2, Departamento2'),
    (3, 'Plaza Principal', 'Ciudad3, Departamento3');

-- Poblar tabla Contiene
INSERT INTO Contiene (CodigoDeBarras, GuiaMadre)
VALUES
    (101, 1),
    (102, 2),
    (103, 3);

-- Poblar tabla Paquete
INSERT INTO Paquete (CodigoDeBarras, TipoPaquete, Cedula, EstadoP, DireccionDestino, CiudadDestino, DiaIP, MesIP, AñoIP)
VALUES
    (101, 'Paquete 1', 111111, 'En lote', 'Calle A, CiudadA, DepartamentoA', 'CiudadA, DepartamentoA', 1, 9, 2023),
    (102, 'Paquete 2', 222222, 'Primer Tramo', 'Calle B, CiudadB, DepartamentoB', 'CiudadB, DepartamentoB', 5, 5, 2023),
    (103, 'Paquete 3', 333333, 'En almacen', 'Calle C, CiudadC, DepartamentoC', 'CiudadC, DepartamentoC', 3, 3, 2023);

-- Poblar tabla LLeva
INSERT INTO LLeva (CodigoDeBarras, MatriculaCamioneta, DiaLLP, MesLLP, AñoLLP, HoraLLP, MinutoLLP, DiaSP, MesSP, AñoSP, HoraSP, MinutoSP)
VALUES
    (101, 'LMN456', 1, 9, 2023, 12, 0, 1, 9, 2023, 13, 30),
    (102, 'JKL123', 5, 5, 2023, 9, 30, 5, 5, 2023, 11, 15),
    (103, 'JKL123', 3, 3, 2023, 16, 45, 3, 3, 2023, 19, 0);

-- Poblar tabla Sectores
INSERT INTO Sectores (GuiaMadre, IdLocal)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);
