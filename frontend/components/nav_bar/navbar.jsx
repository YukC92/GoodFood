import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ currentUser, logout }) => {

  const dropDown = () => {
    var x = document.getElementById("myDropdown");
    if (x.style.display === "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  };

  const personalGreeting = currentUser ? (
    <div>
      <div onClick={dropDown}>
        <p>Hi, {currentUser.username}!</p>
      </div>
      <div id="myDropdown" className="dropdown-content">
        <button className="logout-button" onClick={logout}>
          Log out
        </button>
      </div>
      <i className="arrow-icon">arrow_drop_down</i>
    </div>
  ) : (
    <div className="login-signup">
      <Link to="/login" className="login">
        Login
      </Link>
      &nbsp;&nbsp;&nbsp;
      <Link to="/signup" className="signup">
        Sign up!
      </Link>
    </div>
  );

  return (
      <div className="navbar-container">
        <div className="right-nav">
            {personalGreeting}
        </div>
      </div>
  )
};


export default NavBar;