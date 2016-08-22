const React = require('react');

const PublicSubjectDetail = React.createClass({
  getInitialState() {
    return { subject: {} };
  },

  render() {
    return(
      <div>
        {this.props.params.subjectId}

      </div>
    );
  }
});

module.exports = PublicSubjectDetail;
