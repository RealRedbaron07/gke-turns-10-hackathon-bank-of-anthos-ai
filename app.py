
@app.route('/web')
def web_demo():
    with open('templates/index.html', 'r') as f:
        return f.read()
