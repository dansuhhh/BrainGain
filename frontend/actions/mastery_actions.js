const MasteryApiUtil = require('../util/mastery_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const MasteryConstants = require('../constants/mastery_constants');

const MasteryActions = {
  fetchAllMasteries(){
    MasteryApiUtil.fetchAllMasteries(MasteryActions.receiveAllMasteries);
  },

  getMastery(id){
    MasteryApiUtil.getMastery(id, MasteryActions.receiveMastery);
  },

  updateMastery(formData){
    MasteryApiUtil.updateMastery(formData, MasteryActions.receiveMastery);
  },

  receiveAllMasteries(masteriess){
    AppDispatcher.dispatch({
      actionType: MasteryConstants.CARDS_RECEIVED,
      masteries: masteries
    });
  },

  receiveMastery(mastery){
    AppDispatcher.dispatch({
      actionType: MasteryConstants.CARD_RECEIVED,
      mastery: mastery
    });
  }

};

module.exports = MasteryActions;
