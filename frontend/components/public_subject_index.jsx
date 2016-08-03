const React = require('react');
const SubjectStore = require('../stores/subject_store');
const SubjectActions = require('../actions/subject_actions');

const PublicSubjectIndex = React.createClass({
  getInitialState() {
    return { subjects: [] };
  },

  componentDidMount() {
    SubjectStore.addListener(this.handleChange);
    SubjectActions.fetchAllSubjects();
  },

  handleChange(){
    this.setState({
      subjects: SubjectStore.all()
    });
  },

  render() {
    let subjectList = [];
    if (this.state.subjects){
      subjectList = this.state.subjects.map( subject => {
        return (
          <li
            key={subject.id}
            className="public-subject-item">
            {subject.title}
          </li>
        );
      });
    }

    return(
      <section className="public-subjects-section">
        <h3>User-Created Subjects</h3>
        <hr></hr>
        <ul>
          {subjectList}
        </ul>
      </section>
    );
  }
});

module.exports = PublicSubjectIndex;
