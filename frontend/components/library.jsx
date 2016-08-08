const React = require('react');
const Navbar = require('./navbar');
const UserSubjectIndex = require('./user_subject_index');

const Library = React.createClass({
  render(){
    return(
      <main className="group library">
        <UserSubjectIndex/>
        {this.props.children}
      </main>

    );
  }
});

module.exports = Library;
