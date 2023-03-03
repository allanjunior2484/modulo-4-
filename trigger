
-- Criando tabela de vendas
CREATE TABLE vendas (
    id INT PRIMARY KEY,
    produto VARCHAR(50),
    valor DECIMAL(10,2),
    data DATE
);

-- Criando tabela de registro de vendas
CREATE TABLE registro_vendas (
    id INT PRIMARY KEY,
    produto VARCHAR(50),
    valor DECIMAL(10,2),
    data DATE
);

-- Criando trigger para inserir registro de vendas quando uma venda é realizada
CREATE TRIGGER nova_venda AFTER INSERT ON vendas
FOR EACH ROW
BEGIN
    INSERT INTO registro_vendas (id, produto, valor, data)
    VALUES (NEW.id, NEW.produto, NEW.valor, NEW.data);
END;
