# BrainGain

[Heroku link][heroku]
[heroku]: http://www.braingain.herokuapp.com

## Minimum Viable Product

BrainGain is a web application inspired by Brainscape that will be built using Ruby on Rails and React.js.  By the end of Week 9, this app will, at a minimum, satisfy the following criteria:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] A production README, replacing this README
- [ ] Subjects
  - [ ] Create and delete personal subjects
  - [ ] View and add other subjects to personal library
  - [ ] Navigate through added subjects to view decks and cards
- [ ] Decks
  - [ ] Create, edit, and delete decks
  - [ ] Create, edit, and delete cards within decks
  - [ ] View user's learning progress
- [ ] Study mode
  - [ ] Recursively iterate through cards until deck is fully mastered
  - [ ] View progress of learning a deck
  - [ ] Accurate flipping behavior of a typical flashcard
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

- [ ] create new project
- [ ] create `User` model
- [ ] authentication backend setup
- [ ] create `StaticPages` controller and root view
- [ ] set up webpack & flux scaffold with skeleton files
- [ ] setup `APIUtil` to interact with the API
- [ ] set up flux cycle for frontend auth
- [ ] user signup/signin components
- [ ] blank landing component after signin
- [ ] style signin/signup components
- [ ] seed users

### Phase 2: Subjects Model, API, and components (2 days, W1 F 6pm)

**Objective:** Subjects can be created, read, and destroyed through
the API.

- [ ] create `Subject` model
- [ ] seed the database with a small amount of test data
- [ ] CRUD API for subjects (`SubjectsController`)
- [ ] jBuilder views for subjects
- [ ] test out API interaction in the console.
- implement each subject component, building out the flux loop as needed.
  - [ ] `SubjectIndex`
  - [ ] `SubjectIndexItem`
  - [ ] `SubjectForm`
- [ ] style subjects components
- [ ] seed subjects

### Phase 3: Decks & Cards (2 day, W2 Tu 6pm)

**Objective:** Decks belong to Subjects, and can be viewed by subject. Cards belong to Decks, and can be viewed by deck.

- [ ] create `Deck` model
- build out API, Flux loop, and components for:
  - [ ] Deck CRUD
  - [ ] adding decks requires a subject
  - [ ] viewing decks by subject
- [ ] Use CSS to style new components
- [ ] Seed Decks
- [ ] create `Card` model
- build out API, Flux loop, and components for:
  - [ ] Card CRUD
  - [ ] adding cards requires a deck
  - [ ] editing cards requires a deck
  - [ ] viewing cards by deck
- [ ] Use CSS to style new components
- [ ] Seed Cards

### Phase 4: - Flashcard flipping for Study (1 day, W2 W 6pm)

**objective:** Add flashcard manipulation to cards in study view

- [ ] Pair flip button with question side of card and user prompt with answer side of card
- [ ] Use CSS to achieve flashcard behavior
- [ ] Create algorithm to show the user the progress of mastering a deck

### Phase 5: Search (2 days, W2 F 6pm)

**Objective:** Search will show predicted Subjects. Entering search text will show all similar Decks.

- [ ] Render predicted searches with each change
- [ ] Allow clickable on prediction dropdown
- [ ] Render similar deck results if search bar is entered
