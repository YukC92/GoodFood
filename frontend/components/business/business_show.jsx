import React, {useState, useEffect} from 'react';
import { Link } from 'react-router-dom';
import NavBarShowContainer from '../nav_bar/navbar_show_container';
import Information from './information'
import MainContentHeader from './main_content_header'
import Businessfooter from './bussiness_footer';

class BusinessShow extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchBusiness(this.props.match.params.businessId)
    }

    render() {
        if (!this.props.business) {
            return null
        }
        return (
        <div>
            <div className="business-nav">
                <NavBarShowContainer/>
            </div>
            <div className="business-main">
                photo part
            </div>
            <div className="business-pic">
                picture: will do 
            </div>
            <div className="main-content">
            <section className="content-left">
                <MainContentHeader business={this.props.business}/>
                review part:Will Do
            </section>
            <section className="content-right">
                <Information/>
            </section>
            </div>
            <Businessfooter/>
        </div>
        );
    }
};

export default BusinessShow;