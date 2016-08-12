const React = require('react');
const CardActions = require('../actions/card_actions');
const CardStore = require('../stores/card_store');
const MasteryActions = require('../actions/mastery_actions');
const MasteryStore = require('../stores/mastery_store');

const Flashcard = React.createClass({
  getInitialState(){
    return { side: "", currentCardIndex: -1, cards: [] };
  },

  componentDidMount() {
    this.cardListener = CardStore.addListener(this.handleCardsChange);
    CardActions.fetchAllCards(this.props.deckId);
  },

  componentWillUnmount(){
    this.cardListener.remove();
  },

  handleCardsChange(){
    let newCardsObject = CardStore.allOfDeck(this.props.deckId);
    let newCardsList = Object.keys(newCardsObject).map (cardId => {
      return newCardsObject[cardId];
    });
    this.setState({
      currentCardIndex: 0,
      cards: newCardsList
    });
  },

  flipCard(){
    this.setState({
      side: this.state.side === "" ? "flipped" : ""
    });
  },

  updateMastery(event){
    let currentMastery = MasteryStore.ofCard(this.state.cards[this.state.currentCardIndex].id);
    MasteryActions.updateMastery({
      id: currentMastery.id,
      level: parseInt(event.target.textContent)
    });
    let nextCardIndex;
    if (this.state.currentCardIndex === this.state.cards.length - 1){
      nextCardIndex = 0;
    } else {
      nextCardIndex = this.state.currentCardIndex + 1;
    }
    this.setState({
      side: this.state.side === "" ? "flipped" : "",
      currentCardIndex: nextCardIndex
    });
  },

  render() {
    let card;
    let content;
    let prompt;
    if (this.state.currentCardIndex >= 0){
      card = this.state.currentCardIndex;
      if (this.state.side === ""){
        content = "Q: " + this.state.cards[this.state.currentCardIndex].question;
        prompt = (<div className="prompt">
          <a onClick={this.flipCard} className="reveal">
            Reveal Answer
          </a>
        </div>);
      } else {
        content = "A: " + this.state.cards[this.state.currentCardIndex].answer;
        prompt = (<div className="prompt">
          <p>How well did you know this?</p>
          <ul className="group mastery-choices">
            <li onClick={this.updateMastery}>1</li>
            <li onClick={this.updateMastery}>2</li>
            <li onClick={this.updateMastery}>3</li>
            <li onClick={this.updateMastery}>4</li>
            <li onClick={this.updateMastery}>5</li>
          </ul>
        </div>);
      }
    }
    return(
      <section className="flashcard-section">
        <article onClick={this.flipCard} className={`flashcard ${this.state.side}`}>
          <div className="front">
            <p>{content}</p>
          </div>
          <div className="back">
            <p>{content}</p>
          </div>
        </article>
        {prompt}
      </section>
    );
  }
});

module.exports = Flashcard;
