const React = require('react');

const PublicSubjectDetail = React.createClass({
  render() {
    return(
      <div>
        {this.props.params.subjectId}

      </div>
    );
  }
});

module.exports = PublicSubjectDetail;
