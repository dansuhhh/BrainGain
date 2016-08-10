const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const MasteryConstants = require('../constants/mastery_constants');
const SessionStore = require('../stores/session_store');
const MasteryStore = new Store(AppDispatcher);

let _masteries = {};

MasteryStore.all = () => {
  let masteries = [];
  Object.keys(_masteries).forEach( key => {
    masteries.push(_masteries[key]);
  });
  return masteries;
};

MasteryStore.ofCard = (cardId) => {
  let mastery;
  Object.keys(_masteries).forEach( key => {
    if (_masteries[key].card_id === parseInt(cardId)) {
      mastery = _masteries[key];
    }
  });
  return mastery;
};

MasteryStore.find = (id) => {
  return _masteries[id];
};

MasteryStore.resetMasteries = masteries => {
  _masteries = {};
  masteries.forEach( mastery => {
    _masteries[mastery.id] = mastery;
  });
  MasteryStore.__emitChange();
};

MasteryStore.setMastery = mastery => {
  _masteries[mastery.id] = mastery;
  MasteryStore.__emitChange();
};

MasteryStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case (MasteryConstants.MASTERIES_RECEIVED):
      MasteryStore.resetMasteries(payload.masteries);
      break;
    case (MasteryConstants.MASTERY_RECEIVED):
      MasteryStore.setMastery(payload.mastery);
      break;
  }
};


module.exports = MasteryStore;
