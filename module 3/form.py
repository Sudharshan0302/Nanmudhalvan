from flask import Flask
from flask import render_template
from flask import url_for
from flask import request
from flask_wtf import Form
from wtforms.fields import TextAreaField
from wtforms.fields import PasswordField
from wtforms.fields import SubmitField


app = Flask(__name__)

app.config['SECRET_KEY'] = 'i love pizza'

class UserForm(Form):
    username = TextAreaField("name of the users: ")
    password = PasswordField("user password: ")
    submit = SubmitField("enter credentials")

@app.route('/', methods = ['GET', 'POST'])
def index():
    form = UserForm()
    if request.method == 'POST':
        return render_template('display.html')
    return render_template('uploaded.html', form = form)


if __name__ == '__main__':
    app.run(debug=True, port=8080)