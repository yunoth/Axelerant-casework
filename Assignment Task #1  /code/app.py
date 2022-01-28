from flask import Flask
app = Flask(__name__)
import socket

@app.route('/')
def index():
    resp="response from container id: "+socket.gethostname()
    return str(resp)