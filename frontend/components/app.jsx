import React from "react";
import LogInFormContainer from './session_form/login_form_container';
import SignUpFormContainer from './session_form/signup_form_container';
import HeaderContainer from './greeting/header_container';
import { Route, Switch } from "react-router";
import { AuthRoute } from '../util/route_util'

const App = () => (
  <div>
    <Switch>
        <AuthRoute path="/login" component={LogInFormContainer}/>
        <AuthRoute path="/signup" component={SignUpFormContainer}/>
        <Route path ="/" component={HeaderContainer}/>
    </Switch>
  </div>
);

export default App;