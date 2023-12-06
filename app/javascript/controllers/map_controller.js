import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"
import MapboxCircle from 'mapbox-gl-circle'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array || null,
    latitude: Number,
    longitude: Number,
    address: String
  }
  static targets = [ "map", "radiusInput" ]

  connect() {
    console.log(this.markersValue)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb" // <-- use your own!


    });


    // this.#fitMapToMarkers()
  }

  search(event) {
    event.preventDefault();

    const popup = new mapboxgl.Popup().setHTML(this.addressValue)
    // const marker = document.createElement("div")

    // Create a HTML element for your custom marker
    const customMarker = document.createElement("div")
    customMarker.innerHTML = this.markersValue[0].marker_html

    const radius = this.radiusInputTarget.value || 5
    // marker.style = {
    //   background: "white",
    //   borderRadius: "4px",
    //   padding: "8px 4px",
    //   color: "black",
    //   boxShadow: "0 1px 2px rgba(0,0,0,0.10)"
    // }
    // marker.innerHTML = this.addressValue

    // new mapboxgl.Marker()
    //   .setLngLat([ this.longitudeValue, this.latitudeValue ])
    //   .setPopup(popup)
    //   .addTo(this.map)
    new mapboxgl.Marker(customMarker)
      .setLngLat([ this.longitudeValue, this.latitudeValue ])
      .setPopup(popup)
      .addTo(this.map)

    this.map.flyTo({
      center: [this.longitudeValue, this.latitudeValue],
      essential: true
    });
    if (this.circle) this.circle.remove()
    this.circle = new MapboxCircle({lat: this.latitudeValue, lng: this.longitudeValue}, radius * 1000, {
      editable: false,
      fillColor: '#081128',
      fillOpacity: 0.3,
      strokeColor: '#007cbf',
    })

    this.circle.addTo(this.map)
  }

  // #addMarkersToMap() {
  //   (this.markersValue || []).forEach((marker) => {
  //     const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)



  //     // Pass the element as an argument to the new marker
  //     new mapboxgl.Marker(customMarker)
  //       .setLngLat([marker.lng, marker.lat])
  //       .setPopup(popup)
  //       .addTo(this.map)
  //   })
  // }

  // #fitMapToMarkers() {
  //   const bounds = new mapboxgl.LngLatBounds()
  //   (this.markersValue || []).forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
  //   this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  // }
}
