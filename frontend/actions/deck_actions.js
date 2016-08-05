const DeckApiUtil = require('../util/deck_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const DeckConstants = require('../constants/deck_constants');

const DeckActions = {
  fetchAllDecks(){
    DeckApiUtil.fetchAllDecks(DeckActions.receiveAllDecks);
  },

 createDeck(formData){
   DeckApiUtil.createDeck(formData, DeckActions.receiveDeck)
 },

  getDeck(id){
    DeckApiUtil.getDeck(id, DeckActions.receiveDeck);
  },

  updateDeck(formData){
    DeckApiUtil.updateDeck(formData, DeckActions.receiveDeck);
  },

  removeDeck(id){
    DeckApiUtil.removeDeck(id, DeckActions.deleteDeck);
  },

  receiveAllDecks(decks){
    AppDispatcher.dispatch({
      actionType: DeckConstants.DECKS_RECEIVED,
      decks: decks
    });
  },

  receiveDeck(deck){
    AppDispatcher.dispatch({
      actionType: DeckConstants.DECK_RECEIVED,
      deck: deck
    });
  },

  deleteDeck(deck){
    AppDispatcher.dispatch({
      actionType: DeckConstants.DECK_REMOVED,
      deck: deck
    });
  },


};

module.exports = DeckActions;
