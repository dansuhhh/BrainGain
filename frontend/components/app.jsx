const React = require('react');

const App = React.createClass({
  render () {
    return (
      <div>
        {this.props.children}
      </div>
    );
  }
});

module.exports = App;
