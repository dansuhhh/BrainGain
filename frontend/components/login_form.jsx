const React = require('react');

const SessionActions = require('../actions/session_actions');
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');

const hashHistory = require('react-router').hashHistory;
const Link = require('react-router').Link;

const LoginForm = React.createClass({
  getInitialState(){
    return { username: "", password: "", errors: [] };
  },

  componentDidMount(){
    SessionStore.addListener(this.handleLoggedChange);
    ErrorStore.addListener(this.handleErrorChange);
  },

  handleLoggedChange(){
    if (SessionStore.isUserLoggedIn()){
      hashHistory.push("/");
    }
  },

  handleErrorChange(){
    this.setState({
      errors: ErrorStore.errors("login")
    });
  },

  updateUsername(e){
    this.setState({
      username: e.target.value
    });
  },

  updatePassword(e){
    this.setState({
      password: e.target.value
    });
  },

  handleSubmit(event) {
    event.preventDefault();
    SessionActions.logIn({
      username: this.state.username,
      password: this.state.password
    });
  },

  render() {
    let errorList = [];
    if (this.state.errors) {
      errorList = this.state.errors.map( (error, index) => {
        return <p key={index}>{error}</p>;
      })
    }
    return(
      <div className="auth-form-div">
        <h4>Login</h4>
        {errorList}
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            placeholder="Username"
            onChange={this.updateUsername}/>
          <input
            type="text"
            placeholder="Password"
            onChange={this.updatePassword}/>
          <hr></hr>
          <input type="submit"/>
        </form>
        <Link to="/users/new">Sign Up</Link>
        <Link to="/users/new">Sign Up</Link>
      </div>
    );
  }
});

module.exports = LoginForm;
