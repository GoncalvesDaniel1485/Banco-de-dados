/*--Exercício SQL com Funções de Agregação e Cláusulas
--Considere a seguinte tabela:
--Tabela: Estudantes*/

/*Exercícios:
1) Encontre todos os estudantes cujo nome começa com 'A'


2) Liste os estudantes ordenados por nota (da maior para a menor)


3) Encontre a média, a menor e a maior nota


4) Conte quantos estudantes existem no total


5) Conte quantos estudantes existem em cada curso


6) Calcule a soma das idades dos estudantes


7) Mostre os cursos que têm mais de 5 estudantes


8) Para cidades que começam com 'S', mostre a média de notas por curso, apenas para cursos que possuem média superior a 7*/



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

SELECT * FROM Estudantes where nome like 'A%';
SELECT * FROM Estudantes ORDER BY nota;
SELECT AVG(nota) FROM Estudantes;
SELECT MIN(nota) FROM Estudantes;
SELECT MAX(nota) FROM Estudantes;
SELECT COUNT(*) FROM Estudantes;
SELECT SUM(idade) FROM Estudantes;
SELECT curso, COUNT(*) AS Quantidade_curso FROM Estudantes GROUP BY curso;
SELECT curso, COUNT(*) AS Total_de_estudantes
FROM Estudantes
GROUP BY curso
HAVING COUNT(*) > 5;
SELECT curso, AVG(nota) AS Media_da_nota
FROM Estudantes
WHERE cidade LIKE 'S%'
GROUP BY curso
HAVING AVG(nota) > 7;
  
