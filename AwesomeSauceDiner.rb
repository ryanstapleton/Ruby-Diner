@breakfast_nested = {
  "entree" => {
    1 => { "All-Star Combo" => 12.95 },
    2 => { "Pancake Stack" => 10.95 },
    3 => { "Waffle Stack" => 10.95 },
    4 => { "French Toast Stack" => 9.95 }
  },
  "sides" => {
    1 => { "Sausage link" => 0.75 },
    2 => { "Bacon slice" => 0.65 },
    3 => { "Pancake on the side" => 0.49 },
    4 => { "Waffle of the side" => 0.49 }
  }
}

@lunch_nested = {
  "entree" => {
    1 => { "Hamburger" => 6.95 },
    2 => { "Cheeseburger" => 7.95 },
    3 => { "Chili Dog" => 5.49 },
    4 => { "Chicken Wrap" => 7.95 },
    5 => { "Club Sandwich" => 6.95 }
  },
  "sides" => {
    1 => { "Basket of Fries" => 1.25 },
    2 => { "Tots" => 1.15 },
    3 => { "Veggies" => 1.29 },
    4 => { "Apple Slices" => 0.99 },
    5 => { "Side Salad" => 0.99 }
  }
}

@dinner_nested = {
  "entree" => {
    1 => { "Hamburger" => 9.95 },
    2 => { "Cheeseburger" => 10.95 },
    3 => { "Chili Dog" => 8.49 },
    4 => { "Chicken Wrap" => 9.95 },
    5 => { "Club Sandwich" => 8.95 }
  },
  "sides" => {
    1 => { "Basket of Fries" => 1.95 },
    2 => { "Tots" => 1.95 },
    3 => { "Veggies" => 1.75 },
    4 => { "Apple Slices" => 1.49 },
    5 => { "Side Salad" => 1.75 }
  }
}

@drinks_nested = {
  1 => { "Soft Drink" => 1.49 },
  2 => { "Coffee" => 1.75 },
  3 => { "Hot Chocolate" => 1.95 }
}

def awesome_sauce_diner
  title
  menu_selection
  print_menu
  meal_selection
  determine_price
  meal_prep
  print_receipt
end

def title
  puts "########################################################################################"
  puts "
  #    /$$$$$$                                                                       #
  #   /$$__  $$                                                                      #
  #  | $$  | $$ /$$  /$$  /$$  /$$$$$$   /$$$$$$$  /$$$$$$  /$$$$$$/$$$$   /$$$$$$   #
  #  | $$$$$$$$| $$ | $$ | $$ /$$__  $$ /$$_____/ /$$__  $$| $$_  $$_  $$ /$$__  $$  #
  #  | $$__  $$| $$ | $$ | $$| $$$$$$$$|  $$$$$$ | $$  | $$| $$ | $$ | $$| $$$$$$$$  #
  #  | $$  | $$| $$ | $$ | $$| $$_____/ |____  $$| $$  | $$| $$ | $$ | $$| $$_____/  #
  #  | $$  | $$|  $$$$$/$$$$/|  $$$$$$$ /$$$$$$$/|  $$$$$$/| $$ | $$ | $$|  $$$$$$$  #
  #  |__/  |__/ |_____/|___/  |_______/|_______/  |______/ |__/ |__/ |__/ |_______/  #
  #                                                                                  #
  #                                                                                  #
  #                                                                                  #
  #                /$$$$$$                                                           #
  #               /$$__  $$                                                          #
  #              | $$  |__/  /$$$$$$  /$$   /$$  /$$$$$$$  /$$$$$$                   #
  #              |  $$$$$$  |____  $$| $$  | $$ /$$_____/ /$$__  $$                  #
  #               |____  $$  /$$$$$$$| $$  | $$| $$      | $$$$$$$$                  #
  #               /$$  | $$ /$$__  $$| $$  | $$| $$      | $$_____/                  #
  #              |  $$$$$$/|  $$$$$$$|  $$$$$$/|  $$$$$$$|  $$$$$$$                  #
  #               |______/  |_______/ |______/  |_______/ |_______/                  #
  #                                                                                  #
  #                                                                                  #
  #                                                                                  #
  #                 /$$$$$$$  /$$                                                    #
  #                | $$__  $$|__/                                                    #
  #                | $$  | $$ /$$ /$$$$$$$   /$$$$$$   /$$$$$$                       #
  #                | $$  | $$| $$| $$__  $$ /$$__  $$ /$$__  $$                      #
  #                | $$  | $$| $$| $$  | $$| $$$$$$$$| $$  |__/                      #
  #                | $$  | $$| $$| $$  | $$| $$_____/| $$                            #
  #                | $$$$$$$/| $$| $$  | $$|  $$$$$$$| $$                            #
  #                |_______/ |__/|__/  |__/ |_______/|__/                            #
  #                                                                                  #
  "
  puts "########################################################################################"
  puts "\n\n"
  puts "Welcome to the Awesome Sauce Diner!"
  puts "\n"

  sleep(2)
