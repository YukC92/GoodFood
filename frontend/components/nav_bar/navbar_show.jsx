import React from "react";
import { Link, withRouter } from "react-router-dom";


const NavBarShow = props => {
    const {currentUser, logout} = props

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
                <div className="nav-show-middle">
                    Searchbar will do later.
                </div>
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
                    <Link to='/'>Write a review</Link>
                </div>
            </div>
            
        </div>

    </div>

    );
}

export default withRouter(NavBarShow);