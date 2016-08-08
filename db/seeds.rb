# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'braingain_seeds.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Transaction.new
#   t.street = row['street']
#   t.city = row['city']
#   t.zip = row['zip']
#   t.zip = row['zip']
#   t.state = row['state']
#   t.beds = row['beds']
#   t.sq_feet = row['sq_feet']
#   t.category = row['type']
#   t.sale_date = row['sale_date']
#   t.price = row['price']
#   t.lat = row['latitude']
#   t.lng = row['longitude']
#   t.save
#   puts "#{t.street}, #{t.city} saved"
# end
#
# puts "There are now #{Transaction.count} rows in the transactions table"


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
Deck.create!({                          # id : 1
  title: "Basic Shapes and Angles",
  description: "Where it all begins",
  subject_id: 1
  })
  Card.create!({
    question: "What is a point?",
    answer: "A single location",
    deck_id: 1
  })
  Card.create!({
    question: "What is a line??",
    answer: "A straight path passing through at least two points",
    deck_id: 1
  })
  Card.create!({
    question: "What are parallel lines?",
    answer: "Lines that lie on the same plane but never intersect",
    deck_id: 1
  })
  Card.create!({
    question: "What are perpendicular lines?",
    answer: "Lines that intersect at a 90 degree angle",
    deck_id: 1
  })
Deck.create!({
  title: "Angles",
  description: "The pointed corners of shapes",
  subject_id: 1
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 2
  })
Deck.create!({
  title: "Triangles",
  description: "The three-sided polygon",
  subject_id: 1
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 3
  })
Deck.create!({
  title: "Circles",
  description: "The shape with no corner",
  subject_id: 1
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 4
  })
Deck.create!({
  title: "3D Objects",
  description: "Enter another dimension",
  subject_id: 1
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 5
  })
# "Chemistry"
# http://www.chem4kids.com/
Deck.create!({                          # id : 6
  title: "Atoms",
  description: "The basic building block of life",
  subject_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 6
  })
Deck.create!({
  title: "States of Matter",
  description: "In what forms does matter exist?",
  subject_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 7
  })
Deck.create!({
  title: "Chemical and Physical Change",
  description: "How does matter change?",
  subject_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 8
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 8
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 8
  })
Deck.create!({
  title: "Solutions and Mixtures",
  description: "Groups of matter",
  subject_id: 2
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 9
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 9
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 9
  })
# "Nutrition",
# https://en.wikipedia.org/wiki/Nutrition
Deck.create!({                          # id : 10
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 10
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 10
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 10
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 11
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 11
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 11
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 12
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 12
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 12
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 13
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 13
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 13
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 3
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 14
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 14
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 14
  })
# "Job Interviewing",
Deck.create!({                          # id : 15
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 15
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 15
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 15
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
Deck.create!({                          # id : 20
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 20
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 20
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 20
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
Deck.create!({                          # id : 25
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
Deck.create!({                          # id : 30
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
Deck.create!({                          # id : 35
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
Deck.create!({                          # id : 40
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
Deck.create!({                          # id : 45
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
Deck.create!({                          # id : 50
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
Deck.create!({                          # id : 55
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
Deck.create!({                          # id : 60
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
Deck.create!({                          # id : 65
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
Deck.create!({                          # id : 70
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
Deck.create!({                          # id : 75
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
Deck.create!({                          # id : 80
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
Deck.create!({                          # id : 85
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
Deck.create!({                            # id : 90
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
Deck.create!({                           # id : 95
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
Deck.create!({                          # id : 100
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
Deck.create!({                          # id : 105
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
Deck.create!({                            # id : 110
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
Deck.create!({                          # id : 115
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
Deck.create!({                          # id : 120
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
Deck.create!({                          # id : 125
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
Deck.create!({                          # id : 130
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
Deck.create!({                          # id : 135
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
Deck.create!({                          # id : 140
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
Deck.create!({                          # id : 144
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
  })
