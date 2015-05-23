# generate urls for different queries and return relevant data

import json
import urllib2
from flask import Flask, session, request, render_template, flash, redirect, url_for, g, jsonify

EXPEDIA_API_KEY = '2lV731SuJdeTFSvmWHR9LBMJAZsPc6e2'
EXPEDIA_BASE_URL = 'http://terminal2.expedia.com:80/x/hotels?'

#test locations
loc1 = (47.6063889,-122.3308333)
loc2 = (47.6226404,-122.3202315)
loc3 = (47.6738591,-122.3978372)
date = ('2015-05-25', '2015-05-28')
number_of_people = 2

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
	response = json.load(urllib2.urlopen(url))
	'''
	hotels_stripped_data = []
	hotel_info_list = response['HotelInfoList']['HotelInfo']
	for hotel in hotel_info_list:
	    geo_loc = hotel['Location']['GeoLocation']
	    street_addr = hotel['Location']['StreetAddress']
	    thumbnail_url = hotel['ThumbnailUrl']
	    details_url = hotel['DetailsUrl']
	    total_rate = hotel['Price']['TotalRate']
	    star_rating = hotel['StarRating']
	    description = hotel['Description']

	    hotel_data = { 'lat':geo_loc['Latitude'], 'lon':geo_loc['Longitude'], 'street_addr':street_addr, 'thumbnail_url':thumbnail_url, 'details_url':details_url, 'total_rate':total_rate, 'star_rating':star_rating, 'description':description }
	    hotels_stripped_data.append(hotel_data)

	return hotels_stripped_data
	'''
	return response
	
avg_loc = getAvgLocation(loc1, loc2, loc3)
hotels = getHotelsInAvgLocation(avg_loc, date, number_of_people)

if __name__ == "__main__":
    print hotels
