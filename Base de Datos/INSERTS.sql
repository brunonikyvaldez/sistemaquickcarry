INSERT INTO Empleado (PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, FinalLicencia, NroDocumento, Usuario)
VALUES 
    ('Juan', 'Carlos', 'Pérez', 'Gómez', '2023-12-31', 12345678, 'juan.perez'),
    ('Sofía', 'Isabel', 'López', 'Martínez', '2023-12-31', 98765432, 'sofia.lopez'),
    ('Pedro', NULL, 'Rojas', 'Sánchez', '2023-12-31', 56789012, 'pedro.rojas'),
    ('Ana', 'Victoria', 'Gutiérrez', 'Fernández', '2023-12-31', 34567890, 'ana.gutierrez'),
    ('Luis', 'Miguel', 'Díaz', 'García', '2023-12-31', 78901234, 'luis.diaz'),
    ('Elena', NULL, 'Vega', 'Luna', '2023-12-31', 23456789, 'elena.vega'),
    ('Roberto', 'José', 'Torres', 'Hernández', '2023-12-31', 90123456, 'roberto.torres'),
    ('Laura', 'Beatriz', 'Morales', 'Vargas', '2023-12-31', 45678901, 'laura.morales'),
    ('Francisco', 'Javier', 'Cruz', 'Castro', '2023-12-31', 89012345, 'francisco.cruz'),
    ('Sofía', 'Alejandra', 'Ortiz', 'Jiménez', '2023-12-31', 67890123, 'sofia.ortiz'),
    ('Carlos', 'Enrique', 'Rojas', 'Molina', '2023-12-31', 12389056, 'carlos.rojas'),
    ('Patricia', 'Elizabeth', 'Guerrero', 'Soto', '2023-12-31', 34567801, 'patricia.guerrero');
 -- algunos repiten nombres y apellidos

INSERT INTO Almacenero (IDEmpleado, EsAdmin)
VALUES 
    (1, true),   
    (2, true),    
    (3, false),   
    (4, false);

INSERT INTO PRS_Telefonos (IDEmpleado, NroTelefono)
VALUES 
    (1, 111111111),    -- Juan Pérez
    (2, 222222222),    -- Sofía López
    (3, 333333333),    -- Pedro Rojas
    (4, 444444444),    -- Ana Gutiérrez
    (5, 555555555),    -- Luis Díaz
    (6, 666666666),    -- Elena Vega
    (7, 777777777),    -- Roberto Torres
    (8, 888888888),    -- Laura Morales
    (9, 999999999),    -- Francisco Cruz
    (10, 1010101010),   -- Sofía Ortiz
    (11, 1111111111),   -- Carlos Rojas
    (12, 1212121212),   -- Patricia Guerrero
    (11, 1313131313),   -- Carlos Rojas con otro número de teléfono
    (12, 1414141414);   -- Patricia Guerrero con otro número de teléfono

INSERT INTO ConductorCamion (IDEmpleado, VencimientoLibretaC)
VALUES 
    (5, '2024-06-30'),    -- Luis Díaz
    (6, '2024-09-15'),    -- Elena Vega
    (7, '2024-03-20'),-- Roberto Torres
    (11, '2024-02-23');   -- carlos rojas

INSERT INTO ConductorCamioneta (IDEmpleado, VencimientoLibretaA)
VALUES 
    (8, '2024-12-31'),    -- Laura Morales
    (9, '2024-10-15'),    -- Francisco Cruz
    (10, '2024-08-20');   -- Sofía Ortiz

INSERT INTO Vehiculos (Matricula, Pesos)
VALUES 
    ('ABC123', 30000),    -- Camión con 30 toneladas de carga
    ('XYZ789', 28000),    -- Camión con 28 toneladas de carga
    ('DEF456', 31000),    -- Camión con 31 toneladas de carga
    ('GHI789', 1500),     -- Camioneta con 1.5 toneladas de carga
    ('JKL012', 2400),     -- Camioneta con 2.4 toneladas de carga
    ('MNO345', 1800),     -- Camioneta con 1.8 toneladas de carga
    ('PQR678', 2000),     -- Camioneta con 2 toneladas de carga
    ('STU901', 2100);     -- Camioneta con 2.1 toneladas de carga

INSERT INTO Camionetas (Matricula, EstadoCamioneta)
VALUES 
    ('ABC123', 'En espera'),    -- Camionetas en espera
    ('XYZ789', 'En viaje'),     -- Camionetas en viaje
    ('DEF456', 'En destino');   -- Camionetas no disponible

