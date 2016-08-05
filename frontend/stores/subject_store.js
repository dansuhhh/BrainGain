const AppDispatcher = require('../dispatcher/dispatcher');
const SessionStore = require('./session_store');
const Store = require('flux/utils').Store;
const SubjectConstants = require('../constants/subject_constants');
const SubjectStore = new Store(AppDispatcher);

let _subjects = {};

SubjectStore.all = () => {
  let subjects = [];
  Object.keys(_subjects).forEach( key => {
    subjects.push(_subjects[key]);
  });
  return subjects;
};

SubjectStore.subscribed = () => {
  let subjects = [];
  let currentUserId = SessionStore.currentUser().id
  Object.keys(_subjects).forEach( key => {
    if (_subjects[key].author_id === currentUserId){
      subjects.push(_subjects[key]);
    }
  });
  return subjects;
};

SubjectStore.find = (id) => {
  return _subjects[id];
};

SubjectStore.resetSubjects = subjects => {
  _subjects = {};
  subjects.forEach( subject => {
    _subjects[subject.id] = subject;
  });
  SubjectStore.__emitChange();
};

SubjectStore.setSubject = subject => {
  _subjects[subject.id] = subject;
  SubjectStore.__emitChange();
};

SubjectStore.removeSubject = subject => {
  delete _subjects[parseInt(subject.id)];
  SubjectStore.__emitChange();
};

SubjectStore.__onDispatch = payload => {
  switch(payload.actionType) {
    case (SubjectConstants.SUBJECTS_RECEIVED):
      SubjectStore.resetSubjects(payload.subjects);
      break;
    case (SubjectConstants.SUBJECT_RECEIVED):
      SubjectStore.setSubject(payload.subject);
      break;
    case (SubjectConstants.SUBJECT_REMOVED):
      SubjectStore.removeSubject(payload.subject);
      break;
  }
};


module.exports = SubjectStore;
