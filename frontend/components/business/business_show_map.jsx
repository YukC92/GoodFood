import React from 'react';
import MarkerManager from "../../util/marker_manager";

class BusinessShowMap extends React.Component {
    constructor(props) {
        super(props)
    }

    mapOptions() {
        if (this.props.businesses.length === 1) {
            return {
                center: {
                    lat: this.props.businesses[0].latitude,
                    lng: this.props.businesses[0].longtitude
                },
                zoom: 16,
                fullscreenControl: false,
                streetViewControl: false,
                zoomControl: this.props.zoom,
                zoomControlOptions: {
                    position: google.maps.ControlPosition.TOP_LEFT
                },
                gestureHandling: "none"
            };
        } else {
            return ({
                center: { lat: 37.772972, lng: -122.431297 }, // this is SF
                zoom: 13
            })
        }
    };

    componentDidMount() {

        let mapStyle = this.mapOptions();

        this.map = new google.maps.Map(this.mapNode, mapStyle);

        this.MarkerManager = new MarkerManager(this.map);
        this.MarkerManager.updateMarkers(this.props.businesses);
    }

    componentDidUpdate() {
        this.MarkerManager.updateMarkers(this.props.businesses)
    }

    render() {
        return (
            <div id="index-map-container" ref={map => (this.mapNode = map)}>

            </div>
        )
    }
}
export default BusinessShowMap;