import React from 'react';

const footer = () => {
    const footer = (
        <div className="footer">
            <div className="footer-link">
                <a href="https://github.com/YukC92" target="_blank"><img src="https://github.githubassets.com/images/modules/logos_page/Octocat.png" alt="github" className="link-logo"/></a>
                <a href="https://www.linkedin.com/in/yuk-fai-chan-54830a192/" target="_blank"><img src="https://www.flaticon.com/svg/static/icons/svg/174/174857.svg" alt="linkedin" className="link-logo"/></a>
            </div>
            <div className="copyright-img">
                <img src="https://s3-media2.fl.yelpcdn.com/assets/srv0/yelp_styleguide/573fa19c8435/assets/img/structural/footer_cityscape.png" alt="footer img" />
                <div className="copyright-text">
                    Copyright © 2020 Fraud Inc.
                </div>
            </div>
        </div>
    );

    return footer
}

export default footer