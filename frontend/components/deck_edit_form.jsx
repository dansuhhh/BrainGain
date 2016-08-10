const React = require('react');
const CardStore = require('../stores/card_store');
const CardActions = require('../actions/card_actions');
const DeckStore = require('../stores/deck_store');
const DeckActions = require('../actions/deck_actions');

const DeckEditForm = React.createClass({
  getInitialState() {
      return { deck: {} , cards: {} };
  },

  componentDidMount() {
    this.deckListener = DeckStore.addListener(this.handleDeckChange);
    if (!this.state.deck.title) {
      DeckActions.fetchAllDecks();
    }
    this.cardListener = CardStore.addListener(this.handleCardsChange);
    CardActions.fetchAllCards(this.props.params.deckId);
  },

  componentWillUnmount(){
    this.deckListener.remove();
    this.cardListener.remove();
  },

  handleDeckChange() {
    this.setState({
      deck: DeckStore.find(parseInt(this.props.params.deckId))
    });
  },

  handleCardsChange() {
    this.setState({
      cards: CardStore.allOfDeck(this.props.params.deckId)
    });
  },

  updateCardQuestion(currentCardId, event) {
    let newCards = Object.assign({}, this.state.cards);
    newCards[currentCardId].question = event.target.value;
    this.setState({
      cards: newCards
    });
  },

  updateCardAnswer(currentCardId, event) {
    let newCards = Object.assign({}, this.state.cards);
    newCards[currentCardId].answer = event.target.value;
    this.setState({
      cards: newCards
    });
  },

  deleteCard(currentCardId){
    let newCards = Object.assign({}, this.state.cards);
    delete newCards[currentCardId];
    this.setState({
      cards: newCards
    });
  },

  addRow(){
    let newCard = {
      id: (CardStore.all()[CardStore.all().length - 1].id + 1),
      question: "",
      answer: "",
      deck_id: this.props.params.deckId
    }
    let newCards = Object.assign({}, this.state.cards);
    newCards[newCard.id] = newCard;
    this.setState({
      cards: newCards
    });
  },

  render(){
    let header;
    if (this.state.deck.title){
      header = (<h2>
        Flashcards inside { `${this.state.deck.title}`}
      </h2>);
    }
    let cardRows;
    if (Object.keys(this.state.cards).length > 0) {
      cardRows = Object.keys(this.state.cards).map ( (cardId, index) => {
        return (<tr key={index}>
          <td className="deck-edit-col-1">{index + 1}</td>
          <td className="deck-edit-col-2">
            <input onChange={this.updateCardQuestion.bind(null, cardId)} value={this.state.cards[cardId].question} />
          </td>
          <td className="deck-edit-col-3">
            <input onChange={this.updateCardAnswer.bind(null, cardId)} value={this.state.cards[cardId].answer} />
          </td>
          <td className="deck-edit-col-4">
            <a onClick={this.deleteCard.bind(null, cardId)}>x</a>
          </td>
        </tr>)
      })
    }



    return(
      <article className="group deck-edit-form">
        {header}
        <table className="deck-edit-table">
          <thead>
            <tr className="column-headers">
              <th className="deck-edit-col-1">#</th>
              <th className="deck-edit-col-2">Question</th>
              <th className="deck-edit-col-3">Answer</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <td/>
              <td><a className="add-row" onClick={this.addRow}>Add a card</a></td>
            </tr>
          </tfoot>
          <tbody>
            { cardRows }
          </tbody>
        </table>
        <ul className="deck-edit-buttons">
          <a>Reset</a>
          <a>Save</a>
          <a>Study</a>
        </ul>
      </article>
    );
  }
});

module.exports = DeckEditForm;
