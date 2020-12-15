import React from 'react'
import { Link } from 'react-router-dom';

const Logo = () => {
    const logo = (
        <div>
            <div id="logo">
                Eatit🍽
            </div>
            <div className="explore-business">
                <Link to='/businesses'>Explore all business</Link>
            </div>
        </div>
    )

    return logo;
};

export default Logo