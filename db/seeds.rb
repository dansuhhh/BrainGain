require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'braingain_seeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

subject_id = 0
deck_id = 0
csv.each do |row|
  if row['username'] == ""
    #deck conditional
    #card create
  else
  end

    # t = Transaction.new
    # t.street = row['street']
    # t.city = row['city']
    # t.zip = row['zip']
    # t.zip = row['zip']
    # t.state = row['state']
    # t.beds = row['beds']
    # t.sq_feet = row['sq_feet']
    # t.category = row['type']
    # t.sale_date = row['sale_date']
    # t.price = row['price']
    # t.lat = row['latitude']
    # t.lng = row['longitude']
    # t.save





User.destroy_all
Subject.destroy_all
Deck.destroy_all
Card.destroy_all
Mastery.destroy_all


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
  "Replace",
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

# randomly assign subjects to a user
user_id = 1
subjects.each do |subject|
  # 7 users
  if user_id == 8
    user_id = 1
  end
  Subject.create!({ title: subject, author_id: user_id })
  user_id += 1
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
    question: "What is a line?",
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
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 16
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 16
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 16
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 17
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 17
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 17
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 18
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 18
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 18
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 4
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 19
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 19
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 19
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
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 21
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 21
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 21
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 22
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 22
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 22
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 23
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 23
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 23
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 5
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 24
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 24
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 24
  })
# "US History",
Deck.create!({                          # id : 25
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 25
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 25
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 25
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 26
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 26
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 26
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 27
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 27
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 27
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 28
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 28
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 28
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 6
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 29
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 29
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 29
  })
# "Human Anatomy",
Deck.create!({                          # id : 30
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 30
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 30
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 30
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 31
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 31
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 31
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 32
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 32
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 32
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 33
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 33
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 33
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 7
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 34
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 34
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 34
  })
# "Spanish",
Deck.create!({                          # id : 35
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 35
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 35
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 35
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 36
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 36
  })
  Card.create!({
    question: "question",
    answer: "answer",
    deck_id: 36
  })
