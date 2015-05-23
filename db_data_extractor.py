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
    query = "select yelp_locations.id,yelp_loc_to_yelp_cat.yelp_loc_id, count(*) from yelp_locations,yelp_loc_to_yelp_cat where yelp_locations.id=yelp_loc_to_yelp_cat.yelp_loc_id group by yelp_locations.id order by count(*) DESC LIMIT 5"
    d = getDataFromDB(query)
    print d
