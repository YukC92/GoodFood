import React from 'react';



const Information = () => {
  
  return (
    <div className="fake-information-container">
      <div className="working-hours">
        <h1><span>Hours</span></h1>
        <div>
          <span>Mon</span>&nbsp;&nbsp;10:00 am - 10:00 pm
        </div>
        <div>
          <span>Tue</span>&nbsp;&nbsp;10:00 am - 10:00 pm
        </div>
        <div>
          <span>Wed</span>&nbsp;&nbsp;10:00 am - 10:00 pm
        </div>
        <div>
          <span>Thu</span>&nbsp;&nbsp;10:00 am - 10:00 pm
        </div>
        <div>
          <span>Fri</span>&nbsp;&nbsp;10:00 am - 10:00 pm
        </div>
        <div>
          <span>Sat</span>&nbsp;&nbsp;11:00 am - 12:00 am
        </div>
        <div>
          <span>Sun</span>&nbsp;&nbsp;closed
        </div>
      </div>
      <div className="ameritites">
        <h1><span>Amentities</span></h1>
        <ul>
          <li>🗓Take Reservations <span>Yes</span></li>
          <li>🥡Take-Out <span>Yes</span></li>
          <li>🚗Offers Delivery <span>No</span></li>
          <li>🍻Happy Hours Speccials <span>No</span></li>
          <li>👍Good For <span>Lunch, Dinner</span></li>
          <li>🧑‍🦽Wheelchair Accessible <span>Yes</span></li>
          <li>🚲Bike Parking <span>No</span></li>
          <li>🔊Noice Level <span>Loud</span></li>
          <li>👔Dress Code <span>Casual</span></li>
          <li>🦮Dog Allowed <span>No</span></li>
          <li>🎱Has Pool Table <span>No</span></li>
        </ul>
      </div>
    </div>
  );

}


export default Information;