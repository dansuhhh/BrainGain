const React = require('react');
const hashHistory = require('react-router').hashHistory;
const DeckActions = require('../actions/deck_actions');
const DeckStore = require('../stores/deck_store');
const CardActions = require('../actions/card_actions');
const CardStore = require('../stores/card_store');

const Study = React.createClass({
  getInitialState() {
    return {
      deck: {},
      mastery0: {},
      mastery1: {},
      mastery2: {},
      mastery3: {},
      mastery4: {},
      mastery5: {}
    }
  },

  componentDidMount() {
    this.deckListener = DeckStore.addListener(this.handleDeckChange);
    this.cardListener = CardStore.addListener(this.handleCardsChange);
    DeckActions.fetchAllDecks();
    CardActions.fetchAllCards();
  },

  componentWillUnmount(){
    this.deckListener.remove();
    this.cardListener.remove();
  },

  componentWillReceiveProps(newProps) {
    this.setState({
      deck: DeckStore.find(parseInt(newProps.params.deckId)),
      mastery0: CardStore.allOfDeck(newProps.params.deckId),
      mastery1: {},
      mastery2: {},
      mastery3: {},
      mastery4: {},
      mastery5: {}
    });
  },

  handleDeckChange(){
    this.setState({
      deck: DeckStore.find(parseInt(this.props.params.deckId)),
      mastery0: CardStore.allOfDeck(this.props.params.deckId)
    });
  },

  handleCardsChange(){
    this.setState({
      mastery0: CardStore.allOfDeck(this.props.params.deckId),
      mastery1: {},
      mastery2: {},
      mastery3: {},
      mastery4: {},
      mastery5: {}
    });
  },

  goToHome() {
    hashHistory.push('/');
  },

  render() {
    let deckName;
    if (this.state.deck.title){
      deckName = this.state.deck.title;
    }

    return(
      <main className="group study-page">
        <section className="study-nav">
          <a className="logo" onClick={this.goToHome}></a>
          <a className="library-link"></a>
        </section>
        <section className="progress">
          <header>
            Studying: {deckName}
          </header>
          <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
        </section>
        <section className="flashcard-section">
          <div className="flashcard">
            {}
          </div>
        </section>
      </main>
    );
  }
});

module.exports = Study;
