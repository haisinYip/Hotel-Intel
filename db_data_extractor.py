import mysql.connector
from mysql.connector import Error

def getDataFromDB(query):

    data = []

    try:
        conn = mysql.connector.connect(host='localhost',
                                       database='hotel_intel_db',
                                       user='root',
                                       password='foobar')
        if conn.is_connected():
            print('Connected to MySQL database')

        cursor = conn.cursor(buffered=True)
        cursor.execute(query)

        row = cursor.fetchone()

        while row is not None:
            data.append(row)
            row = cursor.fetchone()
 
    except Error as e:
        print "Database error encountered..."
        print(e)
 
    finally:
        cursor.close()
        conn.close()
        return data
 
if __name__ == '__main__':
    query = "SELECT * FROM app_categories"
    d = getDataFromDB(query)
    print d
