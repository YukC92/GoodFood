import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ currentUser, logout }) => {
  const personalGreeting = (currentUser) ? (
    <div className="header-group">
      <p className="header-name">Hi, {currentUser.username}!</p>
      <button className="header-button" onClick={logout}>Log Out</button>
    </div>
  ) : (
    <div className="login-signup">
      <Link to="/login" className="login">Login</Link>
      &nbsp;&nbsp;&nbsp;
      <Link to="/signup" className="signup">Sign up!</Link>
    </div>
  )

  return (
      <div className="navbar-container">
        <div className="right-nav">
            {personalGreeting}
        </div>
      </div>
  )
};


export default NavBar;