# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# monkey = Monkey.create(name: "Black Howler", location: "southern Brazil, Paraguay, eastern Bolivia, and northern Argentina", population: "100,000", description: "The black howler (Alouatta caraya) or black-and-gold howler,[3] is among the largest New World monkeys and a member of the Alouatta genus.", facts: "Howling is used as a behavioural strategy for displaying territory and regulating inter-group distance.")
image = Image.create(monkey_id: 5, image_url: "https://s36593.pcdn.co/wp-content/uploads/2020/02/Howler-Monkey-Male-JEP_5592.jpg")

image = Image.create(monkey_id: 5, image_url: "https://scitechdaily.com/images/Black-Howler-Monkey.jpg")