  
import React from "react";
import BusinessIndexItem from './business_index_item';
import NavbarShow from "../nav_bar/navbar_show_container";
import BusinessIndexMap from "./business_index_map";

class BusinessIndex extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      search: ''
    }
    this.updateSearch = this.updateSearch.bind(this);
  }

  componentDidMount(){
    this.props.fetchBusinesses();
  }

  updateSearch(e) {
    this.setState({ search: e.target.value.substring(0, 20) });
  };

  update(field) {
    return (e) => {
      this.setState({ [field]: e.currentTarget.value });
    };
  };

  render(){
    // debugger
    let { businesses } = this.props;
    let filteredBusinesses = (Object.values(businesses)).filter((business) => {
      return business.category.name.toLowerCase().indexOf(this.state.search.toLowerCase()) !== -1;
    });

    let allBusinesses = filteredBusinesses.map(business => {
      return(
        <BusinessIndexItem key={business.id} business={business}/>
      );
    });

    return (
    <div>
        <NavbarShow />
        <div className="filter-container">
          <div className="filter">
            <div className="filter-right">Best Places in San Francisco
            <br/>
            <br/>
            <textarea
              className="form-control"
              value={this.state.search}
              onChange={this.updateSearch}
              placeholder="Filter by category (ex: restaurant, boba, cafe)"
              rows = "1"
              cols = "60"
            />
            </div>
          </div>
        </div>
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
      </div>
    )
  }
}

export default BusinessIndex;