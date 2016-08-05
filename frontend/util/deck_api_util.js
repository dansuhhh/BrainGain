module.exports = {
  fetchAllDecks(success){
    $.ajax({
      url: "api/decks",
      type: "GET",
      success: success
    });
  },

  createDeck(formData, success){
    $.ajax({
      url: "api/decks",
      type: "POST",
      data: { deck: formData },
      success: success
    });
  },

  updateDeck(formData, success){
    $.ajax({
      url: `api/decks/${formData.id}`,
      type: "PATCH",
      data: {
        deck: {
          title: `${formData.title}`,
          description: `${formData.description}`
        }
      },
      success: success
    });
  },

  getDeck(id, success){
    $.ajax({
      url: `api/decks/${id}`,
      type: "GET",
      success: success
    });
  },

  removeDeck(id, success){
    $.ajax({
      url: `api/decks/${id}`,
      type: "DELETE",
      success: success
    });
  }
};
