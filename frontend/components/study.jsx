const React = require('react');
const hashHistory = require('react-router').hashHistory;
const DeckActions = require('../actions/deck_actions');
const DeckStore = require('../stores/deck_store');
const CardActions = require('../actions/card_actions');
const CardStore = require('../stores/card_store');
const DeckMastery = require('./deck_mastery');
const Flashcard = require('./flashcard');

const Study = React.createClass({
  getInitialState(){
    return { deckId: this.props.params.deckId }
  },

  componentWillReceiveProps(newProps){
    this.setState({
      deckId: newProps.params.deckId
    });
  },

  goToHome() {
    hashHistory.push('/');
  },

  render() {
    return(
      <main className="group study-page">
        <section className="study-nav">
          <a className="logo" onClick={this.goToHome}></a>
          <a className="library-link"></a>
        </section>
        <DeckMastery deckId={this.state.deckId} />
        <Flashcard deckId={this.state.deckId} />
      </main>
    );
  }
});

module.exports = Study;
