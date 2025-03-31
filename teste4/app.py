from flask import Flask, request, jsonify
import flask_cors
import csv

app = Flask(__name__)
flask_cors.CORS(app)

def load_data():
    data = []
    with open('data.csv', encoding='utf-8-sig') as csvfile:
        reader = csv.DictReader(csvfile, delimiter=';')
        for row in reader:
            data.append(row)
    return data

data = load_data()

@app.route('/search', methods=['GET'])
def search():
    query = request.args.get('q', '').lower()
    if not query:
        return jsonify([])

    results = []
    for record in data:
        if (query in record.get('Razao_Social', '').lower() or
            query in record.get('Nome_Fantasia', '').lower() or
            query in record.get('Modalidade', '').lower()):
            results.append(record)
    return jsonify(results)

if __name__ == '__main__':
    import os
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port, debug=True)

