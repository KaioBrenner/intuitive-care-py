# Executando os Testes

Cada um dos testes está organizado em pastas com seus respectivos nomes.

## Passos para Rodar os Testes

### Teste 1 e Teste 2
Os Testes 1 e 2 devem ser executados no **PyCharm**.

### Teste 3
O script do Teste 3 está disponível no arquivo `teste3.sql`. Para executá-lo:

1. Abra um terminal na pasta `teste3`.
2. Execute o seguinte comando:
   ```sh
   mysql --local-infile=1 -u <seu_usuario> -p < teste3.sql
   ```

> **Observação:** O script deve ser executado em um terminal Linux, pois o MySQL possui melhor suporte nesse ambiente.

### Teste 4
O serviço **backend** está presente no arquivo `app.py` e está hospedado no **Render**.
O **frontend** está presente no arquivo `index.html` e está hospedado no **Vercel**.

- 🔗 **Backend:** [intuitive-care-py.onrender.com](https://intuitive-care-py.onrender.com/search?q=bradesco)
- 🔗 **Frontend:** [intuitive-care-py.vercel.app](https://intuitive-care-py.vercel.app/)

#### Executando o Teste 4 localmente:

1. Inicie o backend executando o arquivo `app.py`.
2. No arquivo `index.html`, altere o endpoint da API para apontar para o backend local.
3. Abra o arquivo `index.html` em um navegador.
4. Insira o texto de busca no campo de entrada.
5. Clique no botão **"Buscar"** para iniciar a busca.

## Postman
A coleção do **Postman** está disponível no arquivo `BuscaOperadoras.json`.

### Como utilizar:
1. Abra o **Postman**.
2. Importe o arquivo `BuscaOperadoras.json`.
3. Execute as requisições conforme necessário.

