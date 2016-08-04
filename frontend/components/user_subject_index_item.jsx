const React = require('react');

const UserSubjectIndexItem = React.createClass({
  render() {

    return(
      <section className="section-subject-detail">
        <h1>{this.props.params.subjectId}</h1>
        <p>Decks</p>
      </section>
    );
  }
});

module.exports = UserSubjectIndexItem;
