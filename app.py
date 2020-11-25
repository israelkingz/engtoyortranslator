from flask import Flask, render_template, request, redirect, flash
from flask_mysqldb import MySQL
from datetime import datetime


app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'map'

mysql = MySQL(app)


#endpoint for search
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == "POST":
        word = request.form['word']
        # search by author or book
        cur = mysql.connection.cursor()
        cur.execute("SELECT word, meaning from addwords WHERE word LIKE %s OR meaning LIKE %s", (word, word))
        mysql.connection.commit()

        data = cur.fetchall()
        # all in the search box will return all the tuples
        if len(data) == 0 and word == 'all': 
            cur.execute("SELECT word, meaning from addwords")
            mysql.connection.commit()
            cur.close()
        if not data:
            return redirect('/addword')
        return render_template('search.html', data=data)
    return render_template('search.html')

@app.route('/addword', methods=['GET', 'POST'])
def addword():
        if request.method == "POST":
            details = request.form
            word = details['word']
            meaning = details['meaning']
            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO addwords(word, meaning) VALUES (%s, %s)", (word, meaning))
            mysql.connection.commit()
            cur.close()
            return redirect('/')
        return render_template('addword.html')

if __name__ == "__main__":
    app.run(debug=True)