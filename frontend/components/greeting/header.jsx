import React, { useEffect } from 'react';
import NavBarContainer from '../nav_bar/navbar_container';
import Logo from './logo';
import Toprestaurants from "./toprestaurants";

const Header = props => {
  const {fetchBusinesses} = props

  useEffect(() => {
    fetchBusinesses()
  }, [])

  if (props.businesses.length < 8) {
    return null
  }

  return (
    <div className="homepage">
      <div className="header">
        <NavBarContainer />
        <Logo />
      </div>
      <div className="home-body">
        <Toprestaurants businesses={props.businesses}/>
      </div>
    </div>
  );
};


export default Header;