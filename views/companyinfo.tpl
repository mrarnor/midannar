<!DOCTYPE html>
<html>
<head>
    <title>Company info</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/stylesheet3.css" />
    <meta charset="utf-16" />
</head>
<body>
            <%
            for i in data["results"]:
                if i["key"] == k:
            %>
            <header>{{i['name']}}</header>
            <h5>bensin stadur - [ {{i['company']}} ]</h5>
            <h5>Stadur - [ {{i['name']}} ]</h5>
            <h5>Bensin - [ kronor {{i['bensin95']}} ]</h5>
            <h5>Disel - [ kronor {{i['diesel']}} ]</h5>
            <div class="map">
            <p>[Lat: {{i["geo"]["lat"]}}] [lon: {{i["geo"]["lon"]}}] <a href="https://google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z">Link</a></p>     
            </div>
            <footer>
            <a href="../">Home</a>
            </footer>
    
</body>
</html>