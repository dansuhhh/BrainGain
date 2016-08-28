User.destroy_all
Subject.destroy_all
Deck.destroy_all
Card.destroy_all
Mastery.destroy_all

# User seeds
User.create!({ username: "michaelscott", password: "dandan" }) # A1

  Subject.create!({ title: "Basic Math", author_id: 1 }) # S1

    Deck.create!({title: "Addition", description: "Combining numbers", subject_id: 1}) #D1
      Card.create!({ question: "3 + 3", answer: "6", deck_id: 1})
      Card.create!({ question: "0 + 0", answer: "0", deck_id: 1})
      Card.create!({ question: "12 + 3", answer: "15", deck_id: 1})
      Card.create!({ question: "23 + 320", answer: "343", deck_id: 1})
      Card.create!({ question: "-15 + 3", answer: "-12", deck_id: 1})

    Deck.create!({title: "Subtraction", description: "Take aways!", subject_id: 1}) #D2
      Card.create!({ question: "10 - 3", answer: "7", deck_id: 2})
      Card.create!({ question: "0 - 0", answer: "0", deck_id: 2})
      Card.create!({ question: "210 - 140", answer: "70", deck_id: 2})
      Card.create!({ question: "23 - 320", answer: "-297", deck_id: 2})
      Card.create!({ question: "-15 - 3", answer: "-18", deck_id: 2})

  Subject.create!({ title: "Pokemon", author_id: 1 }) # S2

    Deck.create!({title: "Types", description: "Do you know the pokemon types?", subject_id: 2 }) #D3
      Card.create!({ question: "Are electric-type moves super effective against ice-type pokemon?", answer: "No", deck_id: 3})
      Card.create!({ question: "What move-types are super effective against fire?", answer: "Water, rock, and ground", deck_id: 3})
      Card.create!({ question: "What type is the pokemon Gengar?", answer: "Ghost and poison", deck_id: 3})
      Card.create!({ question: "What happens when you use a Ghost-type move on a normal-type Pokemon?", answer: "It has no effect", deck_id: 3})
      Card.create!({ question: "How much stronger is a move if it is super effective?", answer: "200%", deck_id: 3})

    Deck.create!({title: "Evolutions", description: "Do you know the pokemon evolutions?", subject_id: 2 }) #D4
      Card.create!({ question: "What can Poliwhirl evolve into?", answer: "Poliwrath or Politoad", deck_id: 4})
      Card.create!({ question: "What can a Pokemon hold to prevent evolution?", answer: "Everstone", deck_id: 4})
      Card.create!({ question: "At what level does Squirtle evolve?", answer: "16", deck_id: 4})
      Card.create!({ question: "Does Mew evolve?", answer: "No", deck_id: 4})
      Card.create!({ question: "How do you evolve Haunter into Gengar?", answer: "By trading it", deck_id: 4})

    Deck.create!({title: "Random Trivia", description: "This is hard!", subject_id: 2 }) #D5
      Card.create!({ question: "In the original games, what were the towns named after?", answer: "Colors", deck_id: 5})
      Card.create!({ question: "In the original games, what mysterious being was made catchable through a series of glitches?", answer: "Missing No.", deck_id: 5})
      Card.create!({ question: "How many gyms were there in the Silver version?", answer: "16", deck_id: 5})
      Card.create!({ question: "Which town was adjacent to the cave where Mewtwo resides?", answer: "Cerulean", deck_id: 5})
      Card.create!({ question: "Who is the leader of Team Rocket?", answer: "Giovanni", deck_id: 5})

  Subject.create!({ title: "NYC", author_id: 1 }) # S3

    Deck.create!({title: "Geography", description: "Do you know the streets?", subject_id: 3}) #D6
      Card.create!({ question: "The New York Aquarium is located in which New York City borough?", answer: "Brooklyn", deck_id: 6})
      Card.create!({ question: "In 2007, what contemporary art museum opened their new venue on Bowery Street in Manhattan?", answer: "The New Museum", deck_id: 6})
      Card.create!({ question: "What stadium located in Flushing, Queens, is home to the New York Mets?", answer: "Shea Stadium", deck_id: 6})
      Card.create!({ question: "What complex of buildings located between 48th St. and 51st St., and Fifth Ave. and the Avenue of the Americas was built between 1931 and 1939?", answer: "Rockefeller Center", deck_id: 6})

    Deck.create!({title: "Food", description: "Do you know the food?", subject_id: 3}) #D7
      Card.create!({ question: "What is a bialy?", answer: "A chewy bread roll", deck_id: 7})
      Card.create!({ question: "Which exclusive cocktail is found at the Metropolitan Museum restaurant?", answer: "Metropolitan martini", deck_id: 7})
      Card.create!({ question: "Where was the first slice of pizza (as we know it today) made?", answer: "Lombardis", deck_id: 7})
      Card.create!({ question: "What trending food was discovered at 53rd St & 6th Ave?", answer: "The Halal Guys", deck_id: 7})
      Card.create!({ question: "What is the popular outdoor food market located in Brooklyn?", answer: "Smorgasburg", deck_id: 7})

