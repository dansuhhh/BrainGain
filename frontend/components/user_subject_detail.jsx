const React = require('react');
const LibraryDeckIndex = require('./library_deck_index');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');
const hashHistory = require('react-router').hashHistory;

const UserSubjectDetail = React.createClass({
  getInitialState() {
    let potentialSubject = SubjectStore.find(this.props.params.subjectId);
    if (potentialSubject){
      return {
        title: potentialSubject.title,
        imageFile: potentialSubject.image,
        imageUrl: potentialSubject.image_url
      };
    } else {
      return {
        title: "",
        imageFile: null,
        imageUrl: ""
      };
    }
  },

  componentDidMount() {
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
  },

  componentWillReceiveProps(newProps){
    let potentialSubject = SubjectStore.find(newProps.params.subjectId);
    if (potentialSubject){
      this.setState({
        title: potentialSubject.title,
        imageFile: potentialSubject.image,
        imageUrl: potentialSubject.image_url
      });
    } else {
      this.setState({
        title: "",
        imageFile: null,
        imageUrl: ""
      });
    }
  },

  componentWillUnmount(){
    this.subjectListener.remove();
  },

  handleSubjectChange(){
    let subject = SubjectStore.find(this.props.params.subjectId);
    this.setState({
      title: subject.title,
      imageFile: subject.image,
      imageUrl: subject.image_url
    });
  },

  handleDelete(event){
    SubjectActions.removeSubject(this.props.params.subjectId);
    hashHistory.push("/library");
  },

  updateFile(event){
    let file = event.currentTarget.files[0];
    let fileReader = new FileReader();
    fileReader.onloadend = () => {
      this.setState({ imageFile: file, imageUrl: fileReader.result });
    }

    if (file) {
      fileReader.readAsDataURL(file);
    }
  },

  render() {
    let title;
    if (this.state.title) {
      title = <h1>{this.state.title}</h1>;
    }

    return(
      <section className="section-subject-detail">
        <article className="subject-info">
          <div className="subject-avatar">
            <img src={`${this.state.imageUrl}`}/>
            <input type="file" onChange={this.updateFile}/>
            <a className="thumbnail-edit"/>
          </div>
          {title}
          <a className="delete-button" onClick={this.handleDelete}>Delete Subject</a>
        </article>
        <LibraryDeckIndex subjectId={this.props.params.subjectId}/>
      </section>
    );
  }
});

module.exports = UserSubjectDetail;
