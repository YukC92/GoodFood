import {
    RECEIVE_ALL_BUSINESSES,
    RECEIVE_BUSINESS,
    SEARCH_BUSINESS
  } from "../actions/business_actions";
  
  const businessesReducer = (state = {}, action) => {
    Object.freeze(state);
    switch(action.type) {
      case RECEIVE_ALL_BUSINESSES:
        return Object.assign({}, action.business)
      case RECEIVE_BUSINESS:
        return Object.assign({}, { [action.business.id]: action.business })
      case SEARCH_BUSINESS:
        return Object.assign({}, action.business);
      default:
        return state;
    }
  };
  
  export default businessesReducer;