import React from "react";
import { Link, withRouter } from "react-router-dom";
import SearchBarContainer from "../search_bar/search_bar_container"

const NavBarShow = props => {
    const {currentUser, logout} = props

    const dropDown = () => {
        var x = document.getElementById("myDropdown");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }

    const personalGreeting = currentUser ? (
      <div>
        <div onClick={dropDown}>
          <p>Hi, {currentUser.username}! &nbsp;&nbsp;&#8595;</p>
        </div>
        <div id="myDropdown" className="dropdown-content">
          <button className="logout-button" onClick={logout}>
            Log out
          </button>
        </div>
      </div>
    ) : (
      <div className="login-signup">
        <Link
          to={`/login?redirecto=${props.location.pathname}`}
          className="login-show"
        >
          Login
        </Link>
        &nbsp;&nbsp;&nbsp;
        <Link to="/signup" className="signup-show">
          Sign up!
        </Link>
      </div>
    );

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