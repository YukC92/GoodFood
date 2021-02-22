import React from 'react';
import { Link } from "react-router-dom"

const Toprestaurants = props => {

    const content = (
        <div>
            <div className="top-restaurants-in-sf">
                <div className="top-restaurants">Top Restaurants</div>
            </div>
            <div className="home-restaurant-container">
                <div className="home-restaurants">
                    <div className="home-restaurant">
                        <Link to={`/businesses/${props.businesses[0].id}`}>
                        <div className="home-restaurant-photo">
                            <img src={props.businesses[0].photoUrls[0]} alt="" />
                        </div>
                        <div className="home-business">
                            <div className="title">
                                {props.businesses[0].business_name}
                            </div>
                            <div className="category">{props.businesses[0].category.name}</div>
                        </div>
                        </Link>
                    </div>
                    <div className="home-restaurant">
                        <Link to ={`/businesses/${props.businesses[4].id}`}>
                        <div className="home-restaurant-photo">
                            <img src={`${props.businesses[4].photoUrls[0]}`} alt="" />
                        </div>
                        <div className="home-business">
                            <div className="title">
                                {props.businesses[4].business_name}
                            </div>
                            <div className="category">{props.businesses[4].category.name}</div>
                        </div>
                        </Link>
                    </div>
                    <div className="home-restaurant">
                        <Link to={`/businesses/${props.businesses[7].id}`}>
                        <div className="home-restaurant-photo">
                            <img src={`${props.businesses[7].photoUrls[0]}`} alt="" />
                        </div>
                        <div className="home-business">
                            <div className="title">
                                {props.businesses[7].business_name}
                            </div>
                            <div className="category">{props.businesses[7].category.name}</div>
                        </div>
                        </Link>
                    </div>
                </div>
            </div>
        </div>
    );
    return content;
}

export default Toprestaurants