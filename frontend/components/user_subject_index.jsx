const React = require('react');
const SubjectStore = require('../stores/subject_store');
const SubjectActions = require('../actions/subject_actions');
const SubjectForm = require('./subject_form');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;
const SubscriptionActions = require('../actions/subscription_actions');
const SubscriptionStore = require('../stores/subscription_store');


const UserSubjectIndex = React.createClass({
  getInitialState(){
    return { subjects: SubjectStore.owned(), subscriptions: null };
  },

  componentDidMount(){
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
    this.subscriptionListener = SubscriptionStore.addListener(this.handleSubscriptionsChange);
    SubjectActions.fetchAllSubjects();
    SubscriptionActions.fetchAllSubscriptions();
  },

  componentWillUnmount() {
    this.subjectListener.remove();
    this.subscriptionListener.remove();
  },

  handleSubjectChange(){
    this.setState({
      subjects: SubjectStore.owned()
    });
  },

  handleSubscriptionsChange(){
    let currentSubscriptions = [];
    if (SubscriptionStore.all().length > 0){
      SubjectStore.all().forEach( subject => {
        if (!this.state.subjects.includes(subject)){
          if (SubscriptionStore.ofSubject(subject.id).flag){
            currentSubscriptions.push(subject);
          }
        }
      });
    }
    this.setState({
      subscriptions: currentSubscriptions
    });
  },

  goToSubject(id){
    hashHistory.push(`/library/${id}`);
  },

  render(){
    let userSubjects;
    if (this.state.subjects){
      userSubjects = this.state.subjects.map( subject => {
        return (
          <li onClick={this.goToSubject.bind(null, subject.id)} className="group user-subject-list-item" key={subject.id}>
            <a className="index-subject-thumb"><img src={`${subject.image_url}`}/></a>
            <a>{subject.title}</a>
        </li>);
      });
    }

    let subscribedSubjects;
    if (this.state.subscriptions){
      subscribedSubjects = this.state.subscriptions.map( subscription => {
        return (
          <li onClick={this.goToSubject.bind(null, subscription.id)} className="group user-subject-list-item" key={subscription.id}>
            <a className="index-subject-thumb"><img src={`${subscription.image_url}`}/></a>
            <a>{subscription.title}</a>
        </li>);
      });
    }
    return (
      <aside className="user-subject-index">
        <header className="subject-index-header">
          <h3>Subjects</h3>
        </header>
        <SubjectForm />
        <ul className="group user-subject-list">
          {userSubjects}
          {subscribedSubjects}
        </ul>
      </aside>
    );
  }
});


module.exports = UserSubjectIndex;
