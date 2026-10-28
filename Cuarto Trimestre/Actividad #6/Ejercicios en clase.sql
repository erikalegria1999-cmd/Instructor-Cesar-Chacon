delimiter $$
drop procedure if exists lista_producto$$
create procedure listar_productos(in nombre_fabricante varchar(100))
begin
select producto.*, fabricante.nombre
from producto inner join fabricante
on producto.id_fabricante = fabricante.id
where fabricante.nombre= nombre_fabricante;
end
$$
set @nombre="asus";
call listar_productos(@nombre);

drop database if exists test;
create database test;
use test;
DELIMITER $$
DROP PROCEDURE IF EXISTS calcular_area_circulo$$
CREATE PROCEDURE calcular_area_circulo(
    IN radio DOUBLE,
    OUT area DOUBLE
)
BEGIN
    SET area = PI() * POW(radio, 2);
END
$$

set @radio = 4.5;
set @area = 0;

call calcular_area_circulo(4.5, @area);
select @area;

use tienda;

DELIMITER $$
CREATE PROCEDURE calcular_max_min_media(
    IN nombre_fabricante VARCHAR(100), 
    OUT min_precio DECIMAL(15,2),
    OUT max_precio DECIMAL(15,2),
    OUT media_precio DECIMAL(15,2)
)
BEGIN
    SELECT MIN(producto.precio),MAX(producto.precio),AVG(producto.precio)
    INTO  min_precio, max_precio,media_precio
    FROM producto 
    INNER JOIN fabricante
        ON producto.id_fabricante = fabricante.id
    WHERE fabricante.nombre = nombre_fabricante;
END $$ 

DELIMITER ;
-- Llamada y prueba del procedimiento:
SET @min_precio = 0;
SET @max_precio = 0;
SET @media_precio = 0;
SET @nombre_fabricante = "Asus";

CALL calcular_max_min_media(
    @nombre_fabricante,
    @min_precio,
    @max_precio,
    @media_precio
);
SELECT @min_precio, @max_precio, @media_precio;








