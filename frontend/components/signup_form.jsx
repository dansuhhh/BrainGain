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
    this.sessionListener = SessionStore.addListener(this.handleLoggedChange);
    this.errorListener = ErrorStore.addListener(this.handleErrorChange);
  },

  componentWillUnMount(){
    this.sessionListener.remove();
    this.errorListener.remove();
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
      <div className="auth-page">
        <article className="auth-form-article">
          <a className="login-logo"></a>
          <h2 className="auth-header">Sign Up</h2>
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
            <input type="submit" value="Sign Up"/>
          </form>
        </article>
        <div className="darken"></div>
        <div className="cf">
          <a href="#" className="image1" />
          <a href="#" className="image2" />
          <a href="#" className="image3" />
          <a href="#" className="image4" />
        </div>
      </div>
    );
  }
});


module.exports = SignupForm;
