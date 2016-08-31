const React = require('react');
const LibraryDeckIndex = require('./library_deck_index');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');
const SubscriptionActions = require('../actions/subscription_actions');
const SubscriptionStore = require('../stores/subscription_store');
const hashHistory = require('react-router').hashHistory;

const UserSubjectDetail = React.createClass({
  getInitialState() {
    let potentialSubject = SubjectStore.find(this.props.params.subjectId);
    if (potentialSubject){
      return {
        title: potentialSubject.title,
        imageFile: potentialSubject.image,
        imageUrl: potentialSubject.image_url,
        subscribed: null
      };
    } else {
      return {
        title: "",
        imageFile: null,
        imageUrl: "",
        subscribed: null
      };
    }
  },

  componentDidMount() {
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
    this.subscriptionListener = SubscriptionStore.addListener(this.handleSubscriptionChange);
    SubscriptionActions.fetchAllSubscriptions();
  },

  componentWillReceiveProps(newProps){
    let potentialSubject = SubjectStore.find(newProps.params.subjectId);
    if (potentialSubject){
      this.setState({
        title: potentialSubject.title,
        imageFile: potentialSubject.image,
        imageUrl: potentialSubject.image_url,
        subscription: SubscriptionStore.ofSubject(newProps.params.subjectId)
      });
    } else {
      this.setState({
        title: "",
        imageFile: null,
        imageUrl: "",
        subscription: SubscriptionStore.ofSubject(newProps.params.subjectId)
      });
    }
  },

  componentWillUnmount(){
    this.subjectListener.remove();
    this.subscriptionListener.remove();
  },

  handleSubjectChange(){
    let subject = SubjectStore.find(this.props.params.subjectId);
    this.setState({
      title: subject.title,
      imageFile: subject.image,
      imageUrl: subject.image_url,
      subscription: SubscriptionStore.ofSubject(this.props.params.subjectId)
    });
  },

  handleSubscriptionChange(){
    this.setState({
      subscription: SubscriptionStore.ofSubject(this.props.params.subjectId)
    });
  },

  handleDelete(event){
    SubjectActions.removeSubject(this.props.params.subjectId);
    hashHistory.push("/library");
  },

  deleteSubscription(event){
    SubscriptionActions.updateSubscription({id: this.state.subscription.id, flag: false});
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
    var formData = new FormData();
    formData.append("subject[image]", file);

    SubjectActions.updateImage(this.props.params.subjectId, formData, this.resetForm);
  },

  updateTitle(event){
    SubjectActions.updateSubject({
      id: this.props.params.subjectId,
      title: this.state.title
    });
  },

  titleChange(event){
    this.setState({
      title: event.target.value
    });
  },

  render() {
    let title;
    let imageInput;
    let editImage;
    let removeBtn;
    let flag;
    if (this.state.subscription) {
      if (this.state.subscription.flag){
        title = <input onChange={this.titleChange} onBlur={this.updateTitle} value={this.state.title} disabled/>;
        flag = true;
        removeBtn = <a className="delete-button" onClick={this.deleteSubscription}>Unsubscribe</a>;
      } else {
        title = <input onChange={this.titleChange} onBlur={this.updateTitle} value={this.state.title} />;
        imageInput = <input type="file" onChange={this.updateFile}/>;
        editImage = <a className="thumbnail-edit"/>
        flag = false;
        removeBtn = <a className="delete-button" onClick={this.handleDelete}>Delete Subject</a>;
      }
    }


    return(
      <section className="section-subject-detail">
        <article className="subject-info">
          <div className="subject-avatar">
            <img src={`${this.state.imageUrl}`}/>
            {imageInput}
            {editImage}
          </div>
          {title}
          {removeBtn}
        </article>
        <LibraryDeckIndex subscribed={flag} subjectId={this.props.params.subjectId}/>
      </section>
    );
  }
});

module.exports = UserSubjectDetail;
