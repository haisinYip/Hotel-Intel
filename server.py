import json
import urllib2
from flask import Flask, session, request, render_template, flash, redirect, url_for, g, jsonify

app = Flask(__name__)

EXPEDIA_API_KEY = '2lV731SuJdeTFSvmWHR9LBMJAZsPc6e2'

'''
@app.route("/<id>")
def fun(id):
    return render_template('page.html', name=id)
'''

@app.route("/api", methods=["GET"])
def getApiData():
    url = 'http://terminal2.expedia.com/x/suggestions/regions?query=las%20vegas&apikey=' + EXPEDIA_API_KEY
    data = json.load(urllib2.urlopen(url))
    print data["sr"][0]["@type"]
    return jsonify(data)

if __name__ == "__main__":
    app.run(debug=True)