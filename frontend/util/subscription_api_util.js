module.exports = {
  fetchAllSubscriptions(success){
    $.ajax({
      url: "api/subscriptions",
      type: "GET",
      success: success
    });
  },

  createSubscription(formData, success){
    $.ajax({
      url: "api/subscriptions",
      type: "POST",
      data: { subscription: formData },
      success: success
    });
  },

  updateSubscription(formData, success){
    $.ajax({
      url: `api/subscriptions/${formData.id}`,
      type: "PATCH",
      data: {
        subscription: {
          level: `${formData.level}`
        }
      },
      success: success
    });
  },

  getSubscription(id, success){
    $.ajax({
      url: `api/subscriptions/${id}`,
      type: "GET",
      success: success
    });
  }

};
