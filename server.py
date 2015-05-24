import json
import urllib2
from flask import Flask, session, request, render_template, flash, redirect, url_for, g, jsonify

from db_data_extractor import *
from api_data_extractor import *

app = Flask(__name__, static_url_path='/static')

@app.route("/", methods=["GET"])
def renderMainPage():
	locationdata = getExperienceOptions()
	print 'displaying console data\n\n', locationdata
	funky_time = request.args.get('df') or None
	if funky_time:
		print 'funky: ', get_hotel_params(request)
	return render_template('index.html', location_data=json.dumps(locationdata))

@app.route("/HotelMap", methods=["GET"])
def renderMapPage():
	strng = json.dumps(getHotelsInAvgLocation((47.6063889,-122.3308333), ('2015-05-25', '2015-05-28'), 2))
	print 'rendering hotel page: \n', strng
	return render_template('HotelMap.html', hotels_data = strng )

def fmt_xp_date(date_string):
	mm = date_string[0:2]
	dd = date_string[3:5]
	yyyy = date_string[6:]
	date = "%s-%s-%s" % (yyyy,mm,dd)
	return date

def fmt_xp_ll(latlon_string):
	lat, lon = latlon_string.split(',')
	ll = (float(lat), float(lon))
	return ll

def get_hotel_params(request):
	#get string params
	str_date_from = request.args.get('df')
	str_date_to = request.args.get('dt')
	str_guests = request.args.get('g')
	str_food_ll = request.args.get('fll')
	str_entertainment_ll = request.args.get('ell')
	str_nightlife_ll = request.args.get('nll')
	#convert to actual objects
	guests = int(str_guests)
	date = (fmt_xp_date(str_date_from), fmt_xp_date(str_date_to))
	food_ll = fmt_xp_ll(str_food_ll)
	entertainment_ll = fmt_xp_ll(str_entertainment_ll)
	nightlife_ll = fmt_xp_ll(str_nightlife_ll)
	#give me shit
	return (guests, date, food_ll, entertainment_ll, nightlife_ll)
# #test locations
# loc1 = (47.6063889,-122.3308333)
# loc2 = (47.6226404,-122.3202315)
# loc3 = (47.6738591,-122.3978372)
# date = ('2015-05-25', '2015-05-28')
# number_of_people = 2


#   'df=' + date_from + 
#   '&dt=' + date_to + 
#   '&g=' + guests + 
#   '&fll=' + experience_results[food_selection]['lat'] + ',' + experience_results[food_selection]['lon'] + 
#   '&ell=' + experience_results[entertainment_selection]['lat'] + ',' + experience_results[entertainment_selection]['lon'] + 
#   '&nll=' + experience_results[nightlife_selection]['lat'] + ',' + experience_results[nightlife_selection]['lon'];


if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0')
