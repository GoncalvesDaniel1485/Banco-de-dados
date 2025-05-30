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
(11, 'PB'),
(12, 'SP'),
(13, 'RJ');

INSERT INTO votes(vote_id, id_candidate, id_region, vote_count)
VALUES
(1, 1, 12, 237),
(2, 2, 11, 409),
(3, 3, 13, 202),
(4, 1, 11, 501),
(5, 1, 13, 69),
(6, 2, 12, 96),
(7, 2, 13, 137),
(8, 3, 12, 129),
(9, 3, 11, 420);

SELECT candidate_name, candidate_id, SUM(vote_count) AS 'Soma dos votos por candidato' FROM votes v JOIN candidates c ON v.id_candidate = c.candidate_id
GROUP BY candidate_id;

SELECT region_name, region_id, AVG(vote_count) AS 'Media dos votos por região' FROM votes v JOIN regions r ON v.id_region = r.region_id
GROUP BY region_id;

SELECT id_candidate, id_region, vote_count FROM votes ORDER BY vote_count DESC LIMIT 3;

SELECT id_region, MAX(vote_count) FROM votes WHERE vote_count GROUP BY id_region ORDER BY id_region LIMIT 1;

SELECT id_candidate, id_region, vote_count FROM votes ORDER BY vote_count DESC LIMIT 1;

SELECT id_candidate, vote_count FROM votes WHERE vote_count HAVING vote_count > 500; 

SELECT candidate_name, region_name, vote_count FROM votes v JOIN candidates c ON v.id_candidate = c.candidate_id
JOIN regions r ON v.id_region = r.region_id
ORDER BY candidate_name;

SELECT vote_id, vote_count FROM votes GROUP BY vote_id HAVING vote_id between 5 AND 9;
SELECT min(vote_count), max(vote_count), AVG(vote_count), SUM(vote_count) FROM votes;
