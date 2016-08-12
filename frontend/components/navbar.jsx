const React = require('react');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const Link = require('react-router').Link;
const LoginForm = require('./login_form');

const Navbar = React.createClass({
  getInitialState() {
    return { user: SessionStore.currentUser() };
  },

  componentDidMount() {
    this.sessionListener = SessionStore.addListener(this.handleSessionChange);
  },

  handleSessionChange() {
    this.setState({
      user: SessionStore.currentUser()
    });
  },

  handleLogInClick(event) {
    event.preventDefault();
  },

  handleLogOutClick(event){
    event.preventDefault();
    SessionActions.logOut();
  },

  componentWillUnmount(){
    this.sessionListener.remove();
  },

  render(){
    let libraryTag;
    let logOutButton;
    let greet;
    if (SessionStore.isUserLoggedIn()){
      libraryTag =
        <Link
          to="library"
          className="navbar-link">
          My Library
        </Link>;
      logOutButton =
        <a
          className="navbar-logout"
          onClick={this.handleLogOutClick}>
          Log Out
        </a>;
      greet = <a className="navbar-link greet">{this.state.user.username}</a>;
    }
    return(
      <nav className="group main-nav-bar">
        <a href="#" className="brain-image"></a>
        <a href="#" className="logo-name">GAIN</a>
        {libraryTag}
        <a href="#" className="navbar-link">FlashCards</a>
        {logOutButton}
        {greet}
      </nav>
    );
  }
});

module.exports = Navbar;
