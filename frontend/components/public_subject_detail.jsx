const React = require('react');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');
const SubscriptionActions = require('../actions/subscription_actions');
const SubscriptionStore = require('../stores/subscription_store');

const PublicSubjectDetail = React.createClass({
  getInitialState() {
    return { subject: null, subscription: null };
  },

  componentDidMount() {
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
    this.subscriptionListener = SubscriptionStore.addListener(this.handleSubscriptionChange);
    SubjectActions.getPublicSubject(this.props.params.subjectId);
    SubscriptionActions.fetchAllSubscriptions();
  },

  componentWillUnmount() {
    this.subjectListener.remove();
    this.subscriptionListener.remove();
  },

  handleSubjectChange() {
    this.setState({
      subject: SubjectStore.find(this.props.params.subjectId)
    });
  },

  handleSubscriptionChange() {
    this.setState({
      subscription: SubscriptionStore.ofSubject(this.props.params.subjectId)
    });
  },

  componentWillReceiveProps(newProps) {
    SubjectActions.getPublicSubject(newProps.params.subjectId);
    this.setState({
      subscription: SubscriptionStore.ofSubject(newProps.params.subjectId)
    });
  },


  render() {
    let subscribeBtn;
    if (this.state.subscription){
      if (SubscriptionStore.isOwned(this.state.subscription)){
        subscribeBtn = <a>"Owned"</a>;
      } else if (this.state.subscription === false){
        subscribeBtn = <a>"Subscribe"</a>;
      } else {
        subscribeBtn = <a>"Unsubscribe"</a>;
      }
    }
    if (this.state.subject){
      return(
        <main className="public-subject-detail-page">
          <header>
            <img src={`${this.state.subject.image_url}`}/>
            <div>
              <h1>{this.state.subject.title}</h1>
              <p>Authored by {this.state.subject.author_name}</p>
            </div>
            {subscribeBtn}
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
