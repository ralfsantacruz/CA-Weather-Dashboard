// size of marker

function markerSize(uv){
  return uv;
};

// combining multiple layers into a group 
var allData = new L.LayerGroup();

d3.json('weather_final.json', function(data){
  L.geoJSON(data.features, {
      // convert point feature to map layer
      pointToLayer: function(feature, coord){
          return L.circleMarker(coord, {
              radius: markerSize(feature.properties.Temperature)
          });
      },
      style: function(dataFeature){
          return{
              fillColor: Color(dataFeature.properties.Temperature),
              fillOpacity: 1,
              weight: 0.1,
              color: 'black'
          }
      },

    onEachFeature: function(feature, layer) {
      layer.bindPopup(feature.properties.city + ", " + feature.properties.state + "<br>Temp.in Cel: " +
      feature.properties.Temperature + "<br>" +  "<br>Date of obvervation:<br>" + feature.properties.Date 
      +  "<br>Cloud :" + feature.properties.Cloud + "<br>" + "<br>Pressure: " + feature.properties.Pressure + "<br");
 }
   }).addTo(allData);

   // Create a new choropleth layer
   geojson = L.choropleth(data, {

    // Define what  property in the features to use
    valueProperty: "Temperature",

    // Set color scale
    scale: ["#ffffb2", "#b10026"],

    // Number of breaks in step range
    steps: 10,

    // q for quartile, e for equidistant, k for k-means
    mode: "q",
    style: {
      // Border color
      color: "#fff",
      weight: 1,
      fillOpacity: 0.8
    },

    // Binding a pop-up to each layer
    onEachFeature: function(feature, layer) {
      layer.bindPopup(feature.properties.city + ", " + feature.properties.state + "<br>Temp.in Cel: " +
         feature.properties.Temperature + "<br>" +  "<br>Date of obvervation:<br>" + feature.properties.Date 
         +  "<br>Cloud :" + feature.properties.Cloud + "<br>" + "<br>Pressure: " + feature.properties.Pressure + "<br");
    }
  }).addTo(allData);

  dataMap(allData);
});

function Color(uv){
  console.log(uv)
  if (uv > 20){
      return 'red'
  } else if (uv > 15){
      return 'darkorange'
  } else if (uv > 10){
      return 'yellow'
  } else if (uv > 5){
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
      'Temperature': allData
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