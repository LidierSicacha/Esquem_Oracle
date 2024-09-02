
--
-- LIMPIAR DATOS USUARIO
--
DROP USER lidiers CASCADE;

--
-- Creacion usuario
--
CREATE USER lidiers IDENTIFIED BY 12345;

--
-- Asignar Privilegios
--
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE SYNONYM
TO lidiers;

--
-- Asignacion Cuota al Usuario
--
ALTER USER lidiers QUOTA 10G ON USERS;

--
-- Cambiar de Esquema para Lidiers
--
ALTER SESSION SET CURRENT_SCHEMA=LIDIERS;



@@airbnb.sql;


@@constraint_airbnb.sql



