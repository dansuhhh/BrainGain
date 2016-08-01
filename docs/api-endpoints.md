# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `POST /api/users`
- `PATCH /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`
- `GET /api/session`

### Subjects

- `GET /api/subjects`
  - Subjects index/search
- `POST /api/subjects`
- `GET /api/subjects/:id`
- `DELETE /api/subjects/:id`

### Decks

- `GET /api/subjects/:id/decks`
- `PATCH /api/subjects/:id/decks`
- `DELETE /api/subjects/:id/decks`
  - index of all decks for a subject

### Cards

- `GET /api/subjects/:id/decks/:id/:cardId`
- `PATCH /api/subjects/:id/decks/:id/:cardId`
- `DELETE /api/subjects/:id/decks/:id/:cardId`
  - index of all cards for a deck
