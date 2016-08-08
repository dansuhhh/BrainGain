const React = require('react');
const CardStore = require('../stores/card_store');
const CardActions = require('../actions/card_actions');
const DeckStore = require('../stores/deck_store');

const DeckEditForm = React.createClass({
  getInitialState() {
      return { cards: [] };
  },

  componentDidMount() {
    this.cardListener = CardStore.addListener(this.handleCardChange);
    CardActions.fetchAllCards();
  },

  componentWillUnmount(){
    this.cardListener.remove();
  },

  handleCardChange(e) {
    this.setState({
      cards: CardStore.allOfDeck(this.props.params.deckId)
    });
  },

  render(){
    let tableHeader;
    if(this.state.cards.length > 0){
      tableHeader = <thead>Flashcards inside { `${DeckStore.find(parseInt(this.props.params.deckId)).title}`}</thead>;
    }
    return(
      <article>
        <table className="deck-edit-table">
          {tableHeader}
          <tbody>
            {subjectDecks}
          </tbody>
        </table>
      </article>
    );
  }
});

module.exports = DeckEditForm;
