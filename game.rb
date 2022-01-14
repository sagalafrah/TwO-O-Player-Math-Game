class Game
    # Create two Player objects, starting game with Player 1
    def initialize
      @player_1 = Player.new(1)
      @player_2 = Player.new(2)
      @current_player = @player_1
    end
  

    def begin

      puts "WELCOME TO THE HUNGER GAMES"

      puts "EACH OF YOU HAVE 3 LIVES. IF YOU LOSE THEM ALL, YOU LOSE. PLAY WISELY."
      puts "-----------------------------------------------"
      puts "If you're ready to start, type 'y'"
      ask_to_start
    end
  

    def ask_to_start
      (1..2).each do |id|
        puts "Player #{id}: Ready to start?"
        print "> "
        answer = gets.chomp
        while (answer != "y")
          puts "Please type 'y' to start. Ready to start?"
          answer = gets.chomp
        end
      end
      puts "GAME WILL BEGIN SHORTLY...GOOD LUCK!"
      next_turn
    end
  
