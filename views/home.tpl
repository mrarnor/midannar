

<!DOCTYPE html>
<html>
<head>
    <title>midVerkefni</title>
    <link rel="stylesheet" type="text/css" href="/static/stylesheet.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <meta charset="utf-16" />
</head>
<body>
    
    <header class="header">
        <h1>midannarverkefni</h1>
    </header>
   
        <div class="main">
            <div class="row">
            <div class="column border-switch-one">
        <img src="/static/atlantsolia.svg" alt="atlantsolia">
        </div>
        <div class="column">
            
        <img src="/static/ORX.png" alt="Orkan-bensin">
        </div>
        
        <div class="column">
        <img src="/static/n1.svg" alt="n1-bensin">
        </div>
        <div class="column">
        <img src="/static/olis.svg" alt="olis">
        </div>
        <div class="column border-switch-two">
        <img src="/static/ob.svg" alt="odyrt-bensin-bensin">
        </div>
        <div class="column">
        <img src="/static/costco.svg" alt="costco">
        </div>


        </div>
    
    
    <%
        le = len(data["results"])

        for i in range(le-1):

        if (data["results"][i]["company"] != data["results"][i - 1]["company"]):
    %>
            <div class="border">
            <a href="/company/{{data['results'][i]['company']}}">{{data["results"][i]["company"]}}</a>
        </div>
        
        <% end
    end %>
    
    <%
        minpriceP = 2000.0
        minpriceD = 2000.0

        le = len(data["results"])
        c = 0
        for i in range(le -1):
            c=i
            if minpriceP > data["results"][i]["bensin95"]:
                minpriceP = data["results"][i]["bensin95"]
                companyP = data["results"][i]["company"]
            end

            if minpriceD > data["results"][i]["diesel"]:
                minpriceD = data["results"][i]["diesel"]
                companyD = data["results"][i]["company"]
            end
    %>
    <% end
    %>

    </div>
        <aside class="aside">
        <h3>Besta Verdid:</h3>
        <h4>Bensin: <i>{{minpriceP}}</i>kr. {{companyP}}</h4>
        <h4>Disel: <i>{{minpriceD}}</i>kr. {{companyD}}</h4>
    
    </aside>
    <%
        end
    end
    %>
    <%
        import datetime
        t = data["timestampPriceCheck"]
        t = t [:19]
        d = datetime.datetime.strptime(t, '%Y-%m-%dT%H:%M:%S')
    %>
    
    <div class="update">
        <div class="footer">
        <p>last update: {{d.strftime('%d:%m-%Y-Kl.%H:%M')}}</p>
        </div>
    </div>
    
    
    
    
</body>
</html>