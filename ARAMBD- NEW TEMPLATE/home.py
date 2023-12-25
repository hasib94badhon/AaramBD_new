from flask import Flask, render_template, request, redirect, url_for
import pymysql

app = Flask(__name__)

# Function to create a connection to MySQL
def create_connection():
    try:
        mydb = pymysql.connect(
            host='localhost',
            user='root',
            password='',
            database='registration'
        )
        print("Connected to MySQL database")
        return mydb
    except pymysql.Error as e:
        print(f"Error: {e}")
        return None

# Route to retrieve category names
@app.route('/', methods=['GET'])
def get_categories():
    try:
        mydb = create_connection()
        if mydb:
            with mydb.cursor() as cursor:
                cursor.execute("SELECT name FROM cat")
                categories = cursor.fetchall()
                category_names = [category[0] for category in categories]
                return render_template('index.html', categories=category_names)
    except pymysql.Error as e:
        print(f"Error: {e}")
        return f'error: Database error'
    finally:
        if mydb and mydb.open:
            mydb.close()

if __name__ == '__main__':
    app.run(debug=True)