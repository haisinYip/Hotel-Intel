import mysql.connector
from mysql.connector import Error

def getLocationDataFromDB():
    query = """select appcategory, app_categories.name as category, yelp_categories.name as tag, yelp_locations.* from (
            select 
            yelp_loc_to_yelp_cat.yelp_loc_id as location, 
            yelp_loc_to_app_cat.app_cat_id as appcategory, 
            yelp_loc_to_yelp_cat.yelp_cat_id as yelpcategory,
            count(yelp_loc_to_yelp_cat.yelp_cat_id) as yelpcount
            from yelp_loc_to_app_cat 
            left join yelp_loc_to_yelp_cat on yelp_loc_to_yelp_cat.yelp_loc_id=yelp_loc_to_app_cat.yelp_loc_id
            group by yelp_loc_to_yelp_cat.yelp_cat_id
            ) as source_locations
            left join yelp_locations on yelp_locations.id=location
            left join yelp_categories on yelp_categories.id=yelpcategory
            left join app_categories on app_categories.id=appcategory
            order by appcategory, yelpcount desc"""
    data = []
    try:
        conn = mysql.connector.connect(host='45.55.140.88',
                                       database='hotel_intel_db',
                                       user='anna',
                                       password='')
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
 
def getLocationData(data):
    results = []
    for result in data:
        categoryid, categoryname, yelptag, locationid, yelpid, name, url, img_url, lat, lon = result
        results.append({'categoryid' : categoryid, 'categoryname' : categoryname, 'yelptag' : yelptag, 'locationid' : locationid, 'name' : name, 'url' : url, 'img_url' : img_url, 'lat' : lat, 'lon' : lon})
    return results

def getExperienceOptions():
    dbdata = getLocationDataFromDB()
    locationdata = getLocationData(dbdata)
    return locationdata

if __name__ == '__main__':    
    locationdata = getExperienceOptions()
