module.exports = {
  fetchAllSubjects(success){
    $.ajax({
      url: "api/subjects",
      type: "GET",
      success: success
    });
  },

  createSubject(formData, success){
    $.ajax({
      url: "api/subjects",
      type: "POST",
      dataType: 'json',
      data: { subject: formData },
      success: success
    });
  },

  updateSubject(formData, success){
    $.ajax({
      url: `api/subjects/${formData.id}`,
      type: "PATCH",
      dataType: 'json',
      data: {
        subject: { title: formData.title }
      },
      success: success
    });
  },

  getSubject(id, success){
    $.ajax({
      url: `api/subjects/${id}`,
      type: "GET",
      success: success
    });
  },

  removeSubject(id, success){
    $.ajax({
      url: `api/subjects/${id}`,
      type: "DELETE",
      success: success
    });
  }
};
