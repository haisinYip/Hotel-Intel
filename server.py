import json
import urllib2
from flask import Flask, session, request, render_template, flash, redirect, url_for, g, jsonify

from db_data_extractor import *
from api_data_extractor import *

app = Flask(__name__)

@app.route("/", methods=["GET"])
def renderMainPage():
	return render_template('index.html')

@app.route("/HotelMap", methods=["GET"])
def renderMapPage():
	return render_template('HotelMap.html')

if __name__ == "__main__":
    app.run(debug=True)