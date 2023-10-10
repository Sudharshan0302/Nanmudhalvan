# #upload file

# from flask import Flask
# from flask import render_template
# from flask import url_for
# from flask import redirect
# from flask import request
# import os
# from werkzeug.utils import secure_filename

# app = Flask(__name__)

# app.config['upload_folder'] = 'C:/Users/Rajasekar/Desktop/projects/nm fs/flask/img'
# app.config['secret_key'] = 'i_love_pizza'
# ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg'])

# @app.route('/', methods = ['GET', 'POST'])
# def index():
#     if request.method == 'POST':
#         file = request.files['file']
#         if 'file' not in request.files:
#             return redirect('/')
#         elif (file.filename == ''):
#             return ("<script> alert('file not Found !)</script>")
#         elif (file):
#             filename = secure_filename(file.filename)
#             file.save(os.path.join(app.config['upload_folder'], filename))
#             return redirect('/')
#         else:
#             return  redirect(request.url)
#     return render_template('upload.html')


# if __name__ == '__main__':
#     app.run(debug=True, port=5000)

