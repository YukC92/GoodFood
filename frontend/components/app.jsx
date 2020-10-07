import React from "react";
import LogInFormContainer from './session_form/login_form_container';
import SignUpFormContainer from './session_form/signup_form_container';
import HeaderContainer from './greeting/header_container';
import BusinessIndexContainer from './business/business_index_container';
import BusinessShowContainer from './business/business_show_container';
import CreateReviewContainer from './review/create_review_container'
import EditReviewContainer from './review/edit_review_container';
import { Route, Switch } from "react-router";
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import Footer from './greeting/footer';

const App = () => (
  <div>
    <Switch>
        <AuthRoute path="/login" component={LogInFormContainer}/>
        <AuthRoute path="/signup" component={SignUpFormContainer}/>
        <Route exact path="/businesses/:businessId" component={BusinessShowContainer}/>
        <ProtectedRoute exact path="/businesses/:businessId/reviews/:reviewId" component={EditReviewContainer} />
        <ProtectedRoute exact path="/businesses/:businessId/reviews" component={CreateReviewContainer} />
        <Route path="/businesses" component={BusinessIndexContainer}/>
        {/* <Route path="/businesses" component={CreateReviewContainer}/> */}
        <Route path ="/" component={HeaderContainer}/>

    </Switch>
    <Footer />
  </div>
);

export default App;