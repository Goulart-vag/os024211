CREATE OR ALTER TRIGGER LOG_SAPTOS_ADD
FOR SAPATOS
ACTIVE AFTER INSERT POSITION 10
AS 
BEGIN
INSERT INTO LOG_SAPATOS
(DATA, HORA, TIPO_OPERACAO)
VALUES
(CURRENT_DATE, CURRENT_TIME, 'INSERT');
END