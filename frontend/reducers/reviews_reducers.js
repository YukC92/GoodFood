import { RECEIVE_REVIEW, REMOVE_REVIEW} from "../actions/review_actions";

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_REVIEW:
        return Object.assign({}, state, { [action.review.id]: action.review });
    case REMOVE_REVIEW:
        let newState = Object.assign({}, state)
        delete newState[action.reviewId];
        return newState;
    default:
        return newState;
  }
};

export default reviewsReducer;