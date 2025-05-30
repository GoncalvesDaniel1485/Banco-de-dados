CREATE TABLE Estudantes(
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    curso VARCHAR(30),
    idade INT,
    nota DECIMAL(3,1),
    cidade VARCHAR(30)
);
CREATE TABLE Escolas(
    id_esc INT PRIMARY KEY,
    nome_esc VARCHAR(50),
    id_est INT,
    foreign KEY (id_est) references Estudantes(id)
);

INSERT INTO Estudantes(id, nome, curso, idade, nota, cidade)
  VALUES 
    (4001, 'Gabriel', 'Edificações', 16, 2, 'Guarabira'),
    (4002, 'Daniel', 'Informática', 17, 10, 'Cuitegi');
    
  INSERT INTO Escolas(id_esc, nome_esc, id_est)
  VALUES
    (1000, 'IFPB', 4001),
    (2001, 'Dom marcelo', 4002);
  
  SELECT id, nome, curso, cidade, nota, idade, nome_esc AS "escola" FROM Estudantes E JOIN Escolas Es ON E.id = Es.id_est;
