import React from 'react';

class BusinessShowMap extends React.Component {
    constructor(props) {
        super(props)
    }
    componentDidMount() {
        const {business} = this.props
        
        const mapOptions = {
            center: {
              lat: business.latitude,
              lng: business.longtitude
            }, // San Francisco coords
            zoom: 13
        };

        this.map = new google.maps.Map(this.refs.map, mapOptions);
    }

    render() {
        return (
            <div id="show-map-container" ref="map" >
                <div ref={ map => this.mapNode = map}>

                </div>
            </div>
        )
    }
}

export default BusinessShowMap;