class Player
  def play_game
    rand(1..100) > 50 ? 'Winner!' : 'Looser!'
  end
end

bob = Player.new
alex = Player.new

p bob.play_game
p alex.play_game

puts
p '-------------------'
def alex.play_game # * rewrite method for alex
  'Winner!'
end

p bob.play_game
p alex.play_game

p alex.class.ancestors
p bob.singleton_methods # * => []
p alex.singleton_methods # * => [:play_game]

p alex.singleton_class # * => #<Class:#<Player:0x0000000002746218>>
p bob.singleton_class # * => #<Class:#<Player:0x0000000002736218>>


puts
p '--------Right version of singleton---------'

class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end

logger = Logger.create
logger2 = Logger.create

p logger.object_id
p logger2.object_id
