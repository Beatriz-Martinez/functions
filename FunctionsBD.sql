DELIMITER $$

CREATE FUNCTION retornaValor(IN id INT)
RETURNS INT
BEGIN
    SELECT (nomedovendedor, mesdavenda, anodavenda, comissao, valortotalrecebido) FROM questao1 WHERE 
END$$
DELIMITER ;


DELIMITER $$

CREATE FUNCTION retornacodigo(p_idcategoria INT, p_idfabricante INT )
RETURNS INT
BEGIN
    DECLARE @vender AS INT
    SET @vender = SELECT MAX (quantidade_vendas) FROM codigo WHERE idcategoria = p_idcategoria AND idfabricante = p_idfabricante
       DECLARE @data AS VARCHAR(80)
    SET @data = SELECT(mes) FROM empresa WHERE quantidade_vendas = @vendas
    RETURN @data

END$$