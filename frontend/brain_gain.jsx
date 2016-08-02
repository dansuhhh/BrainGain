const React = require('react');
const ReactDOM = require('react-dom');

const SignupForm = require('./components/signup_form');
const LoginForm = require('./components/login_form');

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

const routes = (
  <Route path="/" component={App}>
    <Route path="/users/new" component={SignupForm}/>
    <Route path="/session/new" component={LoginForm}/>
  </Route>
);

document.addEventListener( 'DOMContentLoaded', () => {
  const root = document.getElementById('content');
  ReactDOM.render(
    <Router history={hashHistory} routes={routes}/>, root
  );
});
