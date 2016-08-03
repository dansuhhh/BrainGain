const React = require('react');
const ReactDOM = require('react-dom');

const SessionActions = require('./actions/session_actions');
const SessionStore = require('./stores/session_store');

const SignupForm = require('./components/signup_form');
const LoginForm = require('./components/login_form');
const Library = require('./components/library');
const SubjectIndex = require('./components/subject_index');
window.u = require('./util/subject_api_util');

import { Router, Route, IndexRoute, Link, hashHistory } from 'react-router'

const App = React.createClass({
  render () {
    return (
      <div>
        <h1>BrainGain</h1>
        {this.props.children}
      </div>
    );
  }
});

const _ensureLoggedIn = (nextState, replace) => {
  if (SessionStore.isUserLoggedIn){
  }
  else {
    replace("/session/new");
  }
};

const routes = (
  <Route path="/" component={App}>
    <Route path="/users/new" component={SignupForm}/>
    <Route path="/session/new" component={LoginForm}/>
    <Route path="/library" component={Library} onEnter={_ensureLoggedIn}/>
    <Route path="/subjects" component={SubjectIndex}/>
  </Route>
);

document.addEventListener( 'DOMContentLoaded', () => {
  SessionActions.receiveCurrentUser(window.currentUser);
  const root = document.getElementById('content');
  ReactDOM.render(
    <Router history={hashHistory} routes={routes}/>, root
  );
});
