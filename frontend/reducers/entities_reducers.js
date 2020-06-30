import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import businessesReducer from './businesses_reducers';
// import reviewsReducer from './reviews_reducers';

const entitiesReducers =  combineReducers({
    users: usersReducer,
    businesses: businessesReducer,
    // reviews: reviewsReducer,
});

export default entitiesReducers;