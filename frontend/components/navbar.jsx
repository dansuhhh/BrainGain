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

  handleLogOutClick(event){
    SessionActions.logOut();
  },

  componentWillUnmount(){
    this.sessionListener.remove();
  },

  render(){
    if (SessionStore.isUserLoggedIn()){
      return (<nav className="group main-nav-bar">
        <a href="#" className="brain-image"></a>
        <a href="#" className="logo-name">GAIN</a>
        <Link to="library" className="navbar-link">
          My Library
        </Link>
        <a href="#" className="navbar-link">
          <i className="fa fa-search fa" aria-hidden="true"></i>
          &nbsp; Flashcards
        </a>
        <a className="navbar-logout" onClick={this.handleLogOutClick}>
          Log Out
        </a>
        <a className="navbar-link greet">{this.state.user.username}</a>
      </nav>);
    } else {
        return (<nav className="group main-nav-bar">
          <a href="#" className="brain-image"></a>
          <a href="#" className="logo-name">GAIN</a>
          <a href="#" className="navbar-link">
            <i className="fa fa-search fa" aria-hidden="true"></i>
            &nbsp; Flashcards
          </a>
          <Link to="session/new" className="navbar-logout">Log In</Link>
        </nav>);
    }
  }
});

module.exports = Navbar;
