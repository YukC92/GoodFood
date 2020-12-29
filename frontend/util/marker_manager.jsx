export default class MarkerManager {
    constructor(map) {
        this.map = map;
        this.markers = {};
    }


    updateMarkers(businesses) {
        if (Object.keys(this.markers).length) {
            console.log()
            this.markers = {};
        }
        businesses.forEach((business, index) => {
            if (!this.markers[business.id]) {
                this.createMarkerForBusiness(business, index + 1);
                this.markerLabel++;
            }
        });

    }

    createMarkerForBusiness(business, index="") {
        const position = new google.maps.LatLng(business.latitude, business.longtitude);
        const marker = new google.maps.Marker({
            position,
            title: business.business_name,
            label: `${index}`,
            map: this.map,
            businessId: business.id,
            url: `#/businesses/${business.id}`
        });

        const starRating = () => {
            // debugger
            if (business.reviews.length === 0) {
                return 0;
            }
            let sum = 0;

            business.reviews.forEach(review => {
                sum += review.rating;
            });

            return Math.floor(sum / business.reviews.length) * 2;
        };

        const contentString = `<div class="businessInfo" id="biz-${business.id}">
                            <div class="info-photo-container">
                              <img class="info-photo" src="${business.photoUrls[0]}"/>
                            </div>
                            <p class="info-title">${business.business_name}</p>
                          </div>`;


        const infoWindow = new google.maps.InfoWindow({
            content: contentString,
            disableAutoPan: true,
        });

        marker.addListener("mouseover", function () {
            infoWindow.open(this.map, marker);
        });

        marker.addListener("mouseout", function () {
            infoWindow.close();
        });

        marker.addListener("click", function () {
            window.location.href = marker.url;
        });

        this.markers[marker.businessId] = marker;
    }
}
