import React from "react";
import LogInFormContainer from './session_form/login_form_container';
import SignUpFormContainer from './session_form/signup_form_container';
import HeaderContainer from './greeting/header_container';
import BusinessShowContainer from './business/business_show_coontainer'
import { Route, Switch } from "react-router";
import { AuthRoute } from '../util/route_util'

const App = () => (
  <div>
    <Switch>
        <AuthRoute path="/login" component={LogInFormContainer}/>
        <AuthRoute path="/signup" component={SignUpFormContainer}/>
        <Route exact path="/businesses/:businessId" component={BusinessShowContainer}/>
        <Route path ="/" component={HeaderContainer}/>
    </Switch>
  </div>
);

export default App;