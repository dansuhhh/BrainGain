const React = require('react');
const Link = require('react-router').Link;
const hashHistory = require('react-router').hashHistory;
const CardStore = require('../stores/card_store');
const CardActions = require('../actions/card_actions');
const MasteryActions = require('../actions/mastery_actions');
const DeckStore = require('../stores/deck_store');
const DeckActions = require('../actions/deck_actions');

const DeckEditForm = React.createClass({
  getInitialState() {
      return { deck: {} , deckTitle: "", cards: {} };
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
    let newDeck = DeckStore.find(parseInt(this.props.params.deckId));
    this.setState({
      deck: newDeck,
      deckTitle: newDeck.title
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
    if (CardStore.find(currentCardId)){
      CardActions.removeCard(currentCardId);
    } else {
      let newCards = Object.assign({}, this.state.cards);
      delete newCards[currentCardId];
      this.setState({
        cards: newCards
      });
    }
  },

  addRow(){
    let newCard = {
      //guarantee uniqueness
      id: Math.random(),
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

  save(){
    Object.keys(this.state.cards).forEach( cardId => {
      let card = this.state.cards[cardId];
      if (card.id < 1) {
        CardActions.createCard({
          question: card.question,
          answer: card.answer,
          deck_id: card.deck_id
        });
      } else {
        CardActions.updateCard({
          id: card.id,
          question: card.question,
          answer: card.answer
        });
      }
    });
    DeckActions.updateDeck({id: this.state.deck.id, title: this.state.deckTitle});
    hashHistory.push(`/library`);
  },

  titleChange(e){
    this.setState({
      deckTitle: e.target.value
    });
  },

  render(){
    let header;
    if (this.state.deck.title){
      let title = <input onChange={this.titleChange} value={this.state.deckTitle} />;
      header = (<h2>
        Flashcards inside {title}
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
            <a onClick={this.deleteCard.bind(null, cardId)}><p>+</p></a>
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
        <a className="save" onClick={this.save}>Save</a>
      </article>
    );
  }
});

module.exports = DeckEditForm;
