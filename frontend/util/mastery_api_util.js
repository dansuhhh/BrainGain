module.exports = {
  fetchAllMasteries(success){
    $.ajax({
      url: "api/masteries",
      type: "GET",
      success: success
    });
  },

  updateMastery(formData, success){
    $.ajax({
      url: `api/masteries/${formData.id}`,
      type: "PATCH",
      data: {
        mastery: {
          level: `${formData.level}`
        }
      },
      success: success
    });
  },

  getMastery(id, success){
    $.ajax({
      url: `api/masteries/${id}`,
      type: "GET",
      success: success
    });
  }

};
