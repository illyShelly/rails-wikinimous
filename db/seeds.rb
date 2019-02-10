# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# using CREATE or variable => NEW, then SAVE method
Article.destroy_all

puts "Creating 20 fake articles"
20.times do
  article = Article.new(
    title: Faker::Company.catch_phrase,
    content: Faker::Lorem.sentences(15)
    )
  article.save!
end
puts "Finished seed"


# as sentences: -> get rid off arrays brackets

# Advanced hybrid superstructure
# ["Quia at sed.", "Aperiam sit suscipit.", "Quae modi autem."]
# Public-key value-added contingency
# Omnis est blanditiis.Quis aut voluptate.Qui voluptatem cum.

# Article.destroy_all
# def fake_content
#   paragraphs = []
#   paragraphs << Faker::Lorem.paragraph
#   paragraphs << "![](http://lorempixel.com/800/300/city/)"
#   paragraphs << "## #{Faker::Company.catch_phrase}"
#   paragraphs << Faker::Lorem.paragraphs(2)
#   paragraphs << "**#{Faker::Lorem.word}** #{Faker::Lorem.sentences.join}"
#   paragraphs << "## #{Faker::Company.catch_phrase}"
#   paragraphs << "#{Faker::Lorem.sentences.join} [#{Faker::Commerce.product_name}](#{Faker::Internet.url}) #{Faker::Lorem.sentences.join}"
#   paragraphs << Faker::Lorem.paragraphs(3)
#   paragraphs.flatten.join("\n\n")
# end

# 20.times do
#   Article.create(
#     title: Faker::Company.catch_phrase,
#     content: fake_content
#   )
# end
