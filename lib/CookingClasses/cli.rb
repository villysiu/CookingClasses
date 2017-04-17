class CookingClasses::CLI
  def call
    list_lessons
    display_user_menu
  end

  def list_lessons
    puts "***************** Sur La Table **********************"
    puts "******* Customer Favorite Cooking Classes ***********"
    puts ""
  end

  def display_user_menu
    lesson_numbers = []
    size = 12
    1.upto(size) {|i| lesson_numbers << i.to_s}

    input = nil
    while input != "exit"
      puts "Please type [lesson number] you'd like more information, or [list] to see all the lessons, or [exti] to exit the program"
      input = gets.strip.downcase
      case input
      when "list"
        list_lessons
      when "exit"
        puts "good bye"
      #when /\d+/
      when *lesson_numbers
        #display_details(input.to_i)
        puts input
      else
        puts "This is not a valid input. Try again."
      end
    end
  end

end
