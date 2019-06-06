# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


topics = [
  '最近よく使ってるWebサービスは？',
  'ペパボのサービスで一番好きなのは？',
  '最近買ってよかったもの',
  '好きなSVの章は？',
  '好きなポケモンは？',
  '最近ゲームやってる？',
  'お酒何が好き？',
  '何ラーメンが好き？',
  '死ぬ前に何をたらふく食べたい？',
  '5000兆円欲しい？',
  '10億あったら何する？',
  'どんな音楽が好き？',
  '好きな漫画',
  '血液型は？',
  '出身地は？'
]

topics.each do |t|
  Topic.create(name: t)
end
