const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;

const SessionStore = new Store(AppDispatcher);
const SessionConstants = require('../constants/session_constants');

let _currentUser = {};
let _currentUserHasBeenFetched = false;

const _login = function(currentUser) {
  _currentUser = currentUser;
  _currentUserHasBeenFetched = true;
  SessionStore.__emitChange();
};

const _logout = function() {
  _currentUser = {};
  _currentUserHasBeenFetched = true;
  SessionStore.__emitChange();
};

SessionStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case SessionConstants.LOGIN:
      _login(payload.currentUser);
      break;
    case SessionConstants.LOGOUT:
    	_logout();
      break;
  }
};

SessionStore.currentUser = function() {
  return Object.assign({}, _currentUser);
};

SessionStore.currentUserHasBeenFetched = function () {
  return !!_currentUserHasBeenFetched;
};

SessionStore.isUserLoggedIn = () => {
  return !!_currentUser.id;
};

module.exports = SessionStore;
