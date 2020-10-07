import React from "react";
import { Link } from "react-router-dom";

class MainContentHeader extends React.Component {
    constructor(props) {
      super(props);
    }

    hasReview() {
        if (!this.props.currentUser) {
          return (
            <Link to={`/login`}>
              <input id="write-a-review" type="button" value="Write a Review" />
            </Link>
          );
        }


        for (let i = 0; i < this.props.business.reviews.length; i++) {
          let userId = this.props.business.reviews[i].userId;
          if (userId === this.props.currentUser) {
            return (
              <Link
                to={`/businesses/${this.props.match.params.businessId}/reviews/${this.props.business.reviews[i].id}`}
              >
                <input
                  id="write-a-review"
                  type="button"
                  value="Update Review"
                />
              </Link>
            );
          }
        }
        return (
          <Link to={`/businesses/${this.props.match.params.businessId}/reviews`}>
            <input id="write-a-review" type="button" value="Write a Review" />
          </Link>
        );
    }

    finalRating() {
      let sum = 0;

      this.props.business.reviews.forEach(review => {
        sum += review.rating;
      });

      return Math.floor(sum / this.props.business.reviews.length) * 2;
    };

    render() {
        return (
        <div className="main-header">
            <div className="business-header-info-container">
                <div className="business-header-info">
                    <div>
                        <div>{this.props.business.business_name}</div>
                        <img
                          className={`star-lrg-${this.finalRating()}` + ` star-lrg`}
                          src="https://i.imgur.com/UkZkm0D.png"
                        />
                        <div>$$</div>
                    </div>

                    <div className="under-header-right">
                        {/* <div>{this.createReview()}</div> */}
                        <div>{this.hasReview()}</div>
                    </div>
                </div>
            </div>
        </div>
        )
    }
}

export default MainContentHeader;