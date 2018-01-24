def print_menu
  puts "\n\nWaitress: 'Sorry for the wait. Here's your menu!'\n\n"
  puts "---------------------Menu-----------------------\n\n"
  
  if @menu_selection == "b" # If breakfast, format the breakfast menu

    puts "Entrees:\n\n"
    @breakfast_nested["entree"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end
  
    puts "\nSides:\n\n"
    @breakfast_nested["sides"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

    puts "\nDrinks:\n\n"
    @drinks_nested.each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

  elsif @menu_selection == "l" # If lunch ...

    puts "Entrees:\n\n"
    @lunch_nested["entree"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

    puts "\nSides:\n\n"
    @lunch_nested["sides"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

    puts "\nDrinks:\n\n"
    @drinks_nested.each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

  else # If dinner ...

    puts "Entrees:\n\n"
    @dinner_nested["entree"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end

    puts "\nSides:\n\n"
    @dinner_nested["sides"].each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end
    
    puts "\nDrinks:\n\n"
    @drinks_nested.each do |key, value|
      print "  #{key}. "
      value.each do |key2, value2|
        puts "#{(key2).ljust(35)} $#{value2}"
      end
    end
  end
  puts "\n------------------------------------------------"
end