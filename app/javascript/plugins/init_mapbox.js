import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers) => {
  if (markers.length > 0) {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
}};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    if (marker) {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this
      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '50px';
      element.style.height = '50px';

      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
  }});
};


const addMarkerToMap = (map, marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window);

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/thiago690/ckta82lr9224k17mm42jbzaty'
    });
// mapbox://styles/thiago690/ckt0ik1gy01kg17pdzfw2e6a1
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }));
    if (mapElement.dataset.markers != 'null') {
      const markers = JSON.parse(mapElement.dataset.markers);

      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    }

      map.on('load', () => {
        if (mapElement.dataset.properties != 'null') {
          map.addSource('dangers', {
            'type': 'geojson',
            data:
            {
              "type": "FeatureCollection",
              "features": JSON.parse(mapElement.dataset.properties)
            }
          });

          map.addLayer({
            'id': 'dangers-heat',
            'type': 'heatmap',
            'source': 'dangers',
            'maxzoom': 15,
            'paint': {
              'heatmap-weight': {
                property: 'danger',
                type: 'interval',
                stops: [
                  [1, 0],
                  [5, 1]
                ]
              },
              // increase intensity as zoom level increases
              'heatmap-intensity': {
                stops: [
                  [11, 1],
                  [15, 3]
                ]
              },
              // assign color values be applied to points depending on their density
              'heatmap-color': [
                'interpolate',
                ['linear'],
                ['heatmap-density'],
                0,
                'rgba(236,222,239,0)',
                0.2,
                'rgb(208,209,230)',
                0.4,
                'rgb(166,189,219)',
                0.6,
                'rgb(103,169,207)',
                0.8,
                'rgb(28,144,153)'
              ],
              // increase radius as zoom increases
              'heatmap-radius': {
                stops: [
                  [11, 15],
                  [15, 20]
                ]
              },
              // decrease opacity to transition into the circle layer
              'heatmap-opacity': {
                default: 1,
                stops: [
                  [14, 1],
                  [15, 0]
                ]
              }

            }

            },
            'waterway-label'
          );

          map.addLayer({
            'id': 'dangers-point',
            'type': 'circle',
            'source': 'dangers',
            'minzoom': 14,
            'paint': {
              'circle-radius': {
                property: 'dangers',
                type: 'interval',
                stops: [
                  [{ zoom: 15, value: 1 }, 5],
                  [{ zoom: 15, value: 5 }, 10],
                  [{ zoom: 22, value: 1 }, 20],
                  [{ zoom: 22, value: 5 }, 50]
                ]
              },

              'circle-color': {
                property: 'dangers',
                type: 'interval',
                stops: [
                  [1, 'rgba(236,222,239,0)'],
                  [2, 'rgb(208,209,230)'],
                  [3, 'rgb(166,189,219)'],
                  [4, 'rgb(103,169,207)'],
                  [5, 'rgb(1,108,89)']
                ]
              },
              'circle-stroke-color': 'white',
              'circle-stroke-width': 1,
              'circle-opacity': {
                stops: [
                  [14, 0],
                  [15, 1]
                ]
              }
            }},
            'waterway-label'
          )
        }


        let lastReport;
        setInterval(async () => {
          // make a GET request to parse the GeoJSON at the url
          const report = mapElement.dataset.report;
          console.log(report);
          if (report != '' && report != lastReport) {
            addMarkerToMap(map, JSON.parse(report))
            lastReport = report;
          }
        }, 5000);
        map.resize();
    })

    document.querySelectorAll('.card-product').forEach( (card) => {
      card.addEventListener('click', () => {
        map.flyTo({center: JSON.parse(card.dataset.center), zoom: 14 })
      })
    })

  };
}
export { initMapbox };
