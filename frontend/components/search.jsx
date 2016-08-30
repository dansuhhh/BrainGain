const React = require('react');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');
const FontAwesome = require('react-fontawesome');
const Link = require('react-router').Link;

const Search = React.createClass({
  getInitialState(){
    return { subjects: [], search: "" };
  },

  componentDidMount(){
    this.subjectListener = SubjectStore.addListener(this.handleSubjectsChange);
    SubjectActions.fetchAllSubjects();
  },

  componentWillUnmount(){
    this.subjectListener.remove();
  },

  handleSubjectsChange(){
    this.setState({
      subjects: SubjectStore.search(this.state.search)
    });
  },

  handleSearchChange(e){
    this.setState({
      subjects: SubjectStore.search(e.target.value),
      search: e.target.value
    });
  },

  render() {
    let searchResults;
    if (this.state.search.length > 0){
      searchResults = this.state.subjects.map( subject => {
        return (<li key={subject.id}><Link to={`subjects/${subject.id}`}>{subject.title}</Link></li>);
      });
    }

    return (
      <section className="search">
        <h1>What would you like to learn today?</h1>
          <article className="group search-bar">
            <FontAwesome className="search-icon" name='search' size="2x"/>
            <input
              className="search-list"
              type="text"
              value={this.state.search}
              placeholder="e.g. Geometry, Pokemon, NYC"
              onChange={this.handleSearchChange}/>
            <ul>
              {searchResults}
            </ul>
          </article>
        <h3>Search over a dozen subjects...</h3>
      </section>
    );
  }
});

module.exports = Search;
