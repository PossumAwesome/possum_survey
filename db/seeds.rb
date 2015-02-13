# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create(name:"Bob Smith", email:"bob@example.com", password:"password")
Author.create(name:"default", email:"moo@example.com", password:"moo")

Survey.create(author_id: 1, title: "What do you know about possums?", description: "A survey of general opossum knowledge")
Survey.create(author_id: 1, title: "Possums: horrible or awesome", description: "Don't hate what you can't understand")

Survey.create(author_id: 2, title: "A Survey of Inconceivable Dullness", description: "You're bored already...")
Survey.create(author_id: 2, title: "100,000 People Took this Survey. You Won't Believe What Happened Next!", description: "Regret over a life misspent, mostly")

Question.create(survey_id: 1, text: "Are possums real?", description: "Don't overthink this...", question_type: "true/false", order_number: 1)
Question.create(survey_id: 1, text: "What is a group of possums called?", description: "Like, is it a flock? ...a gaggle? ...a murder", question_type: "short answer", order_number: 2)
Question.create(survey_id: 1, text: "Please tell me a story involving an opossum", description: "Preferably true.", question_type: "long answer", order_number: 3)
Question.create(survey_id: 1, text: "If you ever find an opossum in your house, what should you do?", description: "Please select the closest answer.", question_type: "multiple choice", order_number: 4)

Option.create(question_id: 4, response: "Run screaming", order_number: 1)
Option.create(question_id: 4, response: "Eat it.", order_number: 2)
Option.create(question_id: 4, response: "Learn its ways, gain its trust, and in time, supplant it as ruler of the possum people.", order_number: 3)
Option.create(question_id: 4, response: "Other", order_number: 4)


Question.create(survey_id: 2, text: "Are possums awesome?", description: "Don't overthink this...", question_type: "multiple choice", order_number: 1)
Option.create(question_id: 5, response: "Nope", order_number: 1)
Option.create(question_id: 5, response: "Yep", order_number: 1)
Option.create(question_id: 5, response: "Wookie", order_number: 1)


Question.create(survey_id: 3, text: "Words", description: "Please type words in the word box", question_type: "long answer", order_number: 1)

Question.create(survey_id: 4, text: "True?", description: "False.", question_type: "true/false", order_number: 1)
Question.create(survey_id: 4, text: "False?", description: "True.", question_type: "true/false", order_number: 2)
Question.create(survey_id: 4, text: "True?", description: "True.", question_type: "true/false", order_number: 3)
Question.create(survey_id: 4, text: "False?", description: "False.", question_type: "true/false", order_number: 4)
