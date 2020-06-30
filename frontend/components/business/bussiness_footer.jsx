import React from 'react';

const Businessfooter = () => {
    const footer = (
        <div className="business-footer">
            <div className="business-footer-link">
                <a href="https://github.com/YukC92"><img src="https://github.githubassets.com/images/modules/logos_page/Octocat.png" alt="github" className="link-logo"/></a>
                <a href="https://www.linkedin.com/in/yuk-c-54830a192/"><img src="https://1000logos.net/wp-content/uploads/2017/03/LinkedIn-Logo-500x500.png" alt="linkedin" className="link-logo"/></a>
            </div>
            <div className="copyright-text">
                    Copyright © 2020 Fraud Inc.
            </div>
        </div>
    );

    return footer
}

export default Businessfooter