const React = require('react');
const SessionStore = require('../stores/session_store');
const Link = require('react-router').Link;

const Navbar = React.createClass({

  render(){
    let libraryTag;
    if (SessionStore.isUserLoggedIn()){
      libraryTag = <Link to="library" className="navbar-link">My Library</Link>;
    }
    return(
      <nav className="main-nav-bar">
        <a href="#" className="brain-image"></a>
        {libraryTag}
        <a href="#" className="navbar-link">FlashCards</a>
      </nav>
    );
  }
});

module.exports = Navbar;
