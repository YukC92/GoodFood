import React from 'react';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav_bar/navbar_container'

const Header = () => {

  return (
    <div className="homepage">
      <NavBarContainer/>
      <Logo/>
    </div>
  )
};


export default Header;