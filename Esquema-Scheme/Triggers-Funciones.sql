
CREATE OR REPLACE FUNCTION gasto_agregado() 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
    BEGIN
	UPDATE total 
	SET gastoTotal = gastoTotal + NEW.gasto, 
	cantDisponible = cantDisponible - NEW.gasto,
	ingresoVsGasto = ingresoVsGasto - NEW.gasto,
	fechaHoraUltimoCambio = NEW.fechaHoraGasto;
	RETURN NULL;
	END;
$$;


CREATE TRIGGER gasto_agregado_tg
AFTER INSERT 
ON gastos
FOR EACH ROW
EXECUTE PROCEDURE gasto_agregado();
