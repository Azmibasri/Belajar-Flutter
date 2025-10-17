from flask import Flask,jsonify,request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

users = [
    {"id": 1, "name": "Azmi", "email": "azmi@example.com"},
    {"id": 2, "name": "Ayane", "email": "ayane@example.com"}
]

@app.route('/users',methods=['GET'])
def get_users():
    return jsonify(users)

@app.route('/users',methods=['POST'])
def add_user():
    data = request.get_json()
    new_user = {"id": len(users)+1, "name": data["name"], "email": data["email"]}
    users.append(new_user)
    return jsonify(new_user),201

if __name__ == "__main__":
    app.run(debug=True)
