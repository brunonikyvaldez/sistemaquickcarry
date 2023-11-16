#--1. MOSTRAR LOS PAQUETES ENTREGADOS EN EL MES DE MAYO DEL 2023 CON DESTINO
#--A LA CIUDAD DE MELO

SELECT P.CodigoDeBarras, P.CiudadDestino
FROM Paquete P
JOIN LLeva L ON P.CodigoDeBarras = L.CodigoDeBarras
WHERE RIGHT(P.CiudadDestino, LENGTH('Melo')) = 'Melo' AND MONTH(L.FechaLlegadaS) = 5;

#--2. MOSTRAR TODOS LOS ALMACENES Y LOS PAQUETES QUE FUERON ENTREGADOS EN
#--LOS MISMOS DURANTE EL 2023, ORDENARLOS ADEMAS DE LOS QUE RECIBIERON MAS
#--PAQUETES A LOS QUE RECIBIERON MENOS.

SELECT S.IdLocal, COUNT(P.CodigoDeBarras) as CantidadPaquetes
FROM Sectores S
JOIN Corresponde C ON S.IdLocal = C.IdLocal
JOIN Contiene ON C.GuiaMadre = Contiene.GuiaMadre
JOIN LLeva ON Contiene.CodigoDeBarras = LLeva.CodigoDeBarras
JOIN Paquete P ON LLeva.CodigoDeBarras = P.CodigoDeBarras
WHERE YEAR(LLeva.FechaLlegadaS) = 2023
GROUP BY S.IdLocal
ORDER BY CantidadPaquetes DESC;

#--3. MOSTRAR TODOS LOS CAMIONES REGISTRADOS Y QUE TAREA SE ENCUENTRAN
#--REALIZANDO EN ESTE MOMENTO

SELECT Matricula, EstadoCamion
FROM Camiones;

#--4. MOSTRAR TODOS LOS CAMIONES QUE VISITARON DURANTE EL MES DE JUNIO UN
#--ALMACEN DADO

SELECT V.Matricula, V.GuiaMadre
FROM Viajes V
JOIN Corresponde C ON V.GuiaMadre = C.GuiaMadre
WHERE MONTH(V.FechaLlegadaP) = 6 AND C.IdLocal = 1; -- aqui se debe ingresar el local dado

#--5. MOSTRAR DESTINO, LOTE, ALMACEN DE DESTINO Y CAMIÓN QUE TRANSPORTA UN

#--PAQUETE DADO.

SELECT 
    P.CiudadDestino,
    P.DireccionDestino,
    C.GuiaMadre,
    S.IdLocal,
    L.CiudadLocal,
    L.DireccionLocal,
    V.Matricula
FROM Paquete P
JOIN Contiene C ON P.CodigoDeBarras = C.CodigoDeBarras
JOIN Corresponde Co ON C.GuiaMadre = Co.GuiaMadre
JOIN Sectores S ON Co.IdLocal = S.IdLocal
JOIN Viajes V ON Co.GuiaMadre = V.GuiaMadre
JOIN Locales L ON S.IdLocal = L.IdLocal
WHERE P.CodigoDeBarras = 5; -- aqui colocar codigo de barras de paquete a buscar

-- 6. MOSTRAR EL IDENTIFICADOR DEL PAQUETE, IDENTIFICADOR DE LOTE, MATRICULA DEL
-- CAMION QUE LO TRANSPORTA, ALMACEN DE DESTINO, DIRECCIÓN FINAL Y EL ESTADO
-- DEL ENVÍO, PARA LOS PAQUETES QUE SE RECIBIERON HACE MAS DE 3 DÍAS.

SELECT 
    P.CodigoDeBarras,
    C.GuiaMadre,
    V.Matricula,
    S.IdLocal,
    P.DireccionDestino,
    P.EstadoP
FROM Contiene C
JOIN Corresponde Co ON C.GuiaMadre = Co.GuiaMadre
JOIN Sectores S ON Co.IdLocal = S.IdLocal
JOIN Viajes V ON Co.GuiaMadre = V.GuiaMadre
JOIN Paquete P ON C.CodigoDeBarras = P.CodigoDeBarras
WHERE P.CodigoDeBarras IN (
    SELECT LLeva.CodigoDeBarras
    FROM LLeva
    WHERE LLeva.FechaLlegadaS < DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY)
);

-- 7. MOSTRAR TODOS LOS PAQUETES A LOS QUE AÚN NO SE LES HA ASIGNADO UN LOTE Y
-- LA FECHA EN LA QUE FUERON RECIBIDOS.

SELECT P.CodigoDeBarras, P.FechaIngresoP
FROM Paquete P
WHERE NOT EXISTS (
    SELECT C.CodigoDeBarras
    FROM Contiene C
    WHERE P.CodigoDeBarras = C.CodigoDeBarras
);

-- 8. MOSTRAR MATRICULA DE LOS CAMIONES QUE SE ENCUENTRAN FUERA DE SERVICIO.

SELECT Matricula
FROM Camiones
WHERE EstadoCamion = 'No disponible';

-- 9. MOSTRAR TODOS LOS CAMIONES QUE NO TIENEN UN CONDUCTOR ASIGNADO Y SU
-- ESTADO OPERATIVO.

SELECT C.Matricula, C.EstadoCamion
FROM Camiones C
WHERE NOT EXISTS (
    SELECT Ca.Matricula
    FROM ConduceCamion Ca
    WHERE C.Matricula = Ca.Matricula
);

-- 10. MOSTRAR TODOS LOS ALMACENES QUE SE ENCUENTRAN EN UN RECORRIDO DADO.

SELECT S.IdLocal
FROM Sectores S
WHERE S.IdTrayecto = 2; -- aqui se ingresa la Id del trayecto dado