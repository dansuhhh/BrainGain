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
    if (SessionStore.isUserLoggedIn){
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
    return(
      <div>
        <h4>Sign Up</h4>
          {
            this.state.errors.map( error => {
              return <p>{error}</p>;
            })
          }
        <form onSubmit={this.handleSubmit}>
          <input type="text" placeholder="Username" onChange={this.updateUsername}/>
          <input type="text" placeholder="Password" onChange={this.updatePassword}/>
          <input type="submit"/>
        </form>
      </div>
    );
  }
});


module.exports = SignupForm;
