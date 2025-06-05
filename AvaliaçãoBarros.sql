CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    candidate_name VARCHAR(100),
    party VARCHAR(50)
);

CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);

CREATE TABLE votes (
    vote_id INT PRIMARY KEY,
    id_candidate INT,
    id_region INT,
    vote_count INT,
    FOREIGN KEY (id_candidate) REFERENCES candidates(candidate_id),
    FOREIGN KEY (id_region) REFERENCES regions(region_id)
);

INSERT INTO candidates(candidate_id, candidate_name, party)
VALUES 
(1, 'Bolsonaro', 'PT'),
(2, 'Lula', 'PL'),
(3, 'Tiringa', 'TT');

INSERT INTO regions(region_id, region_name)
VALUES
(11, 'Nordeste'),
(12, 'Sudeste'),
(13, 'Centro_Oeste');

INSERT INTO votes(vote_id, id_candidate, id_region, vote_count)
VALUES
(1, 1, 12, 237),
(2, 2, 11, 609),
(3, 3, 13, 202),
(4, 1, 11, 501),
(5, 1, 13, 69),
(6, 2, 12, 96),
(7, 2, 13, 137),
(8, 3, 12, 850),
(9, 3, 11, 420);

/* total de voto por candidato */
SELECT 
    candidate_name AS 'Candidatos',
    SUM(vote_count) AS 'Soma dos votos por candidato'
FROM 
    votes v JOIN candidates c ON v.id_candidate = c.candidate_id
GROUP BY 
    candidate_id;

/* média de votos por região */
SELECT 
    region_name AS 'Nome da região',
    AVG(vote_count) AS 'Media dos votos por região' 
FROM 
    votes v 
JOIN 
    regions r ON v.id_region = r.region_id
GROUP BY 
    region_id;

/* Candidatos com o maior número de votos em uma única região */
SELECT 
    c.candidate_name AS 'Candidatos',
    r.region_name AS 'Nome da Região',
    v.vote_count AS 'Total de Votos'
FROM 
    votes v
JOIN 
    candidates c ON v.id_candidate = c.candidate_id
JOIN 
    regions r ON v.id_region = r.region_id
ORDER BY 
    v.vote_count DESC 
LIMIT 3;

/* Região com o maior número de votos: */
SELECT 
    region_name AS 'Nome da região', 
    vote_count AS 'Qtd de votos'
FROM 
    votes v 
JOIN 
    regions r ON v.id_region = r.region_id
WHERE 
    v.vote_count = (SELECT MAX(vote_count) FROM votes);
    
/* Candidato com o maior número de votos */
SELECT 
    candidate_name AS 'Candidato',
    vote_count AS 'Qtd de votos'
FROM 
    votes v
JOIN
    candidates c ON v.id_candidate = c.candidate_id
WHERE 
    v.vote_count = (SELECT MAX(vote_count) FROM votes);
  
/* Candidatos com mais de 500 votos */
SELECT 
    candidate_name AS 'Candidatos',
    vote_count AS 'Qtd de votos'
FROM 
    votes v
JOIN 
    candidates c ON v.id_candidate = c.candidate_id
WHERE 
    v.vote_count HAVING vote_count > 500;

/* Número de votos por região e por candidato */
SELECT 
    region_name AS 'Nome da região', 
    candidate_name AS 'Candidatos', 
    vote_count AS 'Qtd de votos'
FROM 
    votes v 
JOIN 
    candidates c ON v.id_candidate = c.candidate_id
JOIN 
    regions r ON v.id_region = r.region_id
ORDER BY 
    region_name, candidate_name;

/* Crie mais duas consultas que façam uso das funções(min, max, AVG, etc) e do group by usando having. */

/* primeira consulta */

SELECT 
    candidate_name AS 'Candidato',
    region_name AS 'Região',
    vote_count AS 'Qtd_votos',
    vote_id
FROM 
    votes v
JOIN
    candidates c ON v.id_candidate = c.candidate_id
JOIN 
    regions r ON v.id_region = r.region_id
GROUP BY
    v.vote_id
HAVING
    v.vote_id between 5 and 9
ORDER BY
    v.vote_id ASC;

/* segunda consulta */
SELECT 
    candidate_name AS 'Candidato',
    MIN(v.vote_count) AS 'Mínimo',
    MAX(v.vote_count) AS 'Máximo',
    AVG(v.vote_count) AS 'Média',
    SUM(v.vote_count) AS 'Total'
FROM 
    votes v
INNER JOIN 
    candidates c ON v.id_candidate = c.candidate_id
GROUP BY 
    c.candidate_name;
