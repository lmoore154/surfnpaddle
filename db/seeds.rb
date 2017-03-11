# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@facts = ["There are 13 different species of otters found in the world. There is evidence that they have been around for more than 5 million years.", "Male otters are called boars, females are sows, and the offspring are pups.", "Otters are very closely related to badgers, ferrets and mink. They are also distant cousins of the skunk.", "The average life span for an otter is 10 years. That can double with one in captivity.", "An otter can remain under water for up to 4 minutes. They can also dive up to 300 feet in search of food.", "Sea otters eat a wide range of marine animals, including mussels, clams, urchins, abalone, crabs, snails and about 40 other marine species, equaling approximately 25 percent of their weight in food each day.", "Otters have the thickest fur of any mammal in the animal kingdom. They can have up to one million hairs per square inch."]

5.times do |i|

  user = User.create!(
    username: Faker::Cat.name,
    bio: Faker::ChuckNorris.fact,
    avatar: "otter#{i+1}"
    )

  3.times do
    user.posts.create!(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraphs(4).join("\n"),
      fact: @facts.sample,
      created_at: rand(1..10).days.ago
    )
  end

end
