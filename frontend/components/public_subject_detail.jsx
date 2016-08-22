const React = require('react');
const SubjectActions = require('../actions/subject_actions');
const SubjectStore = require('../stores/subject_store');

const PublicSubjectDetail = React.createClass({
  getInitialState() {
    return { subject: null };
  },

  componentDidMount() {
    this.subjectListener = SubjectStore.addListener(this.handleSubjectChange);
    SubjectActions.getPublicSubject(this.props.params.subjectId);
  },

  componentWillUnmount() {
    this.subjectListener.remove();
  },

  handleSubjectChange() {
    this.setState({
      subject: SubjectStore.find(this.props.params.subjectId)
    });
  },

  componentWillReceiveProps(newProps) {
    SubjectActions.getPublicSubject(newProps.params.subjectId);
  },


  render() {
    let subject_decks;
    if (this.state.subject){
      return(
        <main className="public-subject-detail-page">
          <header>
            <img src={`${this.state.subject.image_url}`}/>
            <div>
              <h1>{this.state.subject.title}</h1>
              <p>Authored by {this.state.subject.author_name}</p>
            </div>
            {/*<a>Subscribe</a>*/}
          </header>
          <section>
            <h3>Deck List</h3>
            <table>
              <thead>
                <tr className="column-headers">
                  <th className="deck-col-1">#</th>
                  <th className="deck-col-2">Deck Name</th>
                  <th className="deck-col-3">Num of Cards</th>
                </tr>
              </thead>
              <tbody>
                { this.state.subject.decks.map( (deck, index) => {
                    return (<tr key={index}>
                      <td className="deck-col-1">{`${index + 1}`}</td>
                      <td className="deck-col-2">{`${deck.deck_title}`}</td>
                      <td className="deck-col-3">{`${deck.card_count}`}</td>
                    </tr>);
                  })
                }
              </tbody>
            </table>
          </section>
        </main>
      );
    }

    return(
      <main className="public-subject-detail-page">
      </main>
    );
  }
});

module.exports = PublicSubjectDetail;
