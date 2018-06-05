# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ActiveSupport::JSONを使ってhoge.jsonをデコードしてrubyオブジェクトに変換。変数jsonに展開
json = ActiveSupport::JSON.decode(File.read('sake_test.json'))

# 変数jsonに入った配列状態のjsonデータを一つ一つ取り出して、モデル.createを使ってdbに投入
json.each do |data|
  data['city_r'].each do |city_r|
    city_r['details'].each do |detail|
      Post.create(
        name: data['name_n'],
        company: city_r['company'],
        city: city_r['city'],
        sake_name: detail['name'],
        kana_name: detail['kana_name']
        )
        # Map.create!(
        #   address: data['name_n']
        # )
    end
  end
end
