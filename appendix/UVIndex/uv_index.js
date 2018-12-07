// size of marker

function markerSize(uv){
    return uv*2;
};

// combining multiple layers into a group 
var allData = new L.LayerGroup();

d3.json('uv_data.json', function(data){
    L.geoJSON(data.features, {
        // convert point feature to map layer
        pointToLayer: function(feature, coord){
            return L.circleMarker(coord, {
                radius: markerSize(feature.properties.UV_value)
            });
        },
        style: function(dataFeature){
            return{
                fillColor: Color(dataFeature.properties.UV_value),
                fillOpacity: 1,
                weight: 0.1,
                color: 'black'
            }
        },

        onEachFeature: function(feature, layer){
            layer.bindPopup('<h3>' + feature.properties.city + '</h3><hr><h2>' +
            feature.properties.state + '</h2>');
        }
    }).addTo(allData);
    dataMap(allData);
});

function Color(uv){
    console.log(uv)
    if (uv > 4){
        return 'red'
    } else if (uv > 3){
        return 'darkorange'
    } else if (uv > 2){
        return 'yellow'
    } else if (uv > 1){
        return 'darkgreen'
    } else {
        return 'lightgreen'
    }
};

function dataMap(){
    var streetmap = L.tileLayer("https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}", {
        attribution: "Map data &copy; <a href=\"https://www.openstreetmap.org/\">OpenStreetMap</a> contributors, <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, Imagery © <a href=\"https://www.mapbox.com/\">Mapbox</a>",
        maxZoom: 18,
        id: "mapbox.streets",
        accessToken: API_KEY
    });
    var satellite = L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox.satellite',
        accessToken: API_KEY
    });

    var baseMaps = {
        'Street Map': streetmap,
        'Satellite': satellite
    };

    var overlayMaps = {
        'UV': allData
    };

    var myMap = L.map('map', {
        center: [
            37.77, -122.41
        ],
        zoom: 10,
        layers: [streetmap, satellite, allData]
    });

    L.control.layers(baseMaps, overlayMaps, {
        collapsed: false
    }).addTo(myMap);


    var legend = L.control({
        position: 'bottomright'
    });

    legend.onAdd = function(myMap){
        var div = L.DomUtil.create("div", "info legend"),
         magnitude = [0, 1, 2, 3, 4];
         color = [];

    div.innerHTML += "<h4 style='margin:4px'>Color Scale</h4>"

    for (var i = 0; i < magnitude.length; i++) {
        div.innerHTML += "<i style='background: " + Color(magnitude[i] +1) + "'></i> " +
          magnitude[i] + ( magnitude[i + 1] ? "&ndash;" + magnitude[i + 1] + "<br>" : "+");
      }
      return div;
    };
    legend.addTo(myMap);

}