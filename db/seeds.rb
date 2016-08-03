# User seeds
u1 = User.new({ username: "dan", password: "dandandan" })
u1.save!

# Subject seeds
subjects = "Geometry-Chemistry-Nutrition-Job Interviewing-Ruby on Rails".split("-")
subjects.each do |subject|
  subject_seed = Subject.new({ title: subject, author_id: 1 })
  subject_seed.save!
end
