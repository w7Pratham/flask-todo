from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello Pratham! How are you? Are you Done?? or not??? privys'

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='5001',debug=True)
