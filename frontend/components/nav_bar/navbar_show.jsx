import React from "react";
import { Link, withRouter } from "react-router-dom";
import SearchBarContainer from "../search_bar/search_bar_container"

const NavBarShow = props => {
    const {currentUser, logout, type} = props

    const dropDown = () => {
        var x = document.getElementById("myDropdown");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }

    const personalGreeting = (currentUser) ? (
    <div>
        <div onClick={dropDown}>
            <p>Hi, {currentUser.username}!</p>
        </div>
        <div id="myDropdown" className="dropdown-content">
            <input
                className="logout-button"
                type="submit"
                onClick={logout}
                value="Log Out"
            />
        </div>
    </div>
    ) : (
    <div>
        <Link to={`/login?redirecto=${props.location.pathname}`}>Login</Link>
        &nbsp;&nbsp;
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
                <div className="nav-show-right">
                    {personalGreeting}
                </div>
            </div>
        </div>
        <div className="under-nav-container">
            <div className="under-nav-content">
                {/* <div className="under-nav-left">
                    <li>Restaurant</li>
                    <li>Home Service</li>
                    <li>Auto Services</li>
                    <li>More</li>
                </div> */}
                <div className="under-nav-review">
                    <Link to={`/businesses`}>All Businesses</Link>
                </div>
            </div>
            
        </div>

    </div>

    );
}

export default withRouter(NavBarShow);