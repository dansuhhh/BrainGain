const CardApiUtil = require('../util/card_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const CardConstants = require('../constants/card_constants');

const CardActions = {
  fetchAllCards(){
    CardApiUtil.fetchAllCards(CardActions.receiveAllCards);
  },

 createCard(formData){
   CardApiUtil.createCard(formData, CardActions.receiveCard)
 },

  getCard(id){
    CardApiUtil.getCard(id, CardActions.receiveCard);
  },

  updateCard(formData){
    CardApiUtil.updateCard(formData, CardActions.receiveCard);
  },

  removeCard(id){
    CardApiUtil.removeCard(id, CardActions.deleteCard);
  },

  receiveAllCards(cards){
    AppDispatcher.dispatch({
      actionType: CardConstants.CARDS_RECEIVED,
      cards: cards
    });
  },

  receiveCard(card){
    AppDispatcher.dispatch({
      actionType: CardConstants.CARD_RECEIVED,
      card: card
    });
  },

  deleteCard(card){
    AppDispatcher.dispatch({
      actionType: CardConstants.CARD_REMOVED,
      card: card
    });
  },
};

module.exports = CardActions;