end

def menu_selection
  puts "Waitress: 'Hi there!  ^_^\nWhat will you be having with us today?' \n\n"

  # Choice validation
  loop do
    puts "1. Breakfast\n2. Lunch\n3. Dinner\n\n"
    @menu_selection = gets.chomp.downcase

    case @menu_selection
      when "b","breakfast","1","1. breakfast","1.", "1. "
        @menu_selection = "b";
        puts "Waitress: 'Alright, breakfast!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      when "l","lunch","2","2. lunch","2.","2. "
        @menu_selection = "l";
        puts "Waitress: 'Lunch? Okay!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      when "d","dinner","3","3. dinner","3.","3. "
        @menu_selection = "d";
        puts "Waitress: 'Dinner it is!  ^_^\nFollow me, I'll have you seated!'\n\n"
        break
      else
        puts "\n'Umm, we don't serve that here. Try again ...'\n\n"
    end
  end

  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
end

def print_menu
  puts "\n\nWaitress: 'Sorry for the wait. Here's your menu!'\n\n"
  puts "---------------------Menu-----------------------\n\n"
  
  if @menu_selection == "b" # If breakfast ...

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

  elsif @menu_selection == "l"

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

  else

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

def meal_selection
  puts "\nWaitress: 'Please pick an entree, two sides, and a drink!'  (Just tell me the numbers) ^_^\n"
  @order = Hash.new

  # Choice validation and building order hash
  print "Entree: "
  loop do
    @entree_choice = gets.chomp.to_i
    if entree_validation(@entree_choice) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["entree"][@entree_choice])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["entree"][@entree_choice])
      else
        @order.merge!(@dinner_nested["entree"][@entree_choice])
      end
      break
    else
      print "Please pick a valid entree number: "
    end
  end

  print "First side: "
  loop do
    @side_choice1 = gets.chomp.to_i
    if side1_validation(@side_choice1) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["sides"][@side_choice1])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["sides"][@side_choice1])
      else
        @order.merge!(@dinner_nested["sides"][@side_choice1])
      end
      break
    else
      print "Please pick a valid side number: "
    end
  end
  
  print "Second side: "
  loop do
    @side_choice2 = gets.chomp.to_i
    if side2_validation(@side_choice2) == true
      if @menu_selection == "b"
        @order.merge!(@breakfast_nested["sides"][@side_choice2])
      elsif @menu_selection == "l"
        @order.merge!(@lunch_nested["sides"][@side_choice2])
      else
        @order.merge!(@dinner_nested["sides"][@side_choice2])
      end
      break
    elsif @side_choice2 == @side_choice1
      print "Please pick a different side than the first: "
    else
      print "Please pick a valid side number: "
    end
  end

  print "Drink: "
  loop do
    @drink_choice = gets.chomp.to_i
    if drink_validation(@drink_choice) == true
      @order.merge!(@drinks_nested[@drink_choice])
      break
    else
      print "Please pick a valid drink number: "
    end
  end
  puts "\n"

  print "Order: \n"
  puts @order
  puts "\n"

  waitress_comment
