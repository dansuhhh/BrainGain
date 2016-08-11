 # BrainGain

[Heroku link][heroku]
[heroku]: http://www.braingain.herokuapp.com

## Minimum Viable Product

BrainGain is a web application inspired by Brainscape that will be built using Ruby on Rails and React.js.  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

- [X] Hosting on Heroku
- [X] New account creation, login, and guest/demo login
- [ ] A production README, replacing this README
- [ ] Subjects
  - [X] Create and delete personal subjects
  - [ ] View and add other subjects to personal library
  - [X] Navigate through added subjects to view decks and cards
  - [X] Upload personal image as subject avatar
- [X] Decks
  - [X] Create, edit, and delete decks
  - [X] Create, edit, and delete cards within deck edit
  - [X] View user's learning progress
- [X] Study mode
  - [X] Recursively iterate through cards until deck is fully mastered
  - [X] View progress of learning a deck
  - [X] Accurate flipping behavior of a typical flashcard
- [ ] Search
  - [ ] Search through all subjects
  - [ ] Accurate search predictions/recommendations
  - [ ] Constant rendering of predictions based on user input

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Cycles][flux-cycles]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: docs/views.md
[components]: docs/components.md
[flux-cycles]: docs/flux-cycles.md
[api-endpoints]: docs/api-endpoints.md
[schema]: docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days, W1 W 6pm)

**Objective:** Functioning rails project with front-end Authentication

- [X] create new project
- [X] create `User` model
- [X] authentication backend setup
- [X] create `StaticPages` controller and root view
- [X] set up webpack & flux scaffold with skeleton files
- [X] setup `APIUtil` to interact with the API
- [X] set up flux cycle for frontend auth
- [X] user signup/signin components
- [X] blank landing component after signin
- [X] style signin/signup components
- [X] seed users

### Phase 2: Subjects Model, API, and components (2 days, W1 F 6pm)

**Objective:** Subjects can be created, read, and destroyed through
the API.

- [X] create library component, only accessible if logged in, otherwise redirect to homepage
- [X] create navbar with auth handling buttons
- [X] create `Subject` model
- [X] seed the database with a small amount of test data
- [X] CRUD API for subjects (`SubjectsController`)
- [X] jBuilder views for subjects
- [X] test out API interaction in the console.
- implement each subject component, building out the flux loop as needed.
  - [X] `SubjectIndex`
  - [X] `SubjectIndexItem`
  - [X] `SubjectForm`
- [X] refactor to separate Subjects into Public and User's Subjects
- [X] error handling
- [X] style subjects components
- [X] implement image upload for subject avatar
- [X] BONUS: add image column (gem paperclip) to subjects

### Phase 3: Decks & Cards (2 day, W2 Tu 6pm)

**Objective:** Decks belong to Subjects, and can be viewed by subject. Cards belong to Decks, and can be viewed by deck.

- [X] create `Deck` model
- build out API, Flux loop, and components for:
  - [X] Deck CRUD
  - [X] adding decks requires a subject
  - [X] viewing decks by subject
- [X] Use CSS to style new components
- [X] Seed Decks
- [X] create `Card` model
- build out API, Flux loop, and components for:
  - [X] Card CRUD
  - [X] adding cards requires a deck
  - [X] editing cards requires a deck
  - [X] viewing cards by deck
- [X] Use CSS to style new components
- [X] Seed Cards

### Phase 4: - Flashcard flipping for Study (1 day, W2 W 6pm)

**objective:** Add flashcard manipulation to cards in study view

- [X] Pair flip button with question side of card and user prompt with answer side of card
- [X] Use CSS to achieve flashcard behavior
- [X] Create algorithm to show the user the progress of mastering a deck

### Phase 5: Search (2 days, W2 F 6pm)

**Objective:** Search will show predicted Subjects. Entering search text will show all similar Decks.

- [ ] Render predicted searches with each change
- [ ] Allow clickable on prediction dropdown
- [ ] Render similar deck results if search bar is entered
