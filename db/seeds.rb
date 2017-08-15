# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# create_table :questions do |t|
#   t.string :title
#   t.string :content

# create_table :answers do |t|
#   t.string :content

# create_table :comments do |t|
#   t.string :content

# create_table :votes do |t|
#   t.integer :value

Question.destroy_all
Answer.destroy_all
Comment.destroy_all
Vote.destroy_all
User.destroy_all

user = User.create(email: 'josepaez_2@hotmail.com', password: "hola1234")
pregunta1 = user.questions.create(title: "Qué hago???", content: "Se totea el computador")


1.times do |i|
  # user.questions.create(title: "Blah?", content: "Blih?")
  q = user.questions.create(title: "Bloh?", content: "Bluh?")
  a = q.answers.create(content: "Oswaldo", user_id: user.id)
  c =user.comments.create(content: "Rios", commentable_id: a.id, commentable_type: a.class)

  user.votes.create(value: 1, votable_id: a.id, votable_type: a.class)
	user.votes.create(value: 1, votable_id: q.id, votable_type: q.class)


end

user = User.create(email: 'jakintero@hotmail.com', password: "hola1234")

1.times do |i|
  # user.questions.create(title: "Blah?", content: "Bleh?")
  q = user.questions.create(title: "Rápido?", content: "Ozu")
  a = q.answers.create(content: "Pepito", user_id: user.id)
  c =user.comments.create(content: "Aaaa", commentable_id: a.id, commentable_type: a.class)

  user.votes.create(value: 1, votable_id: a.id, votable_type: a.class)
	user.votes.create(value: 1, votable_id: q.id, votable_type: q.class)

end
