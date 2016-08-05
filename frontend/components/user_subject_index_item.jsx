const React = require('react');
const LibraryDeckIndex = require('./library_deck_index');

const UserSubjectIndexItem = React.createClass({
  render() {

    return(
      <section className="section-subject-detail">
        <h1>{this.props.params.subjectId}</h1>
        <LibraryDeckIndex subjectId={this.props.params.subjectId}/>
      </section>
    );
  }
});

module.exports = UserSubjectIndexItem;
