# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# 100.times do |index|
#   Customer.create(family_name: "鈴木", given_name: "太郎", email: "customer_#{index}@sparta.com")
# end
Faker::Config.locale = :ja
3.times do |index|
  Company.create(
    name: Faker::Company.name,
    url: "http://www.test#{index}.co.jp/",
    address: Faker::Address.city + "12-23#{index}"
  )
end

Post.create(position_name: "取締役")
Post.create(position_name: "営業")
Post.create(position_name: "エンジニア")
Post.create(position_name: "その他")


100.times do |index|
  Customer.create(
    family_name: Faker::Name.last_name,
    given_name: Faker::Name.first_name,
    email: Faker::Internet.email,
    company_id: rand(30) + 1,
    post_id: rand(1..4)
  )
end
