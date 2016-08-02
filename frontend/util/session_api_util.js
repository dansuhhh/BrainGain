const SessionApiUtil = {
  signUp(formData, success, error){
    $.ajax({
      url: "api/users",
      type: "POST",
      data: { user: { username: formData.username, password: formData.password }},
      success,
      error
    });
  },

  logIn(formData, success, error){
    $.ajax({
      url: "api/session",
      type: "POST",
      data: { user: { username: formData.username, password: formData.password }},
      success,
      error
    });
  },

  logOut(success){
    $.ajax({
      url: "api/session",
      type: "DELETE",
      success
    });
  }
};

module.exports = SessionApiUtil;
