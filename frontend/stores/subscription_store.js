const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;
const SubscriptionConstants = require('../constants/subscription_constants');
const SessionStore = require('../stores/session_store');
const SubscriptionStore = new Store(AppDispatcher);

let _subscriptions = {};

SubscriptionStore.all = () => {
  let subscriptions = [];
  Object.keys(_subscriptions).forEach( key => {
    subscriptions.push(_subscriptions[key]);
  });
  return subscriptions;
};

SubscriptionStore.ofSubject = (subjectId) => {
  let subscription;
  Object.keys(_subscriptions).forEach( key => {
    if (_subscriptions[key].subject_id === parseInt(subjectId)) {
      subscription = _subscriptions[key];
    }
  });
  return subscription;
};

SubscriptionStore.find = (id) => {
  return _subscriptions[id];
};

SubscriptionStore.resetSubscriptions = subscriptions => {
  _subscriptions = {};
  subscriptions.forEach( subscription => {
    _subscriptions[subscription.id] = subscription;
  });
  SubscriptionStore.__emitChange();
};

SubscriptionStore.setSubscription = subscription => {
  _subscriptions[subscription.id] = subscription;
  SubscriptionStore.__emitChange();
};

SubscriptionStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case (SubscriptionConstants.SUBSCRIPTIONS_RECEIVED):
      SubscriptionStore.resetSubscriptions(payload.subscriptions);
      break;
    case (SubscriptionConstants.SUBSCRIPTION_RECEIVED):
      SubscriptionStore.setSubscription(payload.subscription);
      break;
  }
};


module.exports = SubscriptionStore;
