const React = require('react');

const Study = React.createClass({
  render() {
    return(
      <main className="group study-page">
        <section className="study-nav">
          <a className="logo"></a>
          <a className="library"></a>
        </section>
        <section className="progress">
        </section>
        <section className="flashcard">
        </section>
      </main>
    );
  }
});

module.exports = Study;
