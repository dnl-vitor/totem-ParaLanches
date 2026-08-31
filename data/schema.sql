CREATE TABLE `usuario` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `senha` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
);

CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `valor` decimal(5,2) NOT NULL,
  `data_pedido` datetime DEFAULT CURRENT_TIMESTAMP,
  `nome_cliente` int NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_pedido_usuario` (`nome_cliente`),
  CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`nome_cliente`) REFERENCES `usuario` (`id_user`) 
  ON UPDATE CASCADE
  ON DELETE RESTRICT
);

-- tire as cráses para evitar problemas de sintaxe --

