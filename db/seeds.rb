require 'faker'

puts "deleting all articles"
Article.destroy_all

puts "creating 10 articles"
10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph_by_chars(number: 400),
  )
  article.save!
end

puts "10 articles created"
