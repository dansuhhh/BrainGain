const MasteryApiUtil = require('../util/mastery_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const MasteryConstants = require('../constants/mastery_constants');

const MasteryActions = {
  fetchAllMasteries(){
    MasteryApiUtil.fetchAllMasteries(MasteryActions.receiveAllMasteries);
  },

  createMastery(formData){
    MasteryApiUtil.createMastery(formData, MasteryActions.receiveMastery);
  },

  getMastery(id){
    MasteryApiUtil.getMastery(id, MasteryActions.receiveMastery);
  },

  updateMastery(formData){
    MasteryApiUtil.updateMastery(formData, MasteryActions.receiveMastery);
  },

  receiveAllMasteries(masteries){
    AppDispatcher.dispatch({
      actionType: MasteryConstants.MASTERIES_RECEIVED,
      masteries: masteries
    });
  },

  receiveMastery(mastery){
    AppDispatcher.dispatch({
      actionType: MasteryConstants.MASTERY_RECEIVED,
      mastery: mastery
    });
  }

};

module.exports = MasteryActions;
