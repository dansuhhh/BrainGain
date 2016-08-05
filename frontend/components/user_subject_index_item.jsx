const React = require('react');
const LibraryDeckIndex = require('./library_deck_index');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');

const UserSubjectIndexItem = React.createClass({
  handleDelete(event){
    event.preventDefault();
    SubjectActions.removeSubject(this.props.params.subjectId);
  },

  render() {
    return(
      <section className="section-subject-detail">
        <h1>{this.props.params.subjectId}</h1>
        <a onClick={this.handleDelete}>Delete</a>
        <LibraryDeckIndex subjectId={this.props.params.subjectId}/>
      </section>
    );
  }
});

module.exports = UserSubjectIndexItem;
