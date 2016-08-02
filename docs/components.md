## Component Hierarchy

* **App**
  * Main
    * Navbar
      * Login
      * Signup
    * Search
    * AllSubjectIndex
    * Library
      * UserSubjectIndex
        * SubjectItem
          * DeckIndex
    * DeckForm
      * CardForm
  * Study


## Routes

* **component:** `App` **path:** `/`
  * IndexRoute **component** `Main`
    * **component:** `Search` **path:** index
    * **component** `LoginForm` **path:** /login
    * **component** `SignupForm` **path:** /signup
    * **component** `AllSubjectIndex` **path:** /subjects
    * **component:** `Library` **path:** /library
      * **component:** `UserSubjectIndex` **path:** none
        * **component:** `SubjectItem` **path:** /:subjectId
        * **component:** `DeckIndex` **path:** /:subjectId/decks
    * **component** `DeckForm` **path:** /:subjectId/:deckId/edit
      * **component** `CardForm` **path:** none
  * **component** `Study` **path** /study
