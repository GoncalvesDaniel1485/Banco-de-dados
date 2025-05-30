CREATE TABLE Estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    curso VARCHAR(30),
    idade INT,
    nota DECIMAL(3,1),
    cidade VARCHAR(30)
);

INSERT INTO Estudantes(id, nome, curso, idade, nota, cidade)
  VALUES 
    (4001, 'Gabriel', 'Edificações', 16, 2, 'Guarabira'),
    (4002, 'Daniel', 'Informática', 17, 10, 'Cuitegi'),
    (4003, 'Mathias', 'Edificações', 16, 8, 'Sapé'),
    (4004, 'Danilo', 'Contabilidade', 15, 9, 'Aracaju'),
    (4005, 'Roberto', 'Edificações', 19, 7, 'Guarabira'),
    (4006, 'Cheirazard', 'Informática', 32, 4, 'Salvador'),
    (4007, 'Beiço', 'Contabilidade', 16, 4, 'Cuitegi'),
    (4008, 'Manoel', 'Informática', 17, 6, 'Nova Cruz'),
    (4009, 'Arnaldo', 'Edificações', 18, 5, 'Buraco do Afonso'),
    (4010, 'Lusimar', 'Informática', 18, 5, 'Arara'),
    (4011, 'Afonso', 'Edificações', 17, 3, 'Buraco do Arnaldo'),
    (4012, 'Fulano', 'Contabilidade', 20, 1, 'Arara'),
    (4013, 'Sicrano', 'Edificações', 15, 0, 'Pilões'),
    (4014, 'Beltrano', 'Contabilidade', 16, 10, 'Aracaju'),
    (4015, 'Coisinha', 'Informática', 17, 7, 'Sapé'),
    (4016, 'Hidemi', 'Edificações', 18, 9, 'Arara'),
    (4017, 'Pedro', 'Contabilidade', 19, 8, 'Pilões'),
    (4018, 'Bequinha', 'Edificações', 20, 9, 'Santos'),
    (4019, 'Leirbag', 'Informática', 24, 6, 'Araçagi');
    
  SELECT COUNT(distinct curso) AS "Soma dos cursos diferentes" FROM Estudantes;
  SELECT SUM(id) AS "Soma de ID" FROM Estudantes;
  SELECT AVG(idade) AS "Média das idades" FROM Estudantes;
  SELECT min(nota) FROM Estudantes;
  SELECT max(nota) FROm Estudantes;
  SELECT cidade, COUNT(*) AS "Quantidade cidade" FROM Estudantes WHERE id BETWEEN 4001 AND 4015 GROUP BY cidade HAVING COUNT(*) = 1;
  SELECT nome, COUNT(nome) AS Quantidade, AVG(nota) AS media FROM Estudantes GROUP BY nome HAVING AVG(nota) BETWEEN 2 AND 8;
