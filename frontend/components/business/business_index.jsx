  
import React from "react";
import BusinessIndexItem from './business_index_item';
import NavbarShow from "../nav_bar/navbar_show_container";
import BusinessIndexMap from "./business_index_map";
import Footer from "../greeting/footer";

class BusinessIndex extends React.Component{
  
  componentDidMount(){
    this.props.fetchBusinesses();
  }

  render(){
    let { businesses } = this.props;
    let allBusinesses = businesses.map(business => {
      return(
        <BusinessIndexItem key={business.id} business={business}/>
      );
    });

    return (
    <div>
        <NavbarShow />
        <div className="business-index-section-entire-master">
          <div className="business-index-left">
            <ul>{allBusinesses}</ul>
          </div>
          <div className="business-index-sidebar-right">
            <div className="fake-map">
              <BusinessIndexMap businesses={businesses} />
            </div>
          </div>
          </div>
        <Footer />
      </div>
    )
  }
}

export default BusinessIndex;