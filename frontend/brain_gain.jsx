const React = require('react');
const ReactDOM = require('react-dom');
import { Router, Route, IndexRoute, Link, hashHistory } from 'react-router'

const SessionActions = require('./actions/session_actions');
const SessionStore = require('./stores/session_store');

//Components
const App = require('./components/app');
const Main = require('./components/main');
const SignupForm = require('./components/signup_form');
const LoginForm = require('./components/login_form');
const PublicSubjectIndex = require('./components/public_subject_index');
const PublicSubjectDetail = require('./components/public_subject_detail');
const Library = require('./components/library');
const UserSubjectDetail = require('./components/user_subject_detail');
const DeckEditForm = require('./components/deck_edit_form');
const Study = require('./components/study');

const _ensureLoggedIn = (nextState, replace) => {
  if (!SessionStore.isUserLoggedIn()){
    replace("/session/new");
  }
};

const routes = (
  <Route path="/" component={ App }>
    <IndexRoute onEnter={ _ensureLoggedIn } component={ Main }/>
    <Route path="users/new" component={ SignupForm }/>
    <Route path="session/new" component={ LoginForm }/>
    <Route path="library" component={ Library } onEnter={ _ensureLoggedIn }>
      <Route path=":subjectId" component={ UserSubjectDetail } />
    </Route>
    <Route path="decks/:deckId" component={ DeckEditForm } />
    <Route path="subjects/:subjectId" component={ PublicSubjectDetail } />
    <Route path="study/:deckId" component={ Study } />
  </Route>
);

document.addEventListener( 'DOMContentLoaded', () => {
  if (window.currentUser){
    SessionActions.receiveCurrentUser(window.currentUser);
  }
  const root = document.getElementById('content');
  ReactDOM.render(
    <Router history={ hashHistory } routes={ routes }/>, root
  );
});
