from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Flask App is running on AWS with Docker & CodePipeline!"

if __name__ == "__main__":
    # Run on 0.0.0.0 so Docker can expose it
    app.run(host="0.0.0.0", port=5000, debug=True)
