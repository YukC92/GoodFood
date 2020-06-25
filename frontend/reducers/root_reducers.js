import { combineReducers } from 'redux';

import entitiesReducers from './entities_reducers';
import sessionReducers from './session_reducer';
import errorsReducers from './errors_reducer';

const rootReducer = combineReducers({
    entities: entitiesReducers,
    session: sessionReducers,
    errors: errorsReducers,
});

export default rootReducer;