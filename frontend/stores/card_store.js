const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const CardConstants = require('../constants/card_constants');
const CardStore = new Store(AppDispatcher);

let _cards = {};

CardStore.all = () => {
  let cards = [];
  Object.keys(_cards).forEach( key => {
    cards.push(_cards[key]);
  });
  return cards;
};

CardStore.allOfDeck = (deckId) => {
  let cards = {};
  Object.keys(_cards).forEach( key => {
    if (_cards[key].deck_id === parseInt(deckId)){
      cards[key] = _cards[key];
    }
  });
  return cards;
};

CardStore.find = (id) => {
  return _cards[id];
};

CardStore.resetCards = cards => {
_cards = {};
  cards.forEach( card => {
    _cards[card.id] = card;
  });
  CardStore.__emitChange();
};

CardStore.setCard = card => {
_cards[card.id] = card;
  CardStore.__emitChange();
};

CardStore.removeCard = card => {
  delete _cards[parseInt(card.id)];
  CardStore.__emitChange();
};

CardStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case (CardConstants.CARDS_RECEIVED):
      CardStore.resetCards(payload.cards);
      break;
    case (CardConstants.CARD_RECEIVED):
      CardStore.setCard(payload.card);
      break;
    case (CardConstants.CARD_REMOVED):
      CardStore.removeCard(payload.card);
      break;
  }
};


module.exports = CardStore;
