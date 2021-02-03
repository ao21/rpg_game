require "./character.rb"
require "./brave.rb"
require "./monster.rb"
require "./battle.rb"

brave = Brave.new(name: "ゆうしゃ", hp: 200, offense: 160, defense: 50)
monster1 = Monster.new(name: "アークデーモン", hp: 100, offense: 50, defense: 100)
monster2 = Monster.new(name: "シドー", hp: 500, offense: 160, defense: 100)

Battle.battle(brave, monster1)
puts "\n"
Battle.battle(brave, monster2)