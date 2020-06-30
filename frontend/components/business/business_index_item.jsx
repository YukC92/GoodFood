import React, {useEffect, useState} from 'react';
import {Link} from 'react-router-dom'

const BusinessIndexItem = props => {
  const phoneNumber = () => {
    if (props.business.phone_number.split('').length < 6) {
      return "N/A"
    }
    return `(${props.business.phone_number.slice(0, 3)}) ${props.business.phone_number.slice(3, 6)}-${props.business.phone_number.slice(6, 10)}`
  }

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

 const getStars = (num) => {
  let stars = [];

  for (let i = 0; i < num; i++) {
    stars.push(<div key={i} className={`mystar fa fa-star checked`}></div>);
  }
  return (stars);
}


 const content = (
      <div className="business-index-container">
        <div className="business-index">
          <div className="business-index-left">
            photo part: will add
          </div>
          <div className="index-info">
            <div className="info-top">
              <div className="info-top-left">
                <Link
                  className="business-name"
                  to={`/businesses/${props.business.id}`}
                >
                  {props.business.businessName}
                </Link>
                <div>
                  {finalRating()}
                  <span className="review-text">
                    {Object.keys(props.business.reviews).length}
                  </span>
                </div>
                <div>{costSign()}</div>
              </div>
              <div className="index-location">
                <div>{phoneNumber()}</div>
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