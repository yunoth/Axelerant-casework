from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return 'hello world!'
    #return request.headers.get('Host').split(':')[0]