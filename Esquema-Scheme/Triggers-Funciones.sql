
CREATE OR REPLACE FUNCTION gasto_agregado() 
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$
    BEGIN
	UPDATE total 
	SET gastoTotal = gastoTotal + NEW.gasto, 
	cantUsable = cantUsable - NEW.gasto,
	gananciavsgastos = gananciavsgastos - NEW.gasto;
	RETURN NULL;
	END;
$$;


CREATE TRIGGER gasto_agregado_tg
AFTER INSERT 
ON gastosMP
FOR EACH ROW
EXECUTE PROCEDURE gasto_agregado();
