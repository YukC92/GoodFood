import React from "react";
import { Link, withRouter } from "react-router-dom";
import SearchBarContainer from "../search_bar/search_bar_container"

const NavBarShow = props => {
    const {currentUser, logout, type} = props

    const personalGreeting = (currentUser) ? (
    <div>
        <p>Hi, {currentUser.username}!</p>
        <button onClick={logout}>Log Out</button>
    </div>
    ) : (
    <div>
        <Link to={`/login?redirecto=${props.location.pathname}`}>Login</Link>
        &nbsp;or&nbsp;
        <Link to="/signup">Sign up!</Link>
    </div>
    )

    return(
    <div>
        <div className="nav-show">
            <div className="nav-show-inner">
                <div className="nav-show-left">
                    <Link to='/'>Eatit🍽</Link>
                </div>
                <SearchBarContainer type={type} />
                <div className="nav-show-right">
                    {personalGreeting}
                </div>
            </div>
        </div>
        <div className="under-nav-container">
            <div className="under-nav-content">
                <div className="under-nav-left">
                    <li>Restaurant</li>
                    <li>Home Service</li>
                    <li>Auto Services</li>
                    <li>More</li>
                </div>
                <div className="under-nav-review">
                    <Link to={`/businesses`}>All Businesses</Link>
                </div>
            </div>
            
        </div>

    </div>

    );
}

export default withRouter(NavBarShow);