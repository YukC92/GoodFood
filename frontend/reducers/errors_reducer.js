import { combineReducers } from 'redux';

import sessionErrorsReducers from './session_errors_reducers';

const errorsReducers = combineReducers({
    session: sessionErrorsReducers 
});

export default errorsReducers;