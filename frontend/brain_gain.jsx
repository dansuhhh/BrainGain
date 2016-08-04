const React = require('react');
const ReactDOM = require('react-dom');

const SessionActions = require('./actions/session_actions');
const SessionStore = require('./stores/session_store');
const App = require('./components/app');
const SignupForm = require('./components/signup_form');
const LoginForm = require('./components/login_form');
const Library = require('./components/library');
const PublicSubjectIndex = require('./components/public_subject_index');
const Main = require('./components/main');
const UserSubjectIndexItem = require('./components/user_subject_index_item');

import { Router, Route, IndexRoute, Link, hashHistory } from 'react-router'

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
      <Route path=":subjectId" component={ UserSubjectIndexItem } />
    </Route>
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
