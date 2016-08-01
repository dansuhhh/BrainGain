## Component Hierarchy

* **App**
  * Main
    * Navbar
      * Login
      * Signup
    * Search
    * Library
      * UserSubjectIndex
        * SubjectItem
          * DeckIndex 
            * DeckIndexItem
              * DeckIndexItemForm
  * Study


## Routes

* **component:** `App` **path:** `/`
  * IndexRoute **component** `Main`
    * **component:** `Search` **path:** index
    * **component** `LoginForm` **path:** /login
    * **component** `SignupForm` **path:** /signup
    * **component:** `Library` **path:** /library
      * **component:** `UserSubjectIndex` **path:** none
        * **component:** `SubjectItem` **path:** /:subjectId
        * **component:** `DeckIndex` **path:** /:subjectId/decks
          * **component:** `DeckIndexItem` **path:** /:deckId
            * **component** `DeckIndexItemForm` **path:** /:deckId/edit
  * **component** `Study` **path** /study
