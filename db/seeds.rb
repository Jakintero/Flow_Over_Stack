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

pregunta1 = Question.create(title: "Qué hago???", content: "Se totea el computador")

user = User.find_by(email: 'josepaez_2@hotmail.com')

1.times do |i|
  user.questions.create(title: "Qué pasa en la vida??", content: "El universo es extraño")
  user.expenses.create(category: perro, date: Date.current - 8, concept: "Guardería de Tulia", amount: 100000)
end


