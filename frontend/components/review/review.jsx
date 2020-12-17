import React, {useState, useEffect} from 'react';
import { Route, withRouter } from "react-router-dom";

const Review = props => {
  const {deleteReview, id, review, fetchBusiness, key, currentUser, match} = props
  // debugger
  // console.log(review)
  const deleteComment = () => {
      if (!currentUser) return;
      if (currentUser === review.user_id) {
        return (
            <input className="delete-button" type="submit" onClick={handleDelete} value="Delete"/>

        );
      }
      return ""
    }

    const handleDelete = () => {
        deleteReview(id).then(() => fetchBusiness(match.params.businessId));
    }

    const getDate = () => {
      let date = props.review.updatedAt;
      if (date === undefined) {
        return null;
      }
      return `${date.slice(5, 7)}/${date.slice(8, 10)}/${date.slice(0, 4)}`;
    }

    let picture = review.picture;
    let userRating = review.rating * 2

  const content = (
        <>
          <div className="comment-box-container">
            <div className="comment-box-profile">
          <img className="review-user-pic" src="https://good-food-to-eat-seeds.s3-us-west-1.amazonaws.com/user+icon.png" />
              <div>{`${review.username}`}</div>
            </div>
            <div className="comment-box-body">
              <div className="comment-box-rating-date">
                <img
                  className={`star-medium-${userRating}` + " star-medium"}
                  src="https://i.imgur.com/UkZkm0D.png"
                />
                <span>{getDate()}</span>
              </div>
              <div className="review-body">
                <div className="review-text-body">{review.content}</div>
                <br/>
                {deleteComment()}
              </div>
            </div>
          </div>
        </>
      );
    return content;
  }


  export default withRouter(Review)