
CREATE DATABASE IF NOT EXISTS teste3;
USE teste3;

SET GLOBAL local_infile = 1;


DROP TABLE IF EXISTS t1_2023;
CREATE TABLE t1_2023 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2023/1T2023.csv'
INTO TABLE t1_2023
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t2_2023;
CREATE TABLE t2_2023 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2023/2T2023.csv'
INTO TABLE t2_2023
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t3_2023;
CREATE TABLE t3_2023 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2023/3T2023.csv'
INTO TABLE t3_2023
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t4_2023;
CREATE TABLE t4_2023 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2023/4T2023.csv'
INTO TABLE t4_2023
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));


DROP TABLE IF EXISTS t1_2024;
CREATE TABLE t1_2024 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2024/1T2024.csv'
INTO TABLE t1_2024
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t2_2024;
CREATE TABLE t2_2024 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2024/2T2024.csv'
INTO TABLE t2_2024
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t3_2024;
CREATE TABLE t3_2024 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2024/3T2024.csv'
INTO TABLE t3_2024
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));

DROP TABLE IF EXISTS t4_2024;
CREATE TABLE t4_2024 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data DATE NOT NULL,
  reg_ans INT NOT NULL,
  cd_conta_contabil BIGINT NOT NULL,
  descricao TEXT NOT NULL,
  vl_saldo_inicial DECIMAL(15,2) NOT NULL,
  vl_saldo_final DECIMAL(15,2) NOT NULL
);
LOAD DATA LOCAL INFILE '2024/4T2024.csv'
INTO TABLE t4_2024
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@data, @reg_ans, @cd_conta_contabil, @descricao, @vl_saldo_inicial, @vl_saldo_final)
SET 
  data = STR_TO_DATE(@data, '%Y-%m-%d'),
  reg_ans = @reg_ans,
  cd_conta_contabil = @cd_conta_contabil,
  descricao = @descricao,
  vl_saldo_inicial = CAST(@vl_saldo_inicial AS DECIMAL(15,2)),
  vl_saldo_final = CAST(@vl_saldo_final AS DECIMAL(15,2));


DROP TABLE IF EXISTS empresas;
CREATE TABLE empresas (
  reg_ans INT NOT NULL PRIMARY KEY,
  razao_social VARCHAR(255) NOT NULL,
  cnpj VARCHAR(50) NOT NULL
);
LOAD DATA LOCAL INFILE 'Relatorio_cadop.csv'
INTO TABLE empresas
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(reg_ans, cnpj, razao_social);


DROP VIEW IF EXISTS all_data;
CREATE VIEW all_data AS
  SELECT * FROM t1_2023
  UNION ALL
  SELECT * FROM t2_2023
  UNION ALL
  SELECT * FROM t3_2023
  UNION ALL
  SELECT * FROM t4_2023
  UNION ALL
  SELECT * FROM t1_2024
  UNION ALL
  SELECT * FROM t2_2024
  UNION ALL
  SELECT * FROM t3_2024
  UNION ALL
  SELECT * FROM t4_2024;


-- O ideal seria utilizar uma consulta baseada em datas dinâmicas para garantir flexibilidade.
-- No entanto, devido à limitação de dados disponíveis, foi necessário definir um valor fixo, 
-- utilizando "a.data >= '2024-10-01'" para representar o último trimestre.

SELECT '### TOP 10 OPERADORAS - ÚLTIMO TRIMESTRE ###' AS titulo;

SELECT 
  e.reg_ans,
  e.cnpj,
  e.razao_social,
  SUM(a.vl_saldo_final) AS total_despesas
FROM all_data a
JOIN empresas e ON a.reg_ans = e.reg_ans
WHERE a.descricao LIKE 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'
  AND a.data >= '2024-10-01'
GROUP BY e.reg_ans, e.razao_social, e.cnpj
ORDER BY total_despesas DESC
LIMIT 10;

SELECT '### TOP 10 OPERADORAS - ÚLTIMO ANO ###' AS titulo;

SELECT 
  e.reg_ans,
  e.cnpj,
  e.razao_social,
  SUM(a.vl_saldo_final) AS total_despesas
FROM all_data a
JOIN empresas e ON a.reg_ans = e.reg_ans
WHERE a.descricao LIKE 'EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS  DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'
  AND a.data >= '2024-01-01'
GROUP BY e.reg_ans, e.razao_social, e.cnpj
ORDER BY total_despesas DESC
LIMIT 10;


SELECT 'Importação e análises finalizadas!' AS msg;

