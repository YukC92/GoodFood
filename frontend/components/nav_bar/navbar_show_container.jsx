import React from 'react';
import { connect } from 'react-redux';
import NavBarShow from './navbar_show';
import { logout} from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => {
  return ({
    type: ownProps.type,
    currentUser: state.entities.users[state.session.id]
  });
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  logIn: (user) => dispatch(login(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBarShow);