const React = require('react');

const Search = React.createClass({
  render() {
    return (
      <section className="search">
        <h1>What would you like to learn today?</h1>
        <article className="group search-bar">
          <input
            type="text"
            placeholder="(e.g. Geometry, Chemistry, MCAT, Spanish, LSAT)"/>
          <a>Search</a>
        </article>
        <h3>Search over a dozen subjects...</h3>
      </section>
    );
  }
});

module.exports = Search;
