const React = require ('react');
const DeckStore = require('../stores/deck_store');
const DeckActions = require('../actions/deck_actions');
const hashHistory = require('react-router').hashHistory;

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

  editDeck(deckId, event){
    hashHistory.push(`decks/${deckId}`);
  },

  deleteDeck(deckId, event) {
    DeckActions.removeDeck(deckId);
  },

  render(){
    let subjectDecks;
    if (this.state.decks.length > 0) {
      subjectDecks = this.state.decks.map( deck => {
        return (<tr key={deck.id}>
              <td>{deck.title}</td>
              <td>
                <a onClick={this.editDeck.bind(null, deck.id)}>
                  Edit
                </a>
              </td>
              <td>
                <a onClick={this.deleteDeck.bind(null, deck.id)}>
                  Delete
                </a>
              </td>
          </tr>);
      });
    }

    return(
      <article className="subject-deck-index">
        <table className="subject-deck-table">
          <thead>
            <tr><th>
              Decks
            </th></tr>
          </thead>
          <tbody>
            {subjectDecks}
          </tbody>
        </table>
      </article>
    );
  }
});

module.exports = LibraryDeckIndex;
