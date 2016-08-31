const React = require('react');
const Link = require('react-router').Link;
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');
const SubscriptionActions = require('../actions/subscription_actions');
const SubscriptionStore = require('../stores/subscription_store');
const SessionStore = require('../stores/session_store');

const PublicSubjectDetail = React.createClass({
  getInitialState() {
    return { subject: null, subscription: null };
  },

  componentDidMount() {
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
    this.subscriptionListener = SubscriptionStore.addListener(this.handleSubscriptionChange);
    this.id = this.props.params.subjectId;
    SubjectActions.getPublicSubject(this.id);
    if (SessionStore.isUserLoggedIn()){
      SubscriptionActions.fetchAllSubscriptions();
    }
  },

  componentWillUnmount() {
    this.subjectListener.remove();
    this.subscriptionListener.remove();
  },

  handleSubjectChange() {
    this.setState({
      subject: SubjectStore.find(this.id)
    });
  },

  handleSubscriptionChange() {
    this.setState({
      subscription: SubscriptionStore.ofSubject(this.props.params.subjectId)
    });
  },

  componentWillReceiveProps(newProps) {
    this.id = newProps.params.subjectId;
    SubjectActions.getPublicSubject(this.id);
    this.setState({
      subscription: SubscriptionStore.ofSubject(newProps.params.subjectId)
    });
  },

  subscribe(){
    SubscriptionActions.updateSubscription({id: this.state.subscription.id, flag: true});
  },

  unsubscribe(){
    SubscriptionActions.updateSubscription({id: this.state.subscription.id, flag: false});
  },

  render() {
    let subscribeBtn;
    let prompt;
    if (SessionStore.isUserLoggedIn() && this.state.subscription){
      if (SubjectStore.owned().includes(this.state.subject)){
        subscribeBtn = <a className="subscribe-btn-null">Your subject</a>;
        prompt = <p>The subject was created by you.</p>;
      } else if (this.state.subscription.flag === false){
        subscribeBtn = <a onClick={this.subscribe}>Subscribe</a>;
        prompt = <p>The subject will be automatically added to your library</p>;
      } else {
        subscribeBtn = <a onClick={this.unsubscribe}>Unsubscribe</a>;
        prompt = <p>The subject will be automatically removed from your library</p>;
      }
    } else {
      subscribeBtn = <Link to="session/new">Get Started</Link>;
      prompt = <p>The subject will be automatically added to your library</p>;
    }
    if (this.state.subject){
      return(
        <main className="public-subject-detail-page">
          <header>
            <img src={`${this.state.subject.image_url}`}/>
            <div className="public-subject-info">
              <h1>{this.state.subject.title}</h1>
              <p>Authored by {this.state.subject.author_name}</p>
            </div>
            <div className="subscribe-btn-window">
              {subscribeBtn}
              {prompt}
            </div>
          </header>
          <section>
            <h3>Deck List</h3>
            <table>
              <thead>
                <tr className="column-headers">
                  <th className="deck-col-1">#</th>
                  <th className="deck-col-2">Deck Name</th>
                  <th className="deck-col-3">Num of Cards</th>
                </tr>
              </thead>
              <tbody>
                { this.state.subject.decks.map( (deck, index) => {
                    return (<tr key={index}>
                      <td className="deck-col-1">{`${index + 1}`}</td>
                      <td className="deck-col-2">{`${deck.deck_title}`}</td>
                      <td className="deck-col-3">{`${deck.card_count}`}</td>
                    </tr>);
                  })
                }
              </tbody>
            </table>
          </section>
        </main>
      );
    }

    return(
      <main className="public-subject-detail-page">
      </main>
    );
  }
});

module.exports = PublicSubjectDetail;
