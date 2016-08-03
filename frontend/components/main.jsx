const React = require('react');
const Navbar = require('./navbar');
const Search = require('./search');
const PublicSubjectIndex = require('./public_subject_index');

const Main = React.createClass({
  render() {
    return (
      <div>
        <Navbar/>
        <Search/>
        <PublicSubjectIndex/>
      </div>
    );
  }
});

module.exports = Main;
