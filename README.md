# Executando os Testes

Cada um dos testes está localizado em pastas com seus respectivos nomes.

## Passos para Rodar os Testes

### Teste 1 e Teste 2
Os Testes 1 e 2 devem ser executados no **PyCharm**.

### Teste 3
O script do Teste 3 está presente no arquivo `teste3.sql`. Para executá-lo:

1. Abra um terminal na pasta `teste3`.
2. Execute o seguinte comando:
   ```sh
   mysql --local-infile=1 -u root -p < teste3.sql
   ```

> **Observação:** O script deve ser executado em um terminal Linux, pois o MySQL possui melhor suporte nesse ambiente.

### Teste 4
O serviço backend está presente no arquivo `app.py` e está hospedado no **Render**. Sendo assim, é necessário apenas rodar o frontend presente no arquivo `index.html`.

Para executar o Teste 4:

1. Abra o arquivo `index.html` em um navegador.
2. Insira o texto de busca no campo de entrada.
3. Clique no botão **"Buscar"** para iniciar a busca.

## Postman
A coleção do **Postman** está disponível no arquivo `BuscaOperadoras.json`.

