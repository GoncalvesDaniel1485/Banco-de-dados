CREATE TABLE Pedidos(
  id_pedido INT PRIMARY KEY,
  valor_total decimal(15,0)
);

CREATE TABLE Cliente(
  id_cliente INT primary KEY,
  nome VARCHAR(50),
  cidade VARCHAR(50),
  id_ped INT,
  FOREIGN KEY (id_ped) REFERENCES Pedidos(id_pedido)
);

    INSERT INTO Pedidos(id_pedido, valor_total)
    values
    (1, 20.0),
    (2, 30.0),
    (3, 45.0);
    
    INSERT INTO Cliente(id_cliente, nome, cidade, id_ped)
values
    (1000, 'Ronaldo', 'Guarabira', 1),
    (1001, 'Henrique', 'Pilões', 2),
    (1002, 'Gaybriel', 'Cuitegi', 3);
    
SELECT C.id_cliente, C.nome, id_ped, P.valor_total FROM Cliente C JOIN Pedidos P ON P.id_pedido = C.id_ped;
