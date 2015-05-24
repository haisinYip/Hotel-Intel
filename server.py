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
	user = request.args.get('user') or ''
	print'user is ', user
	return render_template('index.html', location_data=json.dumps(locationdata))

@app.route("/HotelMap", methods=["GET"])
def renderMapPage():
	strng = json.dumps(getHotelsInAvgLocation((47.6063889,-122.3308333), ('2015-05-25', '2015-05-28'), 2))
	print 'rendering hotel page: \n', strng
	return render_template('HotelMap.html', hotels_data = strng )

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
