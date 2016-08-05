const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const DeckConstants = require('../constants/deck_constants');
const DeckStore = new Store(AppDispatcher);

let _decks = {};

DeckStore.all = () => {
  let decks = [];
  Object.keys(_decks).forEach( key => {
    decks.push(_decks[key]);
  });
  return decks;
};

DeckStore.allOfSubject = (subjectId) => {
  let decks = [];
  Object.keys(_decks).forEach( key => {
    if (_decks[key].subject_id === parseInt(subjectId)){
      decks.push(_decks[key]);
    }
  });
  return decks;
};

DeckStore.find = (id) => {
  return _decks[id];
};

DeckStore.resetDecks = decks => {
_decks = {};
  decks.forEach( deck => {
  _decks[deck.id] = deck;
  });
  DeckStore.__emitChange();
};

DeckStore.setDeck = deck => {
_decks[deck.id] = deck;
  DeckStore.__emitChange();
};

DeckStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case (DeckConstants.DECKS_RECEIVED):
      DeckStore.resetDecks(payload.decks);
      break;
    case (DeckConstants.DECK_RECEIVED):
      DeckStore.setDeck(payload.deck);
      break;
  }
};


module.exports = DeckStore;