INSERT INTO Camiones (Matricula, EstadoCamion)
VALUES 
    ('GHI789', 'En espera'),    -- Camion en espera
    ('JKL012', 'En viaje'),     -- Camion en viaje
    ('MNO345', 'En viaje'),   -- Camion en destino
    ('PQR678', 'No disponible'), -- Camion no disponible
    ('STU901', 'En espera');    -- Camion en espera

INSERT INTO ConduceCamion (IDEmpleado, Matricula)
VALUES 
    (5, 'GHI789'),    -- Luis Díaz conduce el camión GHI789
    (6, 'JKL012'),    -- Elena Vegas conduce el camión JKL012
    (7, 'MNO345'),   -- Roberto Torres conduce el camión MNO345
    (11, 'STU901');   -- Carlos Rojas conduce el camión MNO345

INSERT INTO ConduceCamioneta (IDEmpleado, Matricula)
VALUES 
    (8, 'ABC123'),    -- Luis Díaz conduce la camioneta ABC123
    (9, 'XYZ789'),    -- Elena Vegas conduce la camioneta XYZ789
    (10, 'DEF456');   -- Roberto Torres conduce la camioneta DEF456

INSERT INTO Lote ( FechaIngresoL)
VALUES 
    ( '2023-01-15'),
    ( '2023-02-20'),
    ( '2023-03-25'),
    ( '2023-04-30'),
    ( '2023-05-05'),
    ( '2023-06-10'),
    ( '2023-07-15'),
    ( '2023-08-20');

INSERT INTO Locales (DireccionLocal, CiudadLocal)
VALUES 
    ('Comercio, 1324', 'Montevideo, Montevideo'),
    ('Avenida Uruguay, 123', 'Artigas, Artigas'),
    ('Calle 33, 456', 'Canelones, Canelones'),
    ('Ruta 5, Km 367', 'Cerro Largo, Melo'),
    ('Rambla de los Argentinos, 789', 'Colonia, Colonia del Sacramento'),
    ('Avenida Batlle y Ordóñez, 1010', 'Durazno, Durazno'),
    ('Calle Principal, 555', 'Flores, Trinidad'),
    ('Avenida Artigas, 987', 'Florida, Florida'),
    ('Ruta 3, Km 276', 'Lavalleja, Minas'),
    ('Calle 25 de Agosto, 654', 'Maldonado, Maldonado'),
    ('Avenida Lavalleja, 1111', 'Paysandú, Paysandú'),
    ('Ruta 30, Km 122', 'Río Negro, Fray Bentos'),
    ('Calle 18 de Julio, 222', 'Rivera, Rivera'),
    ('Ruta 1, Km 170', 'Rocha, Rocha'),
    ('Avenida Sarandí, 333', 'Salto, Salto'),
    ('Calle 25 de Mayo, 789', 'San José, San José de Mayo'),
    ('Avenida Artigas, 456', 'Soriano, Mercedes'),
    ('Ruta 2, Km 248', 'Tacuarembó, Tacuarembó'),
    ('Calle Ituzaingó, 999', 'Treinta y Tres, Treinta y Tres');

INSERT INTO Trayectos (NombreTrayecto)
VALUES 
    ('Trayecto Este'), 
    ('Trayecto Oeste'),
    ('Trayecto Norte');

INSERT INTO SalidaEstimada (IdTrayecto, SalidaEstimada)
VALUES 
    (1, '08-30'),  -- Trayecto 1 sale a las 8:30
    (2, '09-15'),  -- Trayecto 2 sale a las 9:15
    (3, '08-30');  -- Trayecto 3 sale a las 8:30 (misma hora que Trayecto 1)

INSERT INTO Sectores (IdTrayecto, IdLocal, Tiempo, Posicion)
VALUES
    (1, 1, '10', 0),
    (1, 3, '40', 1),
    (1, 10, '90', 2),
    (1, 14, '130', 3),
    (2, 1, '10', 0),
    (2, 16, '130', 1),
    (2, 5, '180', 2),
    (2, 17, '120', 3),
    (2, 12, '140', 4),
    (2, 11, '210', 5),
    (2, 15, '110', 6),
    (2, 2, '140', 7),
    (3, 1,'10', 0),
    (3, 3, '40', 1),
    (3, 8, '70', 2),
    (3, 6, '90', 3),
    (3, 18, '90', 4),
    (3, 14, '140', 5);

INSERT INTO Corresponde (GuiaMadre, IdLocal, IdTrayecto)
VALUES
    (1, 14, 1),
    (2, 17, 2),
    (3, 11, 2),
    (4, 2, 2),
    (5, 1, 3),
    (6, 3, 3),
    (7, 8, 3),
    (8, 18, 3);

