const React = require('react');

const SessionActions = require('../actions/session_actions');
const SessionStore = require('../stores/session_store');
const ErrorStore = require('../stores/error_store');

const hashHistory = require('react-router').hashHistory;

const SignupForm = React.createClass({
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
      errors: ErrorStore.errors("signup")
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

  handleSubmit(event){
    event.preventDefault();
    SessionActions.signUp({
      username: this.state.username,
      password: this.state.password
    });
  },

  render(){
    let errorList = [];
    if (this.state.errors) {
      errorList = this.state.errors.map( (error, index) => {
        return <p key={index}>{error}</p>;
      })
    }
    return(
      <div className="auth-form-div">
        <h4 className="auth-header">Sign Up</h4>
        {errorList}
        <form onSubmit={this.handleSubmit}>
          <input
            className="auth-input"
            type="text"
            placeholder="Username"
            onChange={this.updateUsername}/>
          <input
            className="auth-input"
            type="password"
            placeholder="Password"
            onChange={this.updatePassword}/>
          <input type="submit"/>
        </form>
      </div>
    );
  }
});


module.exports = SignupForm;
