const React = require('react');
const DeckActions = require('../actions/deck_actions');
const DeckStore = require('../stores/deck_store');
const CardActions = require('../actions/card_actions');
const CardStore = require('../stores/card_store');
const MasteryActions = require('../actions/mastery_actions');
const MasteryStore = require('../stores/mastery_store');
const Link = require('react-router').Link;

const DeckMastery = React.createClass({
  getInitialState() {
    return { deck: {}, cards: {}, masteries: [] };
  },

  componentDidMount(){
    this.deckListener = DeckStore.addListener(this.handleDeckChange);
    this.cardListener = CardStore.addListener(this.handleCardsChange);
    this.masteryListener = MasteryStore.addListener(this.handleMasteriesChange);
    DeckActions.fetchAllDecks();
    CardActions.fetchAllCards(this.props.deckId);
    MasteryActions.fetchAllMasteries();
  },

  componentWillUnmount(){
    this.deckListener.remove();
    this.cardListener.remove();
    this.masteryListener.remove();
  },

  componentWillReceiveProps(newProps){
    let newCards = CardStore.allOfDeck(newProps.deckId);
    let newMasteries = [];
    Object.keys(newCards).forEach( cardId => {
      newMasteries.push(MasteryStore.ofCard(cardId));
    });
    this.setState({
      deck: DeckStore.find(newProps.deckId),
      cards: newCards,
      masteries: newMasteries
    });
  },

  handleDeckChange(){
    this.setState({
      deck: DeckStore.find(this.props.deckId)
    });
  },

  handleCardsChange(){
    this.setState({
      cards: CardStore.allOfDeck(this.props.deckId)
    });
  },

  handleMasteriesChange(){
    let newMasteries = [];
    Object.keys(this.state.cards).forEach( cardId => {
      newMasteries.push(MasteryStore.ofCard(cardId));
    });
    this.setState({
      masteries: newMasteries
    });
  },

  render() {
    let title = this.state.deck.title ? this.state.deck.title : "";
    let bar1 = 0;
    let bar2 = 0;
    let bar3 = 0;
    let bar4 = 0;
    let bar5 = 0;
    let count = 0;
    if (this.state.masteries){
      count = Object.keys(this.state.masteries).length;
      Object.keys(this.state.masteries).forEach( mastery_id => {
        let mastery = this.state.masteries[mastery_id];
        switch (mastery.level) {
          case (1):
            bar1++;
            break;
          case (2):
            bar2++;
            break;
          case (3):
            bar3++;
            break;
          case (4):
            bar4++;
            break;
          case (5):
            bar5++;
            break;
        }
      });
    }
    return(
      <section className="progress">
        <h3>{title}</h3>
        <Link to={`/library`}>Done</Link>
        <ul>
          <li>{"Total cards: " + count}</li>
          <li>{"Mastery level 1: " + bar1}</li>
          <li>{"Mastery level 2: " + bar2}</li>
          <li>{"Mastery level 3: " + bar3}</li>
          <li>{"Mastery level 4: " + bar4}</li>
          <li>{"Mastery level 5: " + bar5}</li>
        </ul>
      </section>
    );
  }
});

module.exports = DeckMastery;
