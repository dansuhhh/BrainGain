const SubjectApiUtil = require('../util/subject_api_util');
const AppDispatcher = require('../dispatcher/dispatcher');
const SubjectConstants = require('../constants/subject_constants');

const SubjectActions = {
  fetchAllSubjects(){
    SubjectApiUtil.fetchAllSubjects(SubjectActions.receiveAllSubjects);
  },

 createSubject(formData){
   SubjectApiUtil.createSubject(formData, SubjectActions.receiveSubject)
 },

  getSubject(id){
    SubjectApiUtil.getSubject(id, SubjectActions.receiveSubject);
  },

  updateSubject(formData){
    SubjectApiUtil.updateSubject(formData, SubjectActions.receiveSubject);
  },

  removeSubject(id){
    SubjectApiUtil.removeSubject(id, SubjectActions.receiveSubject);
  },

  receiveAllSubjects(subjects){
    AppDispatcher.dispatch({
      actionType: SubjectConstants.SUBJECTS_RECEIVED,
      subjects: subjects
    });
  },

  receiveSubject(subject){
    AppDispatcher.dispatch({
      actionType: SubjectConstants.SUBJECT_RECEIVED,
      subject: subject
    });
  },


};

module.exports = SubjectActions;
