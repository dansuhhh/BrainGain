const React = require('react');
const SubjectStore = require('../stores/subject_store');
const SubjectActions = require('../actions/subject_actions');

const SubjectIndex = React.createClass({
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
        return <p key={subject.id}>{subject.title}</p>;
      });
    }

    return(
      <ul>
        {subjectList}
      </ul>
    );
  }
});

module.exports = SubjectIndex;
