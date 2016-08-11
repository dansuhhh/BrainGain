module.exports = {
  fetchAllMasteries(success){
    $.ajax({
      url: "api/masteries",
      type: "GET",
      success: success
    });
  },

  createMastery(formData, success){
    $.ajax({
      url: "api/masteries",
      type: "POST",
      data: { mastery: formData },
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
