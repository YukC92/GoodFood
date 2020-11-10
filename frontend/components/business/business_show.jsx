import React from 'react';
import { Link } from 'react-router-dom';
import NavBarShowContainer from '../nav_bar/navbar_show_container';
import Information from './information';
import MainContentHeader from './main_content_header';
import BusinessShowMap from "./business_show_map";
import Review from '../review/review';


class BusinessShow extends React.Component {
    constructor(props) {
        super(props);

        this.handleDelete = this.handleDelete.bind(this)
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    contentPhotos(){
        return (
            <div>
                {this.props.business.photoUrls.slice(0,4).map((photourl, idx)=> <img key={idx} className="business-photo" src={photourl}/>)}
            </div>
        )
    }

    handleDelete(id) {
        this.props.deleteReview(id).then(() => fetchBusiness(this.props.match.params.businessId));
    }
    
    // allReviews() {
    //     this.props.business.reviews.map(review => {
    
    //     return (<Review
    //     id = {review.id}
    //     review={review}
    //     business = {this.props.business}
    //     key={review.id}
    //     currentUser= {this.props.currentUser}
    //     deleteReview={this.handleDelete()}
    //     />)
    //     })
    // }

    render() {
        debugger
        if (!this.props.business) {
            return null
        }

        const allReviews = this.props.business.reviews.map(review => {

            return (<Review
                id={review.id}
                review={review}
                business={this.props.business}
                key={review.id}
                currentUser={this.props.currentUser}
                deleteReview={this.handleDelete()}
            />)
        })
        return (
        <div>
            <div className="business-nav">
                <NavBarShowContainer/>
            </div>
            <div className="business-pic">
                {this.contentPhotos()}
            </div>
            <div className="business-main-info">
                <MainContentHeader business={this.props.business} match={this.props.match} currentUser={this.props.currentUser} />
            </div>
            <div className="main-content">
                <section className="content-left">
                    <div className="business-map-and-pic">
                        <div className="business-map">
                            <BusinessShowMap businesses={[this.props.business]} />
                            <div className="business-basic-info">
                                <div>{this.props.business.address}</div>
                                <div>{this.props.business.city}, {this.props.business.state} {this.props.business.zipcode}</div>
                                {/* <div>{phoneNumber()}</div> */}

                                <a href={this.props.business.website}>{this.props.business.website}</a>
                            </div>
                        </div>
                    </div>
                    <div className="business-review">
                        <div>
                            {allReviews}
                        </div>
                    </div>
                </section>
                <section className="content-right">
                    <Information/>
                </section>
            </div>
        </div>
        );
    }
};

export default BusinessShow;