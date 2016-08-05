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
        return (<tr key={deck.id}>
              {deck.title}
          </tr>);
      });
    }

    return(
      <article className="subject-deck-index">
        <table className="subject-deck-table">
          <thead>Decks</thead>
          <tbody>
            {subjectDecks}
          </tbody>
        </table>
      </article>
    );
  }
});

module.exports = LibraryDeckIndex;
