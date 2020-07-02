import React from 'react';

class BusinessIndexMap extends React.Component {
    constructor(props) {
        super(props)
    }
    componentDidMount() {

        const mapOptions = {
            center: {
              lat: 37.773972,
              lng: -122.431297
            },
            zoom: 13
        };

        this.map = new google.maps.Map(this.refs.map, mapOptions);
    }

    render() {
        return (
            <div id="index-map-container" ref="map" >
                <div ref={ map => this.mapNode = map}>

                </div>
            </div>
        )
    }
}

export default BusinessIndexMap;