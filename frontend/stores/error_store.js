const AppDispatcher = require('../dispatcher/dispatcher');
const Store = require('flux/utils').Store;

const ErrorStore = new Store(AppDispatcher);
const ErrorConstants = require('../constants/error_constants');

let _errors = [];
let _form = "";

ErrorStore.errors = form => {
  if (_form === form){
    return _errors;
  }
};

const _setErrors = (formName, errors) => {
  _form = formName;
  _errors = errors;
  ErrorStore.__emitChange();
};

const _clearErrors = () => {
  _form = "";
  _errors = [];
  ErrorStore.__emitChange();
};

ErrorStore.__onDispatch = payload => {
  switch (payload.actionType){
    case (ErrorConstants.SET_ERRORS):
      _setErrors(payload.errorData.formName, payload.errorData.errors);
      break;
    case (ErrorConstants.CLEAR_ERRORS):
      _clearErrors();
      break;
  }
};

module.exports = ErrorStore;
