const React = require ('react');
const DeckStore = require('../stores/deck_store');
const DeckActions = require('../actions/deck_actions');


const LibraryDeckIndex = React.createClass({
  getInitialState(){
    return { decks : [] }
  },

  componentDidMount() {
    this.deckListener = DeckStore.addListener(this.handleDeckChange);
    DeckActions.fetchAllDecks();
  },

  componentWillUnmount(){
    this.deckListener.remove();
  },

  componentWillReceiveProps(nextProps){
    this.setState({
      decks: DeckStore.allOfSubject(nextProps.subjectId)
    });
  },

  handleDeckChange(){
    this.setState({
      decks: DeckStore.allOfSubject(this.props.subjectId)
    });
  },

  render(){
    let subjectDecks;
    if (this.state.decks) {
      subjectDecks = this.state.decks.map( deck => {
        return <p key={deck.id}>{deck.title}</p>;
      });
    }

    return(
      <div>
        <h2>Decks</h2>
        {subjectDecks}
      </div>
    );
  }
});

module.exports = LibraryDeckIndex;
