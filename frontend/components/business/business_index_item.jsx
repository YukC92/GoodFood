import React, {useEffect, useState} from 'react';
import {Link} from 'react-router-dom'

const BusinessIndexItem = props => {

  const pickPrice = () => {
    let price = [];
    let num = Math.floor(Math.random() * 4) + 1
    for (let i = 0; i < num; i++) {
      price.push("$")
    }
    return price.join('')
  }

  const starRating = () => {
      let sum = 0;

      props.business.reviews.forEach(review => {
          sum += review.rating;
      });

      return Math.floor(sum / props.business.reviews.length) * 2;
  };
  
 const content = (
      <div className="business-index-container">
        <div className="business-index">
          <div className="business-index-photo">
            <img src={props.business.photoUrls[0]} alt=""/>
          </div>
          <div className="business-index-info">
            <div className="business-index-info-top">
              <div className="business-index-info-left">
                <Link
                  className="business-name"
                  to={`/businesses/${props.business.id}`}
                >
                  {props.business.business_name}
                </Link>
             <div>
               <img
                 className={`star-medium-${starRating()}` + " star-medium"}
                 src="https://i.imgur.com/UkZkm0D.png"
               />
               <span className="review-text">
                 {" "}
                 {Object.keys(props.business.reviews).length} reviews
                  </span>
             </div>
             <div>{pickPrice()}</div>
              </div>
              <div className="business-index-info-right">
                <div>{props.business.address}</div>
                <div> {props.business.city}</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
    return content;
  }




export default BusinessIndexItem;