import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav_bar/navbar_container';
import Logo from './logo';
import Footer from './footer'

const Header = () => {

  return (
    <div className="homepage">
      <div className="header">
        <NavBarContainer/>
        <Logo/>
        <Link className="to-business" to="/business">All Business</Link>
      </div>
      <Footer/>
    </div>
  )
};


export default Header;