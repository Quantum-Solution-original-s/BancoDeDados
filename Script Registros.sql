USE QuantumSensors;

-- INSERÇÃO DE REGISTROS NAS TABELAS


-- ENDEREÇO_EMPRESA
INSERT INTO localizacaoEmpresa (estado, cidade, logradouro, numero, bairro, cep) VALUES
('Bahia', 'Governador Mangabeira', 'Rua Povoado Bonsucesso', 69, 'Zona Rural',  44350-000),
('Bahia', 'Cidade Cruz das Almas', 'Rodovia Br 101, KM 194', NULL, 'Zona Rural',  44.380-000),
('Rio Grande do Sul', 'Santa Cruz do Sul', 'Estrada do Couto, KM 3', NULL, 'Arroio do Couto', NULL),
('Santa Catarina', 'Itaiópolis', 'Av. Alexandre Ricardo Worel', 3175, 'Lucena', 89340-000);

    
-- EMPRESA
INSERT INTO empresa (cnpj, nomeEmpresa, email, senha, ddd, telefone, qtdEstufas, tipoPlano, fkLocalizacao ) VALUES
(23398926000182, 'Emporio Tabaco', 'cadastro@emporiodotabaco.com.br', '012b3222', 19, 35431550, 2, 'QuantumStandard',  1 ),
(26318116000167, 'Tabacaria Trevo', 'contabilidade@tabacariatrevo.com', 'tre9888', 21, 36716826, 5, 'QuantumPremium',  2),
(47543145000100, 'Cigarrete Company', 'institucional@cigarretecompany.com', '0333ci', 42, 35938100, 10, 'QuantumPremium',  3),
(21942051000102, 'SutliffTobacco Company', "sutliffbacco@company.com", 'su7667', 62, 30974825, 16, 'QuantumStandard', 4);



-- SENSORES
INSERT INTO sensor (nome, codigo, dtInstalacao, statusSensor, fkEmpresa) VALUES
('Sensor Estufa 1"', 'ABC123', '2023-10-05', 'ativo', 1),
('DHT11-001', 'XYZ789', '2023-10-06', 'ativo', 2),
('Sensor de Temperatura e Umidade Principal', 'LMN456', '2023-10-07', 'inativo', 3),
('Sensor A', 'PQR321', '2023-10-08', 'manutencao', 4);


-- REGISTROS
INSERT INTO registro (temperatura, umidade, fkSensor) VALUES
(18.2, 69, 2),
(17.4, 68, 4),
(20.5, 70, 2),
(19.3, 73, 1),
(23.7, 50, 3),
(15.8, 75, 1); -- ERRO PARA INSERIR ESSES VALORES: Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`quantumsensors`.`registro`, CONSTRAINT `fkSensor` FOREIGN KEY (`fkSensor`) REFERENCES `sensor` (`idSensor`))



