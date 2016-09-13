const React = require('react');
const SessionStore = require('../stores/session_store');
const SessionActions = require('../actions/session_actions');
const Link = require('react-router').Link;
const LoginForm = require('./login_form');
const Modal = require('react-modal');

const modalStyle = {
  overlay : {
    position          : 'fixed',
    top               : 0,
    left              : 0,
    right             : 0,
    bottom            : 0,
    backgroundColor   : 'rgba(255, 255, 255, 0.75)'
  },
  content : {
    position                   : 'absolute',
    top                        : '40px',
    left                       : '40px',
    right                      : '40px',
    bottom                     : '40px',
    border                     : '1px solid #ccc',
    background                 : '#fff',
    overflow                   : 'auto',
    WebkitOverflowScrolling    : 'touch',
    borderRadius               : '4px',
    outline                    : 'none',
    padding                    : '20px'
  }
};

const Navbar = React.createClass({
  getInitialState() {
    return { user: SessionStore.currentUser(), modalOpen: false };
  },

  componentDidMount() {
    this.sessionListener = SessionStore.addListener(this.handleSessionChange);
  },

  componentWillMount() {
    Modal.setAppElement(document.getElementById("content"));
  },

  handleSessionChange() {
    this.setState({
      user: SessionStore.currentUser()
    });
  },

  loginModal() {
    this.setState({
      modalOpen: true
    });
  },

  handleLogOutClick(event){
    event.preventDefault();
    SessionActions.logOut();
  },

  componentWillUnmount(){
    this.sessionListener.remove();
  },

  openModal() {
    console.log("open");
  },

  closeModal() {
    this.setState({
      modalOpen: false
    });
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
          <a onClick={this.loginModal}>Modal</a>
          <Link to="session/new" className="navbar-logout">Log In</Link>
          <Modal
            isOpen={this.state.modalOpen}
            onAfterOpen={this.openModal}
            onRequestClose={this.closeModal}
            closeTimeoutMS={5}
            style={modalStyle}
            >
            blah
          </Modal>
        </nav>);
    }
  }
});

module.exports = Navbar;
