# Flux Cycles

Flux loops are organized by data type. Under each data type, there may
be sub-categories, and each action is listed with the sequence of events
that result from its invocation, ending with the API or store. Finally,
store listeners are listed at the end.

## Auth Cycles

### Session API Request Actions

* `signUp`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
  0. invoked from `Navbar` `onSubmit`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.
* `logOut`
  0. invoked from `Navbar` `onClick`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the success callback.
* `fetchCurrentUser`
  0. invoked from `App` in `didMount`
  0. `GET /api/session` is called.
  0. `receiveCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. stores in `_currentUser` in `CurrentUserStore`
* `removeCurrentUser`
  0. invoked from an API callback
  0. removes `_currentUser` in `CurrentUserStore`

## Error Cycles

### Error API Response Actions
* `setErrors`
  0. invoked from API callbacks on error for actions that generate POST requests
  0. sets `form` and `_errors` in the `ErrorStore`
* `removeErrors`
  0. invoked from API callbacks on success for actions that generate POST requests
  0. removes `_errors` for a given `form` in the `ErrorStore`

## Subjects Cycles

### Subjects API Request Actions

* `fetchAllSubjects`
  0. invoked from `SubjectsIndex` `didMount`/`willReceiveProps`
  0. `GET /subjects` is called.
  0. `receiveAllSubjects` is set as the success callback.

* `createSubject`
  0. invoked from new subject button `onClick`
  0. `POST /subjects` is called.
  0. `receiveSingleSubject` is set as the success callback.

* `fetchSingleSubject`
  0. invoked from `SubjectsIndexItem` `didMount`/`willReceiveProps`
  0. `GET /subjects/:id` is called.
  0. `receiveSingleSubject` is set as the success callback.

* `destroySubject`
  0. invoked from delete subject button `onClick`
  0. `DELETE /subjects/:id` is called.
  0. `removeSubject` is set as the success callback.

### Notes API Response Actions

* `receiveAllSubjects`
  0. invoked from an API callback.
  0. `Subject` store updates `_subjects` and emits change.

* `receiveSingleSubject`
  0. invoked from an API callback.
  0. `Subject` store updates `_subjects[id]` and emits change.

* `removeSubject`
  0. invoked from an API callback.
  0. `Subject` store removes `_subjects[id]` and emits change.

### Store Listeners

* `SubjectsIndex` component listens to `Subject` store.
* `SubjectIndexItem` component listens to `Subject` store.


## Decks Cycles

### Decks API Request Actions

* `fetchAllDecks`
  0. invoked from `DeckIndex` `didMount`/`willReceiveProps`
  0. `GET /subjects/:subjectId/decks` is called.
  0. `receiveAllDecks` is set as the success callback.

* `createDeck`
  0. invoked from new deck button `onClick`
  0. `POST /subjects/:id/decks` is called.
  0. `receiveSingleDeck` is set as the callback.

* `fetchSingleDeck`
  0. invoked from `DeckIndexItem` `didMount`/`willReceiveProps`
  0. `GET /subjects/:subjectId/decks/:id` is called.
  0. `receiveSingleDeck` is set as the success callback.

* `updateDeck`
  0. invoked from `DeckIndexItemForm` `onSubmit`
  0. `POST /subjects/:subjectId/decks/:id` is called.
  0. `receiveSingleDeck` is set as the success callback.

* `destroyDeck`
  0. invoked from deck button `onClick`
  0. `DELETE /subjects/:id/decks/:id` is called.
  0. `removeDeck` is set as the success callback.

### Notebooks API Response Actions

* `receiveAllDecks`
  0. invoked from an API callback.
  0. `Deck` store updates `_decks` and emits change.

* `receiveSingleDeck`
  0. invoked from an API callback.
  0. `Deck` store updates `_decks[id]` and emits change.

* `removeDeck`
  0. invoked from an API callback.
  0. `Deck` store removes `_decks[id]` and emits change.

### Store Listeners

* `DeckIndex` component listens to `Deck` store.


## SearchSuggestion Cycles

* `fetchSearchSuggestions`
  0. invoked from `SubjectSearchBar` `onChange` when there is text
  0. `GET /subjects/` is called with `text` param.
  0. `receiveSearchSuggestions` is set as the success callback.

* `receiveSearchSuggestions`
  0. invoked from an API callback.
  0. `SearchSuggestion` store updates `_suggestions` and emits change.

* `removeSearchSuggestions`
  0. invoked from `SubjectSearchBar` `onChange` when empty
  0. `SearchSuggestion` store resets `_suggestions` and emits change.

### Store Listeners

* `SearchBarSuggestions` component listens to `SearchSuggestion` store.
