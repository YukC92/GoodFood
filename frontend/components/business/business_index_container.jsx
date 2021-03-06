  
import React from 'react';
import { connect } from 'react-redux';
import BusinessIndex from './business_index';
import { fetchBusinesses } from '../../actions/business_actions';

const mapStateToProps = state => {
  // debugger
  let businesses = Object.values(state.entities.businesses)
  return ({
    currentUser: state.session.currentUser,
    businesses: businesses,
  });
};


const mapDispatchToProps = dispatch => ({
  fetchBusinesses: () => dispatch(fetchBusinesses()),
})

export default connect(mapStateToProps, mapDispatchToProps)(BusinessIndex);