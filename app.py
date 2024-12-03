from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/processamento', methods=['POST'])
def process_data():
    dados = request.json
    if not dados:
        return jsonify({"error": "Nenhum dado enviado"}), 400

    processo_dados = {"original": dados, "processo": "dados processados com sucesso"}
    
    return jsonify(processo_dados), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
