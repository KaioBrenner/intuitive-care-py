from flask import Flask, request, jsonify
import flask_cors
import csv

app = Flask(__name__)
flask_cors.CORS(app)

# Função para carregar os dados do CSV
def load_data():
    data = []
    with open('data.csv', encoding='utf-8-sig') as csvfile:
        reader = csv.DictReader(csvfile, delimiter=';')
        for row in reader:
            data.append(row)
    return data

# Carrega os registros ao iniciar o servidor
data = load_data()

@app.route('/search', methods=['GET'])
def search():
    query = request.args.get('q', '').lower()
    if not query:
        return jsonify([])

    results = []
    for record in data:
        # Buscando nos campos Razao_Social, Nome_Fantasia e Modalidade
        if (query in record.get('Razao_Social', '').lower() or
            query in record.get('Nome_Fantasia', '').lower() or
            query in record.get('Modalidade', '').lower()):
            results.append(record)
    return jsonify(results)

if __name__ == '__main__':
    app.run(debug=True)
