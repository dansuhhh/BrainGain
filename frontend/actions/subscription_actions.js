const SubscriptionApiUtil = require('../util/subscription_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const SubscriptionConstants = require('../constants/subscription_constants');

const SubscriptionActions = {
  fetchAllSubscriptions(){
    SubscriptionApiUtil.fetchAllSubscriptions(SubscriptionActions.receiveAllSubscriptions);
  },

  createSubscription(formData){
    SubscriptionApiUtil.createSubscription(formData, SubscriptionActions.receiveSubscription);
  },

  getSubscription(id){
    SubscriptionApiUtil.getSubscription(id, SubscriptionActions.receiveSubscription);
  },

  updateSubscription(formData){
    SubscriptionApiUtil.updateSubscription(formData, SubscriptionActions.receiveSubscription);
  },

  receiveAllSubscriptions(subscriptions){
    AppDispatcher.dispatch({
      actionType: SubscriptionConstants.SUBSCRIPTIONS_RECEIVED,
      subscriptions: subscriptions
    });
  },

  receiveSubscription(subscription){
    AppDispatcher.dispatch({
      actionType: SubscriptionConstants.SUBSCRIPTION_RECEIVED,
      subscription: subscription
    });
  }

};

module.exports = SubscriptionActions;
