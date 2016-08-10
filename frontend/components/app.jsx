const React = require('react');
const Navbar = require('./navbar');
const App = React.createClass({

  navBar() {
    if ((this.props.location.pathname !== "/session/new") &&
      (this.props.location.pathname !== "/users/new") &&
      (this.props.location.pathname.substring(0,6) !== "/study")){
      return <Navbar/>;
    }
  },

  render () {

    return (
      <div>
        {this.navBar()}
        {this.props.children}
      </div>
    );
  }
});

module.exports = App;