INSERT INTO Viajes (GuiaMadre, Matricula, FechaLlegadaP, FechaSalidaP)
VALUES
    (1, 'GHI789', NULL, '2023-12-16 14:00:00'),
    (4, 'PQR678', '2023-12-15 12:00:00', '2023-12-16 16:30:00'),
    (3, 'JKL012', '2023-12-17 13:00:00', '2023-12-18 10:45:00'),
    (2, 'JKL012', NULL, '2023-12-16 18:00:00'),
    (5, 'STU901', NULL, '2023-12-16 20:00:00'),
    (8, 'MNO345', '2023-12-17 14:30:00', '2023-12-18 12:00:00'),
    (7, 'MNO345', '2023-12-17 15:00:00', '2023-12-18 14:30:00'),
    (6, 'MNO345', NULL, '2023-12-16 22:00:00');



INSERT INTO Paquete (TipoPaquete, Cedula, EstadoP, DireccionDestino, CiudadDestino, FechaIngresoP, PesoP)
VALUES
    ('Fragil', 87654321, 'En lote', 'Ruta 4, Km 170', 'Rocha, Rocha', '2023-10-28', 3),
    ('2025-12-31', 65432109, 'Primer tramo', 'Av. Un doce, 4566', 'Soriano, Mercedes', '2023-10-20', 4),
    ('Fragil', 21098765, 'Primer tramo', 'Avenida Libres, 2573', 'Soriano, Mercedes', '2023-10-22', 5),
    ('Comun', 54321098, 'Primer tramo', 'Calle BDD, 1235', 'Soriano, Mercedes', '2023-11-12', 2),
    ('Comun', 10987654, 'En almacen', 'Avenida Lava, 2222', 'Paysandú, Paysandú', '2023-12-01', 1),
    ('Fragil', 72727272, 'En almacen', 'Avenida Vieja, 3333', 'Paysandú, Paysandú', '2023-10-02', 10),
    ('Comun', 43210987, 'En almacen', 'Avenida Lleja, 4444', 'Paysandú, Paysandú', '2023-11-01', 12);
  

INSERT INTO Contiene (GuiaMadre, CodigoDeBarras)
VALUES
    (1, 1),  -- Paquete con destino a Rocha
    (2, 2),  -- Soriano Mercedes
    (2, 3),
    (2, 4),
    (3, 5),  -- Paysandú
    (3, 6),
    (3, 7);

INSERT INTO Lleva (CodigoDeBarras, Matricula, FechaLlegadaS)
VALUES
    (1, 'ABC123', NULL),
    (2, 'XYZ789', NULL),
    (3, 'XYZ789', NULL),
    (4, 'XYZ789', NULL),
    (5, 'DEF456', '2023-12-17'),
    (6, 'DEF456', '2023-12-17'),
    (7, 'DEF456', '2023-10-17');
    
    
    
CREATE USER 'juan.perez' IDENTIFIED BY 'J22E10S05';
CREATE USER 'sofia.lopez' IDENTIFIED BY 'S22I10M05';
GRANT GRANT OPTION ,UPDATE ,INSERT,DELETE,SELECT on quickcarry.* TO 'juan.perez', 'sofia.lopez'; -- admins
GRANT CREATE USER ON *.* TO 'juan.perez'@'%', 'sofia.lopez'@'%';
CREATE USER 'pedro.rojas' IDENTIFIED BY 'P22R10S05';
CREATE USER 'ana.gutierrez' IDENTIFIED BY 'A22V10G05';
CREATE USER 'luis.diaz' IDENTIFIED BY 'L22D10G05';
CREATE USER 'elena.vega' IDENTIFIED BY 'E22V10L05';
CREATE USER 'roberto.torres' IDENTIFIED BY 'R22T10H05';
CREATE USER 'laura.morales' IDENTIFIED BY 'L22M10V05';
CREATE USER 'francisco.cruz' IDENTIFIED BY 'F22C10C05';
CREATE USER 'sofia.ortiz' IDENTIFIED BY 'S22O10J05';
CREATE USER 'carlos.rojas' IDENTIFIED BY 'C22R10M05';
CREATE USER 'patricia.guerrero' IDENTIFIED BY 'P22G10S05';
GRANT UPDATE, INSERT, DELETE, SELECT ON quickcarry.* TO 'pedro.rojas', 'ana.gutierrez', 'luis.diaz', 'elena.vega', 'roberto.torres', 'laura.morales', 'francisco.cruz', 'sofia.ortiz', 'carlos.rojas', 'patricia.guerrero';
-- usuarios normales