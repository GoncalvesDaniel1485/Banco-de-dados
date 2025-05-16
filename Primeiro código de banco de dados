CREATE TABLE Cidade(
Cidade_ID INT PRIMARY KEY,
Nome_city VARCHAR(120)
);

CREATE TABLE Curso(
Curso_ID INT PRIMARY KEY,
Nome_Cu VARCHAR(120),
ID_Cidade INT,
FOREIGN KEY (ID_Cidade) REFERENCES Cidade(Cidade_ID)
);

CREATE TABLE Aluno(
Aluno_ID INT PRIMARY KEY,
Nome_Al VARCHAR(200),
ID_Cidade INT,
ID_Curso INT,
FOREIGN KEY (ID_Cidade) REFERENCES Cidade(Cidade_ID),
FOREIGN KEY (ID_Curso) REFERENCES Curso(Curso_ID)
);

INSERT INTO Cidade(Cidade_ID, Nome_city)
VALUES 
(10001, 'Guabraira'), 
(10002, 'Creuzagi'), 
(10003, 'Iplões');

INSERT INTO Curso(Curso_ID, Nome_Cu, ID_Cidade)
VALUES 
(4001, 'infortmatlca', 10001), 
(4002, 'deifgações', 10002), 
(4003, 'Combartilidade', 10001);

INSERT INTO Aluno (Aluno_ID, Nome_Al, ID_Cidade, ID_Curso)
VALUES 
(1024, 'Robertu', 10001, 4001), 
(2048, 'Ronaldin', 10002, 4002), 
(4096, 'Glbiei', 10001, 4003);

SELECT * FROM Curso;

UPDATE Cidade
SET Nome_city = 'acarçagi'
WHERE Cidade_ID = 10001;

DELETE FROM Cidade
WHERE Cidade_ID = 10003;

SELECT * FROM Cidade;

SELECT Nome_Cu, Nome_city, Nome_Al
FROM Aluno A
JOIN Curso C
ON A.ID_Curso = C.Curso_ID
JOIN Cidade Cr
ON A.ID_Cidade = Cr.Cidade_ID;
