CREATE TABLE produtos(
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(250),
    descricao_produto TEXT,
    categoria INT,
    preco_compra DECIMAL(10,2),
    unidade VARCHAR(50),
    fornecedor INT,
    data_inclusao DATE,
    FOREIGN KEY(categoria) REFERENCES categorias(id_categoria)
    FOREIGN KEY(fornecedor) REFERENCES fornecedores(ID)
)
