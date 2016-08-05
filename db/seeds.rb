# User seeds
User.create!({ username: "john.doe", password: "dandan" }) # id: 1
User.create!({ username: "NoRiceApproach", password: "dandan" })
User.create!({ username: "tummyOoek", password: "dandan" })
User.create!({ username: "danielleColeslaw", password: "dandan" })
User.create!({ username: "LeanOnBeanshin", password: "dandan" })
User.create!({ username: "ggCamo", password: "dandan" })
User.create!({ username: "dreadBadKeys", password: "dandan" }) # id: 7

# Subject seeds
subjects = [
  "Geometry",
  "Chemistry",
  "Nutrition",
  "Job Interviewing",
  "Ruby on Rails",    #id: 5
  "US History",
  "Human Anatomy",
  "Spanish",
  "Korean",
  "Shakespeare",      #id: 10
  "Wine",
  "LSAT",
  "AppAcademy",
  "NYC",
  "Astronomy",  #id: 15
  "Calculus",
  "MCAT",
  "SAT",
  "Pokemon",
  "The Halal Guys", #id: 20
  "HTML",
  "The Cold War",
  "Psychology",
  "Algebra",
  "Periodic Table", #id: 25
  "Bible",
  "Geography",
  "Hollywood Celebrities",
  "NBA" #29th
]

# 7 users
author_ids = (1..7).to_a

# randomly assign subjects to a user
subjects.each do |subject|
  Subject.create!({ title: subject, author_id: author_ids.sample })
end

# "Geometry"
# http://www.shmoop.com/basic-geometry/topics.html
Deck.create!({
  title: "Basic Shapes and Angles",
  description: "Where it all begins",
  subject_id: 1
  })
Deck.create!({
  title: "Angles",
  description: "The pointed corners of shapes",
  subject_id: 1
  })
Deck.create!({
  title: "Triangles",
  description: "The three-sided polygon",
  subject_id: 1
  })
Deck.create!({
  title: "Circles",
  description: "The shape with no corner",
  subject_id: 1
  })
Deck.create!({
  title: "3D Objects",
  description: "Enter another dimension",
  subject_id: 1
  })
# "Chemistry"
# http://www.chem4kids.com/
Deck.create!({
  title: "Atoms",
  description: "The basic building block of life",
  subject_id: 2
  })
Deck.create!({
  title: "States of Matter",
  description: "In what forms does matter exist?",
  subject_id: 2
  })
Deck.create!({
  title: "Chemical and Physical Change",
  description: "How does matter change?",
  subject_id: 2
  })
Deck.create!({
  title: "Solutions and Mixtures",
  description: "Groups of matter",
  subject_id: 2
  })
# "Nutrition",
# https://en.wikipedia.org/wiki/Nutrition
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
# "Job Interviewing",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
# "Ruby on Rails",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
# "US History",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
# "Human Anatomy",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
# "Spanish",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
# "Korean",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
  })
# "Shakespeare",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
  })
# "Wine",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
  })
# "LSAT",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
  })
# "AppAcademy",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
  })
# "NYC",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
  })
# "Astronomy",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
  })
# "Calculus",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
  })
# "MCAT",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
  })
# "SAT",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
  })
# "Pokemon",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
  })
# "The Halal Guys",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
  })
# "HTML",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
  })
# "The Cold War",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
  })
# "Psychology",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
  })
# "Algebra",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
  })
# "Periodic Table",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
  })
# "Bible",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
  })
# "Geography",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
  })
# "Hollywood Celebrities",
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
  })
# "NBA"
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
