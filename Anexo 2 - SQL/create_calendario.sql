CREATE TABLE calendario (
	dates DATE,
	ano VARCHAR(5),
	mes VARCHAR(5),
	nome_mes VARCHAR(15),
	trimestre VARCHAR(5),
	dia VARCHAR(5),
	dia_da_semana VARCHAR(25),
	tipo_dia VARCHAR(25)
);

COPY calendario(dates, ano, mes, nome_mes, trimestre, dia, dia_da_semana, tipo_dia)
FROM 'C:\Program Files\PostgreSQL\15\temp\calendario.csv'
DELIMITER ';'
CSV HEADER
ENCODING 'latin1';

SELECT * FROM calendario;