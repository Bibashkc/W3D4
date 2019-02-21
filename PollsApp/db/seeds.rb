# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = User.create!(username: 'Dan')
user2 = User.create!(username: 'Steph')
user3 = User.create!(username: 'Bibash')
user4 = User.create!(username: 'Dustin')
user5 = User.create!(username: 'Mark')
user6 = User.create!(username: 'Myron')
user7 = User.create!(username: 'Andrew')

Poll.destroy_all
poll2 = Poll.create!(author_id: user2.id, title: "Sports")
poll3 = Poll.create!(author_id: user3.id, title: "Movies")

Question.destroy_all
p2q1 = Question.create!(poll_id: poll2.id, text: "Do you like soccer?")
p2q2 = Question.create!(poll_id: poll2.id, text: "Do you like basketball?")
p2q3 = Question.create!(poll_id: poll2.id, text: "Do you like baseball?")
p3q1 = Question.create!(poll_id: poll3.id, text: "Do you like scary movies?")
p3q2 = Question.create!(poll_id: poll3.id, text: "Do you like romantic movies?")
p3q3 = Question.create!(poll_id: poll3.id, text: "Do you like comedies?")

AnswerChoice.destroy_all
a1 = AnswerChoice.create!(question_id: p2q1.id, text: "NO! I HATE SOCCER")
a2 = AnswerChoice.create!(question_id: p2q1.id, text: "YES! I LOVE SOCCER")
a3 = AnswerChoice.create!(question_id: p2q2.id, text: "NO! I HATE BASKETBALL")
a4 = AnswerChoice.create!(question_id: p2q2.id, text: "YES! I LOVE BASKETBALL")
a5 = AnswerChoice.create!(question_id: p2q3.id, text: "NO! I HATE BASEBALL")
a6 = AnswerChoice.create!(question_id: p2q3.id, text: "YES! I LOVE BASEBALL")
b1 = AnswerChoice.create!(question_id: p3q1.id, text: "NO! I HATE SCARY MOVIES")
b2 = AnswerChoice.create!(question_id: p3q1.id, text: "YES! I LOVE SCARY MOVIES")
b3 = AnswerChoice.create!(question_id: p3q2.id, text: "NO! I HATE ROMANCE")
b4 = AnswerChoice.create!(question_id: p3q2.id, text: "YES! I LOVE ROMANCE")
b5 = AnswerChoice.create!(question_id: p3q3.id, text: "NO! I HATE COMEDIES")
b6 = AnswerChoice.create!(question_id: p3q3.id, text: "YES! I LOVE COMEDIES")

Response.destroy_all
r1 = Response.create!(user_id: user4.id, question_id: p2q1.id, answer_choice_id: a2.id)
r2 = Response.create!(user_id: user5.id, question_id: p2q1.id, answer_choice_id: a1.id)
r3 = Response.create!(user_id: user4.id, question_id: p2q2.id, answer_choice_id: a3.id)
r4 = Response.create!(user_id: user5.id, question_id: p2q2.id, answer_choice_id: a4.id)
r5 = Response.create!(user_id: user6.id, question_id: p2q3.id, answer_choice_id: a5.id)
r6 = Response.create!(user_id: user7.id, question_id: p2q3.id, answer_choice_id: a6.id)
r7 = Response.create!(user_id: user6.id, question_id: p3q1.id, answer_choice_id: b1.id)
r8 = Response.create!(user_id: user7.id, question_id: p3q1.id, answer_choice_id: b2.id)