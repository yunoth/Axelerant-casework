from flask import Flask
app = Flask(__name__)
import socket
#docker_short_id = socket.gethostname()

@app.route('/')
def index():
    return ("response from container id: ",socket.gethostname())
    #return request.headers.get('Host').split(':')[0]