Deck.create!({
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 8
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
  subject_id: 8
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
  subject_id: 8
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
# "Korean",
Deck.create!({                          # id : 40
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 9
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
  subject_id: 9
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
  subject_id: 9
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
  subject_id: 9
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
  subject_id: 9
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
# "Shakespeare",
Deck.create!({                          # id : 45
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 10
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
  subject_id: 10
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
  subject_id: 10
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
  subject_id: 10
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
  subject_id: 10
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
# "Wine",
Deck.create!({                          # id : 50
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 11
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
  subject_id: 11
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
  subject_id: 11
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
  subject_id: 11
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
  subject_id: 11
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
# "LSAT",
Deck.create!({                          # id : 55
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 12
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
  subject_id: 12
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
  subject_id: 12
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
  subject_id: 12
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
  subject_id: 12
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
# "AppAcademy",
Deck.create!({                          # id : 60
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 13
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
  subject_id: 13
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
  subject_id: 13
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
  subject_id: 13
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
  subject_id: 13
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
# "NYC",
Deck.create!({                          # id : 65
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 14
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
  subject_id: 14
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
  subject_id: 14
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
  subject_id: 14
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
  subject_id: 14
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
# "Astronomy",
Deck.create!({                          # id : 70
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 15
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
  subject_id: 15
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
  subject_id: 15
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
  subject_id: 15
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
  subject_id: 15
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
# "Calculus",
Deck.create!({                          # id : 75
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 16
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
  subject_id: 16
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
  subject_id: 16
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
  subject_id: 16
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
  subject_id: 16
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
# "MCAT",
Deck.create!({                          # id : 80
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 17
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
  subject_id: 17
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
  subject_id: 17
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
  subject_id: 17
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
  subject_id: 17
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
# "SAT",
Deck.create!({                          # id : 85
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 18
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
  subject_id: 18
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
  subject_id: 18
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
  subject_id: 18
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
  subject_id: 18
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
# "Pokemon",
Deck.create!({                            # id : 90
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 19
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
  subject_id: 19
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
  subject_id: 19
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
  subject_id: 19
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
  subject_id: 19
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
# "The Halal Guys",
Deck.create!({                           # id : 95
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 20
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
  subject_id: 20
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
  subject_id: 20
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
  subject_id: 20
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
  subject_id: 20
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
# "HTML",
Deck.create!({                          # id : 100
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 21
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
  subject_id: 21
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
  subject_id: 21
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
  subject_id: 21
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
  subject_id: 21
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
# "The Cold War",
Deck.create!({                          # id : 105
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 22
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
  subject_id: 22
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
  subject_id: 22
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
  subject_id: 22
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
  subject_id: 22
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
# "Psychology",
Deck.create!({                            # id : 110
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 23
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
  subject_id: 23
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
  subject_id: 23
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
  subject_id: 23
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
  subject_id: 23
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
# "Algebra",
Deck.create!({                          # id : 115
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 24
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
  subject_id: 24
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
  subject_id: 24
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
  subject_id: 24
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
  subject_id: 24
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
# "Periodic Table",
Deck.create!({                          # id : 120
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 25
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
  subject_id: 25
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
  subject_id: 25
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
  subject_id: 25
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
  subject_id: 25
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
# "Bible",
Deck.create!({                          # id : 125
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 26
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
  subject_id: 26
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
  subject_id: 26
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
  subject_id: 26
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
  subject_id: 26
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
# "Geography",
Deck.create!({                          # id : 130
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 27
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
  subject_id: 27
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
  subject_id: 27
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
  subject_id: 27
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
  subject_id: 27
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
# "Hollywood Celebrities",
Deck.create!({                          # id : 135
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 28
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
  subject_id: 28
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
  subject_id: 28
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
  subject_id: 28
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
  subject_id: 28
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
# "NBA"
Deck.create!({                          # id : 140
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
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
  subject_id: 29
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
  subject_id: 29
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
  subject_id: 29
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
Deck.create!({                          # id : 144
  title: "Nutrients",
  description: "Groups of matter",
  subject_id: 29
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

User.create!({username: "michaelscott", password: "dandan"})
Subject.create!({ title: "Basic Math", author_id: 8 })
  Deck.create!({ title: "Addition", description: "Adding stuff", subject_id: 30 })
    Card.create!({ question: "3 + 3", answer: "6", deck_id: 145 })
    Card.create!({ question: "1 + 1", answer: "2", deck_id: 145 })
    Card.create!({ question: "10 + 10", answer: "100", deck_id: 145 })
    Card.create!({ question: "35 + 35", answer: "70", deck_id: 145 })
    Card.create!({ question: "50 + 51", answer: "101", deck_id: 145 })
    Card.create!({ question: "150 + 120", answer: "270", deck_id: 145 })
    Card.create!({ question: "302 + 432", answer: "734", deck_id: 145 })
    Card.create!({ question: "1029 + 2938", answer: "3967", deck_id: 145 })
    Card.create!({ question: "-1 + 68", answer: "67", deck_id: 145 })
    Card.create!({ question: "-5 + -20", answer: "-25", deck_id: 145 })
    Card.create!({ question: "-32 + 32", answer: "0", deck_id: 145 })
  Deck.create!({ title: "Subtraction" ,description: "Subtracting stuff", subject_id: 30 })
    Card.create!({ question: "3 - 3", answer: "0", deck_id: 146 })
    Card.create!({ question: "1 - 1", answer: "0", deck_id: 146 })
    Card.create!({ question: "10 - 10", answer: "0", deck_id: 146 })
    Card.create!({ question: "35 - 35", answer: "0", deck_id: 146 })
    Card.create!({ question: "50 - 51", answer: "-1", deck_id: 146 })
    Card.create!({ question: "150 - 120", answer: "30", deck_id: 146 })
    Card.create!({ question: "302 - 432", answer: "-130", deck_id: 146 })
    Card.create!({ question: "1029 - 2938", answer: "-1909", deck_id: 146 })
    Card.create!({ question: "-1 - 68", answer: "-69", deck_id: 146 })
    Card.create!({ question: "-5 - -20", answer: "20", deck_id: 146 })
    Card.create!({ question: "-32 - 32", answer: "-64", deck_id: 146 })
Subject.create!({ title: "Geometry", author_id: 8 })
  Deck.create!({
      title: "Basic Shapes and Angles",
      description: "Where it all begins",
      subject_id: 31
      })
      Card.create!({
        question: "What is a point?",
        answer: "A single location",
        deck_id: 147
      })
      Card.create!({
        question: "What is a line?",
        answer: "A straight path passing through at least two points",
        deck_id: 147
      })
      Card.create!({
        question: "What are parallel lines?",
        answer: "Lines that lie on the same plane but never intersect",
        deck_id: 147
      })
      Card.create!({
        question: "What are perpendicular lines?",
        answer: "Lines that intersect at a 90 degree angle",
        deck_id: 147
      })
    Deck.create!({
      title: "Angles",
      description: "The pointed corners of shapes",
      subject_id: 31
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 148
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 148
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 148
      })
    Deck.create!({
      title: "Triangles",
      description: "The three-sided polygon",
      subject_id: 31
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 149
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 149
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 149
      })
    Deck.create!({
      title: "Circles",
      description: "The shape with no corner",
      subject_id: 31
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 150
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 150
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 150
      })
    Deck.create!({
      title: "3D Objects",
      description: "Enter another dimension",
      subject_id: 31
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 151
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 151
      })
      Card.create!({
        question: "question",
        answer: "answer",
        deck_id: 151
      })


User.all.each do |user|
  Card.all.each do |card|
    Mastery.create!({
      user_id: user.id,
      card_id: card.id,
      level: 0
    })
  end
end
