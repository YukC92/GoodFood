import React from "react";
import { Link } from "react-router-dom";
import BusinessShowMap from "./business_show_map";


const MainContentHeader = props => {

    const { business, reviews } = props

    // const phoneNumber = () => {
    //     if (props.business.phone_number.split('').length < 10) {
    //       return "N/A"
    //     }
    //     return `(${props.business.phone_number.slice(0, 3)}) ${props.business.phone_number.slice(3, 6)}-${props.business.phone_number.slice(6, 10)}`
    // }

    const costSign = () => {
        let dollarSign = [];
        for (let i = 0; i < reviews.priceRating; i++) {
            dollarSign.push('$')
        }
        return dollarSign.join('')
    }

    const finalRating = () => {
        let sum = 0;

        reviews.forEach(review => {
            sum += review.rating;
        });

        return Math.floor(sum / reviews.length);
    };



    const content = (
        <div className="business-header-info">
            <div className="business-main-info">
                <div className="business-name">{business.business_name}</div>
                <div className="business-rating">{business.rating}</div>
                <div className="business-price-rating">$$</div>
            </div>
            <div className="business-map-and-pic">
                <div className="business-map">
                    <BusinessShowMap business={business}/>
                    <div className="business-basic-info">
                        <div>{business.address}</div>
                        <div>{business.city}, {business.state} {business.zipcode}</div>
                        {/* <div>{phoneNumber()}</div> */}

                        <a href={business.website}>{business.website}</a>
                    </div>
                </div>
            </div>
        </div>
    )

    return content;
}

export default MainContentHeader