end

def determine_price
  # Determining total price
  loop do
    @total_price = 0;
    if @menu_selection == "b"
      total = @breakfast_nested["entree"][@entree_choice].values + @breakfast_nested["sides"][@side_choice1].values + @breakfast_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    elsif @menu_selection == "l"
      total = @lunch_nested["entree"][@entree_choice].values + @lunch_nested["sides"][@side_choice1].values + @lunch_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    else
      total = @dinner_nested["entree"][@entree_choice].values + @dinner_nested["sides"][@side_choice1].values + @dinner_nested["sides"][@side_choice2].values + @drinks_nested[@drink_choice].values

      total.each do |price|
        @total_price = @total_price + price
      end
    end
    
    # Run the price_validation method
    if price_validation == "y"
      break
    else
      meal_selection
    end
  end
end

def meal_prep
  puts "\n'I'll be back with that order shortly!'  ^_^\n\n"

  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  puts "\n\n"
  puts "Waitress: 'Here you are!  ^_^\nPlease enjoy your meal!'"
  puts "\n"
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  sleep(1)
  print "."
  puts "\n\n"
  puts "< BELCH! >"
  sleep(1)
  puts "\nWaitress: 'Oh my! *Blush*"
  sleep(2)
end

def print_receipt
  total_formated = "#{'%.2f' % @total_price}"
  puts "Here is your bill. It's been a pleasure serving you, have a nice day!'  ^_^\n\n"
  sleep(2)
  puts "---------------------Bill----------------------\n\n"
  @order.each do |key, value|
    puts "  #{key.ljust(35)} $#{value}"
  end
  puts "  #{"------------------".ljust(35)}--------"
  puts "  #{"Total".ljust(35)} $#{total_formated}"
  puts "\n-----------------------------------------------"
end

def price_validation
  choice = ""
  loop do
    print "Your total is going to be $#{'%.2f' % @total_price} -- is that okay?' < y/n >: "
    choice = gets.chomp.downcase

    if choice == "y" || choice == "yes"
      choice = "y"
      break
    elsif choice == "n" || choice == "no"
      puts "\n'Alright, that's okay, let's choose again ...'"
      choice = "n"
      break
    else
      puts "\n'I didn't understand that ...'"
    end
  end
  choice
end

def entree_validation selection
  validated = false
  if @menu_selection == "b"
    if @breakfast_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if @lunch_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if @dinner_nested["entree"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def side1_validation selection
  validated = false
  if @menu_selection == "b"
    if @breakfast_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if @lunch_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if @dinner_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def side2_validation selection
  validated = false
  if @menu_selection == "b"
    if selection == @side_choice1
      validated = false
    elsif @breakfast_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "l"
    if selection == @side_choice1
      validated = false
    elsif @lunch_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  elsif @menu_selection == "d"
    if selection == @side_choice1
      validated = false
    elsif @dinner_nested["sides"].has_key?(selection) == true
      validated = true
    else
      validated = false
    end
  end
  validated
end

def drink_validation selection
  validated = false
  if @drinks_nested.has_key?(selection) == true
    validated = true
  else
    validated = false
  end
  validated
end

def waitress_comment
  comment = [
    "Waitress: 'Good choice!",
    "Waitress: 'You have fine taste!",
    "Waitress: 'That is an excellent choice!",
    "Waitress: 'That's one of my favorites.",
    "Waitress: 'Okay, sounds good!",
    "Waitress: 'I'll get right on that!",
    "Waitress: 'That's a really good choice.'",
    "Waitress: 'I think that's a great choice!",
    "Waitress: 'Well, whatever you want.",
    "Waitress: 'I recommend something else, honestly.",
    "Waitress: 'Whatever floats your boat ... *smile*",
    "Waitress: 'Um ... okay  ^____^",
    "Waitress: 'Alrighty then.",
    "Waitress: 'That option comes highly recommended by the chef."
  ]
  random = rand(comment.size)
  puts comment[random]
end

#Run the program
awesome_sauce_diner