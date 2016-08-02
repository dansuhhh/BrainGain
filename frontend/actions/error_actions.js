const AppDispatcher = require('../dispatcher/dispatcher');
const ErrorConstants = require('../constants/error_constants');


const ErrorActions = {

  setErrors(formType, errors){
    let jsonErrors = errors.responseJSON;
    AppDispatcher.dispatch({
      actionType: ErrorConstants.SET_ERRORS,
      errorData: {formName: formType, errors: jsonErrors}
    });
  },

  clearErrors(){
    AppDispatcher.dispatch({
      actionType: ErrorConstants.CLEAR_ERRORS,
    });
  }
};

module.exports = ErrorActions;
