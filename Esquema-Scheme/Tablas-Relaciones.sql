-- Por comodidad aplico 12 digitos y 2 decimales pero es algo que pueden modificar sin problema, siempre y cuando tengan en cuenta que pueda cubrir los numeros que manejen


CREATE TABLE ingresos (
 idIngreso SERIAL PRIMARY KEY,
 fechaHoraIngreso TIMESTAMP,
 descripcionIngreso VARCHAR(255),
 ingreso DECIMAL(12,2)
);


CREATE TABLE gastos (
 idGasto SERIAL PRIMARY KEY,
 fechaHoraGasto TIMESTAMP,
 descripcionGasto VARCHAR(255),
 gasto DECIMAL(12,2)
);
 

CREATE TABLE total (
 cantDisponible DECIMAL(12,2),
 ingresoTotal DECIMAL(12,2),
 gastoTotal DECIMAL(12,2),
 ingresoVsGasto DECIMAL(12,2),
 fechaHoraUltimoCambio TIMESTAMP
);

