<!DOCTYPE html>
<html>
<head>
    <title>Company</title>
    <link rel="stylesheet" type="text/css" media="screen" href="/static/stylesheet2.css" />
    <meta charset="utf-16"/>
</head>
<body>
   
    <header>
        <h1>company</h1>
    </header>
    
    <table border="1">
        <tr>
            <th>Company</th>
            <th>Name</th>
            <th>Bensin</th>
            <th>Disel</th>
        </tr>
        <%
            n = 0
            for i in data["results"]:
                if i["company"] == co:
                n += 1
        %>
            <tr>
                <td><a href="/companyinfo/{{i['key']}}">{{i['company']}}</a></td>
                <td><h3>{{i['name']}}</h3></td>
                <td><h3>{{i["bensin95"]}}</h3></td>
                <td><h3>{{i["diesel"]}}</h3></td>
            </tr>
        <% end
        end %>
    </table>

    <h3>heild stada [ {{n}} ]</h3>
    
</body>
</html>