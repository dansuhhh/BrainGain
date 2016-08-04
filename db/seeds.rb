# User seeds
u1 = User.new({ username: "john.doe", password: "dandan" })
u2 = User.new({ username: "NoRiceApproach", password: "dandan" })
u3 = User.new({ username: "tummyOoek", password: "dandan" })
u4 = User.new({ username: "danielleColeslaw", password: "dandan" })
u5 = User.new({ username: "LeanOnBeanshin", password: "dandan" })
u6 = User.new({ username: "ggCamo", password: "dandan" })
u7 = User.new({ username: "dreadBadKeys", password: "dandan" })
u1.save!
u2.save!
u3.save!
u4.save!
u5.save!
u6.save!
u7.save!

# Subject seeds
subjects = [
  "Geometry",
  "Chemistry",
  "Nutrition",
  "Job Interviewing",
  "Ruby on Rails",
  "US History",
  "Human Anatomy",
  "Spanish",
  "Korean",
  "Shakespeare",
  "Wine",
  "LSAT",
  "AppAcademy",
  "NYC", #14th
  "Astronomy",
  "Calculus",
  "MCAT",
  "SAT",
  "Pokemon",
  "The Halal Guys",
  "HTML",
  "The Cold War",
  "Psychology",
  "Algebra",
  "Periodic Table",
  "Bible",
  "Geography",
  "Hollywood Celebrities",
  "NBA" #29th
]
subjects.each_with_index do |subject, index|
  subject_seed = Subject.new({ title: subject, author_id: index % 7 + 1 })
  subject_seed.save!
end
