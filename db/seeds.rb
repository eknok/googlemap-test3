# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post = ['東京都', '東京都', '千葉県', '千葉県', '千葉県']
city = ['港区', '新宿区', '野田市', '流山市', '']

5.times do |i|
  Map.create!(
    address: post[i] + city[i]
  )
end
