import React from "react";
import { Link, Redirect } from "react-router-dom";


class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "", email: "", password: "" };
    this.handleSubmit = this.handleSubmit.bind(this);

    this.demoLogin = this.demoLogin.bind(this)
    this.demoButtonShowUp = this.demoButtonShowUp.bind(this);
    this.demoUsername = 'Bruce'
    this.demoEmail = "abc@aa.io";
    this.demoPassword = "password123"
  }

  errorHandling() {
    if (this.props.errors.length > 0) {
      return (
        <div id="error-container">
          <div id="text-error">{this.props.errors[0]}</div>
        </div>
      );
    }
    return "";
  }

  update(field) {
    return e =>
      this.setState({
        [field]: e.target.value
      });
  }

  handleSubmit(e) {
    e.preventDefault();
    const params = new URLSearchParams(this.props.location.search)
    this.props.action(this.state).then(() => this.props.history.push(params.get("redirecto")));
  }

  demoLogin() {
    const params = new URLSearchParams(this.props.location.search)
      const username = this.demoUsername;
      const email = this.demoEmail;
      const password = this.demoPassword;
      const Speed = 75;
  
      document.getElementById("demo-button").disabled = true;
      this.setState({ username: "", email: "", password: "" });
  
      for (let i = 0; i < email.length; i++) {
        setTimeout(() => {
          this.setState({ email: this.state.email + email[i] });
        }, i * Speed);
      }
      for (let j = 0; j < password.length; j++) {
        setTimeout(() => {
          this.setState({ password: this.state.password + password[j] });
        }, (email.length * Speed) + j * Speed);
      }
      setTimeout(() => {
        this.props.action(this.state).then(() => this.props.history.push(params.get("redirecto")));
      }, (email.length * Speed) + (password.length * Speed) + Speed);
  }

  demoButtonShowUp() {
    if  (this.props.formType === "login") {
      return (
        <button id="demo-button" className="demo-user" onClick={this.demoLogin}>Demo User Login</button>
      )
    }
  }

  switch() {
    if (this.props.formType === "login") {
      return (
        <div className="switch-link">
          New to EatIt?
          <Link className="link" to="/signup">
            Sign Up
          </Link>
        </div>
      );
    } else {
      return (
        <div className="switch-link">
          Already on EatIt?
          <Link className="link" to="/login">
            Log In
          </Link>
        </div>
      );
    }
  }

  topLine() {
    if (this.props.formType === "login") {
      return (
        <div>
          <h2>Log In to EatIt</h2>
        </div>
      );
    } else {
      return (
        <div>
          <h2>Sign Up for EatIt</h2>
        </div>
      );
    }
  }

  secondLine() {
    if (this.props.formType === "login") {
      return (
        <div>
          <h2>
            New to EatIt?{" "}
            <Link className="link-session" to="/signup">
              {" "}
              Sign Up
            </Link>{" "}
          </h2>
        </div>
      );
    } else {
      return (
        <div>
            <h2>
                Join EatIt for free!
            </h2>
        </div>
      );
    }
  }

  privacyPolicy() {
    if (this.props.formType === "login") {
      return <div>No Terms and Conditions for Logging In.</div>;
    } else {
      return <div>No Terms and Conditions for Signing Up.</div>;
    }
  }

  getUsername() {
    if (this.props.formType === "signup") {
      return (
        <div className="username-form">
          <input
            type="text"
            onChange={this.update("username")}
            value={this.state.username}
            placeholder="Username"
            className="username"
          />
        </div>
      );
    }
    return "";
  }

  submit() {
    if (this.props.formType === "login") {
      return (
        <div>
          <input
            type="submit"
            onClick={this.handleSubmit}
            value="Log In"
            className="submit-button"
          />
        </div>
      );
    } else {
      return (
        <div>
          <input
            type="submit"
            onClick={this.handleSubmit}
            value="Sign Up"
            className="submit-button"
          />
        </div>
      );
    }
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  render() {
    if (this.props.currentUser) {
      <Redirect to="/" />;
    }
    return (
      <div>
        <header className="header-form">
            EatIt🍽
        </header>
        <div className="error-handling-container">
          {this.errorHandling()}
        </div>
        <div className="session-container">
          <div className="session-inner-container">
            <form className="session-form" onSubmit={this.handleSubmit}>
              <div className="top-line-session">{this.topLine()}</div>
              <div className="second-line-session">
                {this.secondLine()}
              </div>
              <div className="privacy-policy-session">{this.privacyPolicy()}</div>
              {this.getUsername()}
              <div>
                <input
                  className="email-password-form"
                  type="text"
                  onChange={this.update("email")}
                  value={this.state.email}
                  placeholder="Email"
                />
                <input
                  className="email-password-form"
                  type="password"
                  onChange={this.update("password")}
                  value={this.state.password}
                  placeholder="Password"
                />
              </div>
              <div>{this.submit()}</div>
              <div className="switch">{this.switch()}</div>

              {this.demoButtonShowUp()}
            </form>
              <div className="session-img">
                <img src="https://s3-media0.fl.yelpcdn.com/assets/2/www/img/7922e77f338d/signup/signup_illustration.png" alt="Girl in a jacket"></img>
              </div>
          </div>
        </div>
      </div>
    );
  }
}

export default SessionForm;