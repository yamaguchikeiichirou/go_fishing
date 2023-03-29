# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'aa@aa.com',
   password: 'aaaaaa'
)

Tag.create([
  { name: 'アジ' },
  { name: 'サバ'},
  { name: 'イワシ'},
  { name: 'カサゴ' },
  { name: 'メバル'},
  { name: 'アコウ（キジハタ）'},
  { name: 'ヒラメ'},
  { name: 'カレイ'},
  { name: 'キス'},
  { name: 'ハゼ'},
  { name: 'サヨリ'},
  { name: 'カマス'},
  { name: 'スズキ'},
  { name: 'タチウオ'},
  { name: '青物'},
  { name: 'イカ'},
  { name: 'タコ'},
  { name: 'その他'}
])