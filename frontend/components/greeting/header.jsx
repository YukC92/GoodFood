import React from 'react';
import NavBarContainer from '../nav_bar/navbar_container';
import Logo from './logo';
import Footer from './footer'

const Header = () => {

  return (
    <div className="homepage">
      <div className="header">
        <NavBarContainer />
        <Logo />
      </div>
    </div>
  );
};


export default Header;