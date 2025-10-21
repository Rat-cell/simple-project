from flask import Flask

# Create a Flask app instance
app = Flask(__name__)

# Define a route for the homepage
@app.route('/')
def hello():
    # Return a simple string
    return '<h1>Hello, World! 🚀</h1> <h3>My app is now running in a container!</h3>'

# Run the app if this script is executed directly
if __name__ == '__main__':
    # Listen on all available network interfaces (0.0.0.0)
    # and use port 5000
    app.run(host='0.0.0.0', port=5000)