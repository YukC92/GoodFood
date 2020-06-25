import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ currentUser, logout }) => {
  const personalGreeting = (currentUser) ? (
    <div className="header-group">
      <h2 className="header-name">Hi, {currentUser.username}!</h2>
      <button className="header-button" onClick={logout}>Log Out</button>
    </div>
  ) : (
    <nav className="login-signup">
      <Link to="/login">Login</Link>
        &nbsp;or&nbsp;
      <Link to="/signup">Sign up!</Link>
    </nav>
  )

  return (
      <div className="navbar-container">
        <div className="left-nav">
            <div className="write-reviews">
            <Link to='/businesses'>Write a review</Link>
            </div>
            <a className="link" href="https://github.com/YukC92">Github</a>
            <a className="link" href="https://www.linkedin.com/in/yuk-c-54830a192/">Linkedin</a>
        </div>
        <div className="right-nav">
            {personalGreeting}
        </div>

      </div>
  )
};


export default NavBar;