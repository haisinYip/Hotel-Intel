# generate urls for different queries and return relevant data

import json
import urllib2
from flask import Flask, session, request, render_template, flash, redirect, url_for, g, jsonify

EXPEDIA_API_KEY = '2lV731SuJdeTFSvmWHR9LBMJAZsPc6e2'
EXPEDIA_BASE_URL = 'http://terminal2.expedia.com:80/x/hotels?'

#test locations
'''
loc1 = (47.6063889,-122.3308333)
loc2 = (47.6226404,-122.3202315)
loc3 = (47.6738591,-122.3978372)
date = ('2015-05-25', '2015-05-28')
number_of_people = 2
'''

# compute avg location
def getAvgLocation(location_1, location_2, location_3):
	avg_lat = (location_1[0] + location_2[0] + location_3[0])/3
	avg_long = (location_1[1] + location_2[1] + location_3[1])/3
	avg_location = (avg_lat, avg_long)
	return avg_location 

# return hotels in avg location 
def getHotelsInAvgLocation(avg_location, date, number_of_people):
	query = 'maxhotels=10&location=' + str(avg_location[0]) + '%2C%20' + str(avg_location[1]) + '&radius=2km&checkInDate=' + date[0] + '&checkOutDate=' + date[1] + '&adults=' + str(number_of_people) + '&sort=price&apikey=' + EXPEDIA_API_KEY
	url = EXPEDIA_BASE_URL + query
	print "getting info from url ", url
	response = json.load(urllib2.urlopen(url))
	return response
