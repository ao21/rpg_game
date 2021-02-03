class Battle
  def self.battle(brave, monster)
    puts "#{monster.name} があらわれた!"
    while brave.hp > 0 && monster.hp > 0 do
      brave.attack(monster)
      monster.attack(brave) if monster.hp > 0
      puts <<~TEXT
      *=*=*=*=*=*=*=*=*=*=*=*
     【#{brave.name}】HP: #{brave.hp}
     【#{monster.name}】HP: #{monster.hp}
      *=*=*=*=*=*=*=*=*=*=*=*
      TEXT
    end 
    if monster.hp == 0
      puts "#{monster.name} をやっつけた!"
    elsif brave.hp == 0
      puts "#{brave.name} はしんでしまった!"
    end
  end
end