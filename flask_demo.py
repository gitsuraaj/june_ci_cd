from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/ping", methods=['GET'])
def pinger():
    return "<p>Hello i am under water!</p>"

@app.route("/json", methods=['GET'])
def json_check():
    return {"message": "Hi i am json!"}