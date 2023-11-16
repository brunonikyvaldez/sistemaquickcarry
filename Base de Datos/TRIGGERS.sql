 # No permitir poner un estado camion que no exista en el RNE
DELIMITER //
CREATE TRIGGER valida_estado_camion
BEFORE INSERT ON Camiones
FOR EACH ROW
BEGIN
    IF NEW.EstadoCamion NOT IN ('En espera', 'En viaje', 'En destino', 'No disponible') THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de EstadoCamion debe ser "En espera", "En viaje", "En destino" o "No disponible"';
    END IF;
END;
//
DELIMITER;

# --No permitir poner un estado camioneta que no exista en el RNE
DELIMITER //
CREATE TRIGGER valida_estado_camioneta
BEFORE INSERT ON Camionetas
FOR EACH ROW
BEGIN
    IF NEW.EstadoCamioneta NOT IN ('En espera', 'En viaje', 'En destino', 'No disponible') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de EstadoCamioneta debe ser "En espera", "En viaje", "En destino" o "No disponible"';
    END IF;
END;
//
DELIMITER;
 # --Asegurarse que CiudadDestino de paquetes cumpla con la estructura "Departamento, Ciudad" y ademas la primer palabra sea un departamento válido

DELIMITER //
CREATE TRIGGER valida_ciudad_destino
BEFORE INSERT ON Paquete
FOR EACH ROW
BEGIN
    DECLARE departamento VARCHAR(50);

    -- Extraer el departamento de CiudadDestino
    SET departamento = SUBSTRING_INDEX(NEW.CiudadDestino, ', ', 1);

    -- Verificar la estructura y si el departamento es válido
    IF NEW.CiudadDestino NOT LIKE '%, %' OR departamento NOT IN ('Artigas', 'Canelones', 'Cerro Largo', 'Colonia', 'Durazno', 'Flores', 'Florida', 'Lavalleja', 'Maldonado', 'Montevideo', 'Paysandú', 'Río Negro', 'Rivera', 'Rocha', 'Salto', 'San José', 'Soriano', 'Tacuarembó', 'Treinta y Tres') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de CiudadDestino debe cumplir con la estructura "Departamento, Ciudad" y el departamento debe ser válido en Uruguay.';
    END IF;
END;
//
DELIMITER ;


# --Asegurarse que CiudadLocal de Locales cumpla con la estructura "Departamento, Ciudad" y ademas la primer palabra sea un departamento válido

DELIMITER //
CREATE TRIGGER valida_ciudad_local
BEFORE INSERT ON Locales
FOR EACH ROW
BEGIN
    DECLARE departamento VARCHAR(50);

    -- Extraer el departamento de CiudadLocal
    SET departamento = SUBSTRING_INDEX(NEW.CiudadLocal, ', ', 1);

    -- Verificar la estructura y si el departamento es válido
    IF NEW.CiudadLocal NOT LIKE '%, %' OR departamento NOT IN ('Artigas', 'Canelones', 'Cerro Largo', 'Colonia', 'Durazno', 'Flores', 'Florida', 'Lavalleja', 'Maldonado', 'Montevideo', 'Paysandú', 'Río Negro', 'Rivera', 'Rocha', 'Salto', 'San José', 'Soriano', 'Tacuarembó', 'Treinta y Tres') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de CiudadLocal debe cumplir con la estructura "Departamento, Ciudad" y el departamento debe ser válido en Uruguay.';
    END IF;
END;
//
DELIMITER ;


# --Asegurarse que el TipoPaquete sea "Fragil", "Comun" o con el formato de fecha "0000/00/00"

DELIMITER //
CREATE TRIGGER valida_tipo_paquete
BEFORE INSERT ON Paquete
FOR EACH ROW
BEGIN
    -- Verificar que el TipoPaquete sea "Frágil", "Común" o tenga el formato de fecha "0000-00-00"
    IF NEW.TipoPaquete NOT IN ('Frágil', 'Común') AND NOT (NEW.TipoPaquete REGEXP '^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de TipoPaquete debe ser "Frágil", "Común" o tener el formato de fecha "0000-00-00".';
    END IF;
END;
//
DELIMITER ;

# --Asegurarse que EstadoP de Paquete tenga unicamente inserts de "En central", "En lote", "Primer tramo", "En almacen", "Segundo tramo" y "Entregado"

DELIMITER //
CREATE TRIGGER valida_estado_paquete
BEFORE INSERT ON Paquete
FOR EACH ROW
BEGIN
    -- Verificar que el EstadoP sea uno de los valores permitidos
    IF NEW.EstadoP NOT IN ('En central', 'En lote', 'Primer tramo', 'En almacen', 'Segundo tramo', 'Entregado') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El valor de EstadoP debe ser "En central", "En lote", "Primer tramo", "En almacen", "Segundo tramo" o "Entregado".';
    END IF;
END;
//
DELIMITER ;

# --No permitir que se ingresen IDEmpleado a ConductorCamion o ConductorCamioneta que ya existan en Almacenero

DELIMITER //
CREATE TRIGGER valida_conductor_camioneta
BEFORE INSERT ON ConductorCamioneta
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Almacenero WHERE IDEmpleado = NEW.IDEmpleado) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se puede insertar en ConductorCamioneta. IDEmpleado ya pertenece a Almacenero.';
    END IF;
END;
//
DELIMITER ;

-- Trigger para ConductorCamion
DELIMITER //
CREATE TRIGGER valida_conductor_camion
BEFORE INSERT ON ConductorCamion
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Almacenero WHERE IDEmpleado = NEW.IDEmpleado) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se puede insertar en ConductorCamion. IDEmpleado ya pertenece a Almacenero.';
    END IF;
END;
//
DELIMITER ;

# --No permitir que se ingresen IDEmpleado en Almacenero que ya existan en ConductorCamion o ConductorCamioneta

DELIMITER //
CREATE TRIGGER valida_almacenero
BEFORE INSERT ON Almacenero
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM ConductorCamioneta WHERE IDEmpleado = NEW.IDEmpleado) OR
       EXISTS (SELECT 1 FROM ConductorCamion WHERE IDEmpleado = NEW.IDEmpleado) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se puede insertar en Almacenero. IDEmpleado ya pertenece a ConductorCamioneta o ConductorCamion.';
    END IF;
END;
//
DELIMITER ;