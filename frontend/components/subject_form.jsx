const React = require('react');
const SubjectActions = require('../actions/subject_actions');

const SubjectForm = React.createClass({
  getInitialState(){
    return { title: "", error: "" };
  },

  updateTitle(event){
    this.setState({
      title: event.target.value
    });
  },

  handleSubmit(event){
    event.preventDefault();
    if (this.state.title === "") {
      this.setState({ error: "Please enter a subject title!"});
    } else {
      this.setState({ title: "" });
      SubjectActions.createSubject({ title: this.state.title });
    }
  },

  render(){
    let error;
    if (this.state.error) {
      error = <h6>{this.state.error}</h6>;
    }

    return(
      <div>
        <h6>New Subject</h6>
        {error}
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            value={this.state.title}
            placeholder="e.g. Biology 101"
            onChange={this.updateTitle}/>
          <input type="submit" value="Create"/>
        </form>
      </div>
    );
  }
});

module.exports = SubjectForm;
