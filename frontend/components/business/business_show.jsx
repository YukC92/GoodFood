import React, {useEffect} from 'react';
import { Link } from 'react-router-dom';
import NavBarShowContainer from '../nav_bar/navbar_show_container';
import Information from './information';
import MainContentHeader from './main_content_header';
import BusinessShowMap from "./business_show_map";
import Review from '../review/review';

const BusinessShow = props => {
    const { deleteReview, businessId, currentUser, fetchBusiness, business, match } = props
    useEffect(() => {
        window.scrollTo(0, 0);
        fetchBusiness(match.params.businessId);
    }, []);

    if (!business) {
        return "";
    }

    const contentPhotos = () => {
        return (
            <div>
                {business.photoUrls.slice(0, 4).map((photourl, idx) => <img key={idx} className="business-photo" src={photourl} />)}
            </div>
        )
    }


    const allReviews = business.reviews.map(review => {

        return (<Review
            id={review.id}
            review={review}
            business={business}
            match={match}
            key={review.id}
            currentUser={currentUser}
            deleteReview={deleteReview}
            fetchBusiness={fetchBusiness}
        />)
    })

    // debugger
    const content = (
      <div>
        <div className="business-nav">
          <NavBarShowContainer />
        </div>
        <div className="business-pic">{contentPhotos()}</div>
        <div className="business-main-info">
          <MainContentHeader
            business={business}
            match={match}
            currentUser={currentUser}
          />
        </div>
        <div className="main-content">
          <section className="content-left">
            <div className="business-map-container">
              <div className="business-map">
                <BusinessShowMap businesses={[business]} zoom="false" />
              </div>
              <div className="business-basic-info">
                <div>{business.address}</div>
                <div>
                  {business.city}, {business.state} {business.zipcode}
                </div>
                <br />
                <a href={business.website}>{business.website}</a>
              </div>
            </div>
            <br />
            <br />
            <div className="business-review">
              <div>{allReviews}</div>
            </div>
          </section>
          <section className="content-right">
            <Information />
          </section>
        </div>
      </div>
    );
    return content;
}

export default BusinessShow;