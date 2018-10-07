
import bottle
from bottle import *
bottle.debug(True)
import json
import urllib.request, json




with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data = json.loads(url.read().decode())




@route("/static/<skra>")
def static(skra):
    return static_file(skra, root="./static")




@route("/")
def index():
    return template("home.tpl", data=data)




@route("/company/<company>")
def index(company):
    return template("company.tpl", data=data, co=company)



@route("/companyinfo/<key>")
def index(key):
    return template('companyinfo.tpl', data=data, k=key)








@error(404)
def villa(error):
    return "<h2>Error 404</h2>"





#run(debug=True)
run(host="0.0.0.0", port=os.environ.get('PORT'))

