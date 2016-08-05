module.exports = {
  fetchAllCards(success){
    $.ajax({
      url: "api/cards",
      type: "GET",
      success: success
    });
  },

  createCard(formData, success){
    $.ajax({
      url: "api/cards",
      type: "POST",
      data: { card: formData },
      success: success
    });
  },

  updateCard(formData, success){
    $.ajax({
      url: `api/cards/${formData.id}`,
      type: "PATCH",
      data: {
        card: {
          question: `${formData.question}`,
          answer: `${formData.answer}`
        }
      },
      success: success
    });
  },

  getCard(id, success){
    $.ajax({
      url: `api/cards/${id}`,
      type: "GET",
      success: success
    });
  },

  removeCard(id, success){
    $.ajax({
      url: `api/cards/${id}`,
      type: "DELETE",
      success: success
    });
  }
};
