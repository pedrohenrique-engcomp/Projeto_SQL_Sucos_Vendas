ALTER TABLE ITENS_NOTAS ADD CONSTRAINT FK_VENDAS
FOREIGN KEY (NUMERO)
REFERENCES VENDAS (NUMERO);