User.create!({ username: "danielSuhks", password: "dandan" }) # A2

  Subject.create!({ title: "English Vocabulary", author_id: 2 }) # S4

    Deck.create!({title: "Words that start with A", description: "A", subject_id: 4}) #D8
      Card.create!({ question: "abase", answer: "cause to feel shame", deck_id: 8})
      Card.create!({ question: "aberration", answer: "a state or condition markedly different from the norm", deck_id: 8})
      Card.create!({ question: "abhor", answer: "find repugnant", deck_id: 8})
      Card.create!({ question: "abject", answer: "most unfortunate or miserable", deck_id: 8})
      Card.create!({ question: "abrasive", answer: "sharply disagreeable, unpleasant, or harsh", deck_id: 8})

    Deck.create!({title: "Words that start with B", description: "B", subject_id: 4}) #D9
      Card.create!({ question: "baffle", answer: "be a mystery or bewildering to", deck_id: 9})
      Card.create!({ question: "baleful", answer: "deadly or sinister", deck_id: 9})
      Card.create!({ question: "balk", answer: "refuse to comply", deck_id: 9})
      Card.create!({ question: "ballad", answer: "a narrative song with a recurrent refrain", deck_id: 9})
      Card.create!({ question: "ban", answer: "prohibit especially by law or social pressure", deck_id: 9})

  Subject.create!({ title: "Psychology", author_id: 2 }) # S5

    Deck.create!({title: "Anatomy of the Brain", description: "The physical", subject_id: 5}) #D10
      Card.create!({ question: "What are the three main regions of the brain?", answer: "The cerebrum, the cerebellum, and the brainstem", deck_id: 10})
      Card.create!({ question: "What joins the left and right hemispheres of the brain?", answer: "The corpus callosum", deck_id: 10})
      Card.create!({ question: "What part of the brain is responsible for personality?", answer: "The frontal lobe", deck_id: 10})
      Card.create!({ question: "What is the hypothalamus for?", answer: "Controlling behaviors such as hunger, thirst, sleep, and sexual response. It also regulates body temperature, blood pressure, emotions, and secretion of hormones.", deck_id: 10})
      Card.create!({ question: "What protects the brain?", answer: "The skull", deck_id: 10})

    Deck.create!({title: "Famous People", description: "The fathers of psychology", subject_id: 5}) #D11
      Card.create!({ question: "Who created the psychoanalysis?", answer: "Sigmund Freud", deck_id: 11})
      Card.create!({ question: "Who invented the widely used experimental container for rat studies?", answer: "B.F. Skinner", deck_id: 11})
      Card.create!({ question: "What kind of theory was Erik Erikson famous for?", answer: "The stage theory of psychosocial development", deck_id: 11})
      Card.create!({ question: "Who conducted the famous experiment involving bells and dogs?", answer: "Ivan Pavlov", deck_id: 11})

  Subject.create!({ title: "Bible", author_id: 2 }) # S6

    Deck.create!({title: "People", description: "The people in the Word", subject_id: 6}) #D12
      Card.create!({ question: "Who denied knowing Jesus three times?", answer: "Peter", deck_id: 12})
      Card.create!({ question: "Who subjected Jesus to crucifixion?", answer: "Pontius Pilate", deck_id: 12})
      Card.create!({ question: "Who walked on water briefly with Jesus?", answer: "Peter", deck_id: 12})
      Card.create!({ question: "Who were the parents of Jesus?", answer: "Mary and Joseph", deck_id: 12})
      Card.create!({ question: "Who was famous for persecuting Christians, but later became one?", answer: "Saul/Paul", deck_id: 12})

    Deck.create!({title: "Structure", description: "The structure", subject_id: 6}) #D13
      Card.create!({ question: "What are the two parts of the Bible?", answer: "The Old and New Testament", deck_id: 13})
      Card.create!({ question: "What are the four books of the Gospel?", answer: "Matthew, Mark, Luke, and John", deck_id: 13})
      Card.create!({ question: "What are the first and last books of the Bible?", answer: "Genesis and Revelations", deck_id: 13})
      Card.create!({ question: "What are chapters divided into?", answer: "Verses", deck_id: 13})
      Card.create!({ question: "How many books are there in the Bible?", answer: "66", deck_id: 13})

  Subject.create!({ title: "Chemistry", author_id: 2 }) # S7

    Deck.create!({title: "Periodic Table", description: "The elements", subject_id: 7}) #D14
      Card.create!({ question: "How many elements are there?", answer: "118", deck_id: 14})
      Card.create!({ question: "What is the abbrevation for helium?", answer: "H", deck_id: 14})
      Card.create!({ question: "What element is abbreviated with C?", answer: "Carbon", deck_id: 14})
      Card.create!({ question: "What element is abbreviated with Na?", answer: "Sodium", deck_id: 14})
      Card.create!({ question: "How is gold abbreviated?", answer: "Au", deck_id: 14})

    Deck.create!({title: "Bonds", description: "The interactions", subject_id: 7}) #D15
      Card.create!({ question: "What kind of bond involves the sharing of electrons?", answer: "Covalent bonds", deck_id: 15})
      Card.create!({ question: "What are the two strongest bonds?", answer: "Ionic and covalent", deck_id: 15})
      Card.create!({ question: "What happens to the charge of an atom after removing an electron?", answer: "It becomes more positive", deck_id: 15})



User.all.each do |user|
  Card.all.each do |card|
    Mastery.create!({
      user_id: user.id,
      card_id: card.id,
      level: 0
    })
  end
end
