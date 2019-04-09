from flask import Flask, render_template
import bfsmain

app = Flask(__name__)



@app.route('/', methods=['GET'])
def main():


    bfsmain.shuffler()
    initialState = bfsmain.initial_state
    print initialState
    bfsmain.bfs(initialState)
    moves = bfsmain.backtrace()
    print moves

    return render_template('index.html', initial=initialState, moves=moves)

app.run(debug=True)
