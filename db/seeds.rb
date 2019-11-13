# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Wordlist.create('category_id' => rand(5), 'language' => 'hello', 'translate_language' => 'xin chao', 'lesson_id' => rand(3))
  Wordlist.create('category_id' => rand(5), 'language' => 'bye', 'translate_language' => 'tam biet', 'lesson_id' => rand(3))
  Wordlist.create('category_id' => rand(5), 'language' => 'say hello', 'translate_language' => 'say hello', 'lesson_id' => rand(3))
  Wordlist.create('category_id' => rand(5), 'language' => 'black', 'translate_language' => 'den', 'lesson_id' => rand(3))
  Wordlist.create('category_id' => rand(5), 'language' => 'red', 'translate_language' => 'do', 'lesson_id' => rand(3))
end